`include "MacroDefine.h"
module DdpHdrGen(
    /*AUTOARG*/
   // Outputs
   gen2PkgRdmapHeader, gen2PkgDdpHeader, gen2PkgRdmapCtrl,
   gen2PkgDdpCtrl, gen2PkgValid, dataNumRdData, queueNumRdAddr,
   queueNumRd,
   // Inputs
   clock, reset, rdmap2DdpHeader, rdmap2DdpCtrl, rdmap2DdpHdrValid,
   pkgFifoFull, dataNumProcRdAddr, dataNumProcRd, queueNumRdData
   );
input clock;
input reset;

// From HeaderGen
input  [55:0]   rdmap2DdpHeader;
input  [7:0]    rdmap2DdpCtrl;
input           rdmap2DdpHdrValid;
// To Pkt Encapsulation
output [55:0]   gen2PkgRdmapHeader;
output [15:0]   gen2PkgDdpHeader;
output [7:0]    gen2PkgRdmapCtrl;
output [7:0]    gen2PkgDdpCtrl;
output          gen2PkgValid;
input           pkgFifoFull;
//  DataNumberTable to Rdmap
input [7:0]     dataNumProcRdAddr;
input           dataNumProcRd;
output  [2:0]   dataNumRdData;
//  QueueNumberTable to Rdmap
output [7:0]    queueNumRdAddr;
output          queueNumRd;
input  [15:0]   queueNumRdData;

parameter       SEND_OPCODE = 4'b0000;
parameter       RCV_OPCODE  = 4'b0001;
parameter       REQ_OPCODE  = 4'b0011;
parameter       ACK_OPCODE  = 4'b0111;
parameter       WR_DONE_OPCODE  = 4'b0110;
parameter       RD_DONE_OPCODE  = 4'b0100;

// Info Fifo
wire          infoFifoPush;
wire [63:0]   infoFifoDataIn;
wire          infoFifoFull;
wire          infoFifoPop;
wire [63:0]   infoFifoData;
wire          infoFifoEmpty;

wire [55:0]   rdmapHeader;
wire [7:0]    rdmapCtrl;

assign infoFifoPush = rdmap2DdpHdrValid & ~infoFifoFull;
assign infoFifoDataIn = {rdmap2DdpCtrl,rdmap2DdpHeader};
assign {rdmapCtrl,rdmapHeader} =  infoFifoData;
GenRegFifo8D64W uRdmapInfoFifo(
    // Outputs;
    .dataOut                            (infoFifoData ),
    .full                               (infoFifoFull ),
    .empty                              (infoFifoEmpty)  ,
    .almostFullFlag                     (),
    .almostEmptyFlag                    (),
    .fifoDepth                          (),
    .overrun                            (),
    .underrun                           (),
    // Inputs
    .clockCore                          (clock),
    .resetCore                          (reset),
    .push                               (infoFifoPush ) ,
    .dataIn                             (infoFifoDataIn)   ,
    .pop                                (infoFifoPop),
    .almostFullThreshold                (4'd8),
    .almostEmptyThreshold               (4'd0) 
    );

wire  isReq =    (rdmapCtrl[3:0] == REQ_OPCODE) & ~infoFifoEmpty;
wire  isAck =    (rdmapCtrl[3:0] == ACK_OPCODE) & ~infoFifoEmpty;
wire  isSend =   (rdmapCtrl[3:0] == SEND_OPCODE)& ~infoFifoEmpty;
// Proc
wire [15:0] reqDdpHdr;
wire [15:0] ackDdpHdr;
wire [7:0]  reqAckDdpCtrl;

wire [7:0]     dataNumWrAddr;
wire           dataNumWr;
wire [2:0]     dataNumWrData;
wire [7:0]     dataNumSendRdAddr;
wire           dataNumSendRd;
wire [7:0]     dataNumRdAddr;
wire           dataNumRd;

wire [7:0]     dataLenWrAddr;
wire           dataLenWr;
wire [36:0]    dataLenWrData;
wire [7:0]     dataLenRdAddr;
wire           dataLenRd;
wire [36:0]    dataLenRdData;
assign reqDdpHdr = {1'd0,2'd0,4'd0,9'd6};
assign ackDdpHdr = {1'd0,2'd0,4'd0,9'd4};
assign reqAckDdpCtrl = {1'd1,1'd1,6'd0};

GenRam2P256D3W uDataNum(
    // Outputs;
    .readData     ( dataNumRdData ),
    // Inputs;    
    .clockCore    ( clock         ),
    .enableRead   ( dataNumRd     ),
    .addressRead  ( dataNumRdAddr ),
    .enableWrite  ( dataNumWr     ),
    .addressWrite ( dataNumWrAddr ),
    .writeData    ( dataNumWrData ) 
    );
assign dataNumWr = isReq & gen2PkgValid;
assign dataNumWrAddr = rdmapHeader[`PKT_TID_RANGE];
assign dataNumWrData = rdmapHeader[`PKT_DATA_NUM_RANGE];
assign dataNumRd     = dataNumSendRd | dataNumProcRd;
assign dataNumRdAddr = dataNumSendRd ? dataNumSendRdAddr : dataNumProcRdAddr;
GenRam2P256D36W uDataLen(
    // Outputs;
    .readData     ( dataLenRdData ),
    // Inputs;    
    .clockCore    ( clock         ),
    .enableRead   ( dataLenRd     ),
    .addressRead  ( dataLenRdAddr ),
    .enableWrite  ( dataLenWr     ),
    .addressWrite ( dataLenWrAddr ),
    .writeData    ( dataLenWrData ) 
    );
assign dataLenWr     = isReq & gen2PkgValid;
assign dataLenWrAddr = rdmapHeader[`PKT_TID_RANGE];
assign dataLenWrData = rdmapHeader[`REQ_LEN_RANGE];
//==================
// Send Proc
parameter IDLE = 3'd0, RD_TBL = 3'd1, SEND_INFO=3'd2, WAIT = 3'd3,POP=3'd4;
reg [2:0] CS,NS;
reg       tblRdValid;
reg [2:0]  dataNumF1;
reg [35:0] dataLenF1;
reg [31:0] queueNumF1;
wire [2:0]  payloadNum;
wire [35:0] payloadLen;
wire [15:0] payloadQN;
wire [2:0]  PID; 
wire [15:0] sendHdr;
wire [7:0]  sendCtrl;
reg  [2:0]  counter;
wire [2:0]  counterInt;
wire        sendCpl;
wire        sendOnePiece;
wire        infoPopSend;
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        CS <= IDLE;
        tblRdValid <= 1'd0;
    end
    else begin
        CS <= NS;
        tblRdValid <= dataNumSendRd;
    end
end
always@(posedge clock or negedge reset) begin
    if(tblRdValid) begin
        dataNumF1 <= dataNumRdData;
        dataLenF1 <= dataLenRdData;
        queueNumF1 <= queueNumRdData;
    end
end
always@(*) begin
    case (CS)
        IDLE : 
            if(isSend) NS = RD_TBL;
            else       NS = IDLE;
        RD_TBL :
            NS = SEND_INFO;
        SEND_INFO :
            if(sendCpl) NS = POP;
            else if (pkgFifoFull) NS = WAIT;
            else NS = SEND_INFO;
        WAIT :
            if(~pkgFifoFull) NS = SEND_INFO;
        POP :
            NS = IDLE;
        default: NS = IDLE;
    endcase
end
assign dataNumSendRdAddr = rdmapHeader[`PKT_TID_RANGE] ;
assign dataNumSendRd     = CS == RD_TBL;
assign dataLenRd         = dataNumSendRd;
assign dataLenRdAddr     = dataNumSendRdAddr;
assign payloadLen = tblRdValid ? dataLenRdData : dataLenF1;
assign payloadNum = tblRdValid ? dataNumRdData : dataNumF1;
assign payloadQN  = tblRdValid ? queueNumRdData : queueNumF1;
assign sendOnePiece = ((CS == SEND_INFO) & ~pkgFifoFull);
assign counterInt =  (counter == (payloadNum - 3'd1)) ? 3'd0 :
                      sendOnePiece ? counter + 3'd1 : counter;
assign sendCpl    = counter == (payloadNum - 3'd1);
assign queueNumRd = CS == RD_TBL;
assign queueNumRdAddr = rdmapHeader[`PKT_TID_RANGE];
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        counter <= 3'd0;
    end
    else begin
        counter <= counterInt;
    end
end

reg [8:0] rdmapPktLen;
reg [3:0] rdmapPktQN;
wire      sop;
wire      eop;
always @(*) begin
    case (counter)
        3'd0 : rdmapPktLen = payloadLen[8:0]   + 9'd1;
        3'd1 : rdmapPktLen = payloadLen[17:9]  + 9'd1;
        3'd2 : rdmapPktLen = payloadLen[26:18] + 9'd1;
        3'd3 : rdmapPktLen = payloadLen[35:27] + 9'd1; 
        default: rdmapPktLen = 9'd0;
    endcase
end
always @(*) begin
    case (counter)
        3'd3 : rdmapPktQN = payloadQN[3:0];
        3'd2 : rdmapPktQN = payloadQN[7:4];
        3'd1 : rdmapPktQN = payloadQN[11:8];
        3'd0 : rdmapPktQN = payloadQN[15:12]; 
        default: rdmapPktQN = 4'd0;
    endcase
end
assign PID = counter;
assign sendHdr = {PID,rdmapPktQN,rdmapPktLen};
assign sop = counter == 3'd0;
assign eop = counter == payloadNum;
assign sendCtrl = {sop,eop,6'd0};
assign infoPopSend = CS == POP;
//================
//  coherence
assign gen2PkgValid   = sendOnePiece | ( isReq | isAck )& ~pkgFifoFull; 
assign gen2PkgDdpCtrl = sendOnePiece ? sendCtrl : reqAckDdpCtrl;
assign gen2PkgDdpHeader = sendOnePiece ? sendHdr :
                          isReq        ? reqDdpHdr : ackDdpHdr;
assign gen2PkgRdmapHeader = rdmapHeader;
assign gen2PkgRdmapCtrl   = rdmapCtrl;

assign infoFifoPop = (infoPopSend | ( isReq | isAck )& ~pkgFifoFull) & ~ infoFifoEmpty;
endmodule // DdpHdrGen
