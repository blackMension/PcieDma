module DdpAssmble(
    /*AUTOARG*/
   // Outputs
   dataPop, ddpPktDataIn, ddpPktPush, pkgFifoFull, sendDoneCtrl,
   sendDoneTID, sendDoneValid,
   // Inputs
   clock, reset, dataOut, ready, emptyArray, ddpPktFull,
   gen2PkgRdmapHeader, gen2PkgDdpHeader, gen2PkgRdmapCtrl,
   gen2PkgDdpCtrl, gen2PkgValid
   );
input clock;
input reset;
// Send Buffer
input   [255:0]  dataOut;
output           dataPop;
input            ready;
input   [3:0]    emptyArray;

// To AsyncFifo
output  [264:0]  ddpPktDataIn; // sop : 1 , eop :1 , byteenable : 7, pkt : 256
output           ddpPktPush;
input            ddpPktFull;

// To Pkt Encapsulation
input [47:0]   gen2PkgRdmapHeader;
input [15:0]   gen2PkgDdpHeader;
input [7:0]    gen2PkgRdmapCtrl;
input [7:0]    gen2PkgDdpCtrl;
input          gen2PkgValid;
output         pkgFifoFull;
// Send Done 
output [7:0]   sendDoneCtrl;
output [7:0]   sendDoneTID;
output         sendDoneValid;

parameter       SEND_OPCODE = 4'b0000;
parameter       RCV_OPCODE  = 4'b0001;
parameter       REQ_OPCODE  = 4'b0011;
parameter       ACK_OPCODE  = 4'b0111;
parameter       WR_DONE_OPCODE  = 4'b0110;
parameter       RD_DONE_OPCODE  = 4'b0100;

// Info Fifo
wire          pkgFifoPop;
wire [79:0]   pkgFifoData;
wire          pkgFifoEmpty;
wire          pkgFifoPush;
wire [79:0]   pkgFifoDataIn;
wire [47:0]   rdmapHeader;
wire [15:0]   ddpHeader;
wire [7:0]    rdmapCtrl;
wire [7:0]    ddpCtrl;

