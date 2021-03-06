// 验证内容： 1. HeaderGen和HeaderProc功能：包生成，包处理，读写表，fifo
// CQ处理内容未完成。
module RdmapLoop(
    /*AUTOARG*/
   // Outputs
   dataNumRdData, ddp2RdmapHdrValid, ddp2RdmapControl,
   ddp2RdmapHeader, dataPop, QN, push, pushData, bufRelease,
   // Inputs
   clock, reset, dataNumRdAddr, dataNumRd, rdmap2DdpHeader,
   rdmap2DdpCtrl, rdmap2DdpHdrValid, dataOut, ready, emptyArray,
   poolFull, poolEmpty
   );
input clock;
input reset;
// 
input [7:0]     dataNumRdAddr;
input           dataNumRd;
output  [2:0]   dataNumRdData;
// From HeaderGen
input  [47:0]   rdmap2DdpHeader;
input  [7:0]    rdmap2DdpCtrl;
input           rdmap2DdpHdrValid;
// To HeaderProc
output          ddp2RdmapHdrValid;
output [7:0]    ddp2RdmapControl;
output [47:0]   ddp2RdmapHeader;

//SendBuffer To Rdma (data out)
    input   [255:0]  dataOut;
    output           dataPop;
    input            ready;
    input   [3:0]    emptyArray;
// RecvBuffer To Rdma (data in)
    output  [3:0]    QN;
    output           push;
    output  [255:0]  pushData;
    
// RecvBuffer register
    input            poolFull;
    input            poolEmpty;
    output           bufRelease;

parameter       SEND_OPCODE = 4'b0000;
parameter       RCV_OPCODE  = 4'b0001;
parameter       REQ_OPCODE  = 4'b0011;
parameter       ACK_OPCODE  = 4'b0111;
parameter       WR_DONE_OPCODE  = 4'b0110;
parameter       RD_DONE_OPCODE  = 4'b0100;

wire [7:0]     dataNumWrAddr;
wire           dataNumWr;
wire [2:0]     dataNumWrData;

reg [2:0]     reqDataNum;
reg [2:0] conter;
wire            written;
reg             readyF1;
wire  isReq =    (rdmap2DdpCtrl[7:0] == REQ_OPCODE) & rdmap2DdpHdrValid;
wire  isAck =    (rdmap2DdpCtrl[7:0] == ACK_OPCODE) & rdmap2DdpHdrValid;
wire  isSend =   (rdmap2DdpCtrl[7:0] == SEND_OPCODE)& rdmap2DdpHdrValid;
wire  isWrDone = (rdmap2DdpCtrl[7:0] == WR_DONE_OPCODE) & rdmap2DdpHdrValid;
wire  isRdDone = (rdmap2DdpCtrl[7:0] == RD_DONE_OPCODE) & rdmap2DdpHdrValid;
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        reqDataNum <= 3'd0;
    end
    else begin
        if(isReq) begin
            reqDataNum <= rdmap2DdpHeader[42:40];
        end
    end
end
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


assign dataNumWrData = rdmap2DdpHeader[42:40];
assign dataNumWr     = isReq;
assign dataNumWrAddr = rdmap2DdpHeader[39:32];

//=====================
//    Req Loop
reg [47:0]   hdrStall;
reg [7:0]    ctrlStall;
reg          isReqF1,isAckF1,isSendF1,isWrDoneF1,isRdDoneF1;
always @(posedge clock) begin
    if(rdmap2DdpHdrValid & isSend) begin
        hdrStall <= rdmap2DdpHeader;
        ctrlStall <= rdmap2DdpCtrl;
    end
end
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        {isReqF1,isAckF1,isSendF1,isWrDoneF1,isRdDoneF1} <= 5'd0;
    end
    else begin
        {isReqF1,isAckF1,isSendF1,isWrDoneF1,isRdDoneF1} <= {isReq,isAck,isSend,isWrDone,isRdDone};
    end
end
assign ddp2RdmapHdrValid = rdmap2DdpHdrValid & ~isSend | written;
assign ddp2RdmapHeader   = written ? hdrStall : rdmap2DdpHeader ;
assign ddp2RdmapControl  = written ? ctrlStall: rdmap2DdpCtrl;
//=====================
//    data Loop
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        readyF1 <= 1'd0;
    end
    else begin
        readyF1 <= ready;
    end
end
assign written = readyF1 & ~ready;
assign  QN = ~emptyArray[0] ? 4'd0 :
             ~emptyArray[1] ? 4'd1 :
             ~emptyArray[2] ? 4'd2 : 4'd3;
assign  pushData = dataOut;
assign  push    = ready;
assign  dataPop = push;

assign  bufRelease = 1'd0;
endmodule // RdmapLoop