assign pkgFifoPush   = gen2PkgValid;
assign pkgFifoDataIn = {gen2PkgDdpCtrl,gen2PkgRdmapCtrl,gen2PkgDdpHeader,gen2PkgRdmapHeader};
assign {ddpCtrl,rdmapCtrl,ddpHeader,rdmapHeader} = pkgFifoData;
GenRegFifo16D80W uPkgFifo(
    // Outputs;
    .dataOut                            (pkgFifoData),
    .full                               (pkgFifoFull),
    .empty                              (pkgFifoEmpty)  ,
    .almostFullFlag                     (),
    .almostEmptyFlag                    (),
    .fifoDepth                          (),
    .overrun                            (),
    .underrun                           (),
    // Inputs
    .clockCore                          (clock),
    .resetCore                          (reset),
    .push                               (pkgFifoPush) ,
    .dataIn                             (pkgFifoDataIn)   ,
    .pop                                (pkgFifoPop),
    .almostFullThreshold                (5'd4),
    .almostEmptyThreshold               (5'd0) 
);
wire  isReq =    (rdmapCtrl[3:0] == REQ_OPCODE) & ~pkgFifoEmpty;
wire  isAck =    (rdmapCtrl[3:0] == ACK_OPCODE) & ~pkgFifoEmpty;
wire  isSend =   (rdmapCtrl[3:0] == SEND_OPCODE)& ~pkgFifoEmpty;

parameter   IDLE      = 4'd0,
            TRAN_PKT  = 4'b0001,
            TRAN_SEND = 4'b0011,
            TRAN_REST = 4'b0010,
            WAIT      = 4'b0110,
            SEND_DONE = 4'b0111,
            FETCH_DATA= 4'b1111; 
reg [3:0]  CS, NS;
wire       curEmpty;
wire       sendAllData;
wire       tranLast;
wire [2:0] PID;
wire [7:0] dataLen;
wire [7:0] totalLen;
wire [7:0] sendLen;
reg  [7:0] sendLenReg;
wire [7:0] lastLenNxt;
reg  [7:0] lastLenCur;

wire        sendSlice1Int;
reg         sendSlice1;
wire [39:0] lastDataSliceInt; 
reg  [39:0] lastDataSlice; 
reg  [255:0] currentDataSlice;

wire          sendPush;
wire [264:0]  sendPktSlice;
wire          totalLenSmall32;
wire          lastLenSmall32;
wire [7:0]    curLen;
wire          sendSop;
wire          sendEop;

always @(posedge clock or negedge reset) begin
    if(!reset) begin
        CS <= 4'd0;
    end
    else begin
        CS <= NS;
    end
end
always@(*) begin
    case(CS)
        IDLE : 
            if(ddpPktFull) NS <= IDLE;
            else if(isReq | isAck) NS <= TRAN_PKT;
            else if(isSend && ready) NS <= FETCH_DATA;
            else NS <= IDLE;
        TRAN_PKT :
            NS <= IDLE;
        FETCH_DATA :
            if(ddpPktFull || ~ready) NS <= WAIT;
            else NS <= TRAN_SEND;
        TRAN_SEND :
            if(sendAllData) NS <= SEND_DONE;
            else if(tranLast) NS <= TRAN_REST;
            else NS <= FETCH_DATA;
        TRAN_REST :
            NS <= SEND_DONE;
        WAIT : 
            if(~ddpPktFull & ready) NS <= TRAN_SEND;
            else NS <= WAIT;
        SEND_DONE :
            NS <= IDLE;
        default: NS <= IDLE;
    endcase
end
// TRAN_PKT
// output  [264:0]  ddpPktOut; // sop : 1 , eop :1 , byteenable : 7, pkt : 256
// output           ddpPktPush;
// input            ddpPktFull;

wire         reqAckPush;
wire [264:0] reqAckPkt;
assign reqAckPush = (CS == TRAN_PKT) & ~ddpPktFull;
assign reqAckPkt  = isAck ? {1'b1,1'b1,7'd8,ddpCtrl,rdmapCtrl,ddpHeader,rdmapHeader[47:32],32'd0,176'd0} :
                            {1'b1,1'b1,7'd10,ddpCtrl,rdmapCtrl,ddpHeader,rdmapHeader,176'd0};
// FETCH_DATA
assign    sendSlice1Int = (CS == IDLE) | (~(CS == TRAN_SEND))&sendSlice1;
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        sendSlice1 <= 1'b1;
    end
    else begin
        sendSlice1 <= sendSlice1Int;
    end
end
assign    lastDataSliceInt = sendSlice1 ? {ddpCtrl,rdmapCtrl,ddpHeader,rdmapHeader[47:40]} : lastDataSlice;
always@(posedge clock or negedge reset ) begin
    if(!reset) begin
        {currentDataSlice,lastDataSlice} <= 295'd0;
    end
    else begin
        if(CS == FETCH_DATA) begin
            {currentDataSlice,lastDataSlice} <= {lastDataSliceInt,dataOut};
        end
    end
end
assign dataPop = CS == FETCH_DATA;
// TRAN_SEND

assign PID      = ddpHeader[15:13];
assign curEmpty = emptyArray[PID];
assign dataLen  = ddpHeader[7:0];
assign totalLen = dataLen + 8'd5;

assign totalLenSmall32 = (totalLen <= 8'd32);
assign lastLenSmall32  = lastLenCur <= 8'd32;
assign lastLenNxt = (CS == FETCH_DATA & sendSlice1)? totalLen : 
                    (~(CS==SEND_DONE) && (CS == TRAN_SEND && (totalLenSmall32 | lastLenSmall32))) ? 8'd0 : 
                    (CS == TRAN_SEND) ? lastLenCur - 8'd32 : lastLenCur;
always @(posedge clock or negedge reset) begin
    if (!reset) begin
        lastLenCur <= 8'd0;
    end else begin
        lastLenCur <= lastLenNxt;
    end
end

assign curLen = totalLenSmall32 ? totalLen :
                lastLenSmall32 ?  lastLenCur : 8'd32;
assign sendSop = (lastLenCur == totalLen);
assign sendEop = ~(|lastLenNxt);
assign sendPktSlice = {sendSop,sendEop,curLen,currentDataSlice};
assign sendPush = (CS == TRAN_SEND) & ~ddpPktFull;
assign sendAllData = sendEop;
assign tranLast = curEmpty & ~(|lastLenNxt[7:5]) & (|lastLenNxt[4:0]);
// TRAN_REST
wire         lastPush;
wire [264:0] lastPktSlice;
assign  lastPush = CS == TRAN_REST;
assign  lastPktSlice = {1'b0,1'b1,lastLenCur,lastDataSlice};
// SEND_DONE
wire   sendDonePkgPop;
assign sendDoneCtrl    = {WR_DONE_OPCODE,2'd0,2'd0};
assign sendDoneTID     =  rdmapHeader[47:40];
assign sendDoneValid   = (CS == SEND_DONE);
assign sendDonePkgPop  = sendDoneValid;

// Assemble
assign pkgFifoPop = (sendDonePkgPop | reqAckPush) & ~pkgFifoEmpty;
assign ddpPktDataIn  = reqAckPush ? reqAckPkt :
                       sendPush   ? sendPktSlice : lastPktSlice;
assign ddpPktPush = reqAckPush | sendPush | lastPush;
endmodule // DdpAssmble
