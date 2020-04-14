module HeaderGen(
    /*AUTOARG*/
   // Outputs
   bufRegister, rgstrNum, rdmap2DdpHeader, rdmap2DdpCtrl,
   rdmap2DdpHdrValid,
   // Inputs
   clock, reset, infoValid, rdmaControl, rdmaWR, rgstrPtr, lastNum,
   poolEmpty, poolFull
   );
input clock;
input reset;
// From RdmaOptr
input          infoValid;
input [15:0]   rdmaControl;
input [51:0]   rdmaWR;

// buffer register
output           bufRegister;
output  [2:0]    rgstrNum;
input   [4:0]    rgstrPtr;
input   [4:0]    lastNum;
input            poolEmpty;
input            poolFull;
// To DDP
output  [55:0]   rdmap2DdpHeader;
output  [7:0]    rdmap2DdpCtrl;
output           rdmap2DdpHdrValid;

reg  [55:0]   rdmap2DdpHeader;
reg  [7:0]    rdmap2DdpCtrl;
reg           rdmap2DdpHdrValid;

parameter       SEND_OPCODE = 4'b0000;
parameter       RCV_OPCODE  = 4'b0001;
parameter       REQ_OPCODE  = 4'b0011;
parameter       ACK_OPCODE  = 4'b0111;

wire [2:0] rgstrNum;
wire [3:0] QN0;
wire [3:0] QN1;
wire [3:0] QN2;
wire [3:0] QN3;
reg  [3:0] QN0F1;
reg  [3:0] QN1F1;
reg  [3:0] QN2F1;
reg  [3:0] QN3F1;

wire  isReq;
wire  isAck;
wire  isRcv;
wire  isSend;
reg   isAckF1;
reg          infoValidF1;
reg [15:0]   rdmaControlF1;
reg [51:0]   rdmaWRF1;
wire [55:0]  headerInt;

assign rgstrNum    = rdmaWR[46:44];
assign bufRegister = isAck;
assign isAck  = (rdmaControl[7:0] == ACK_OPCODE)& infoValid;

assign QN0 = rgstrPtr[3:0];
assign QN1 = rgstrPtr[3:0] + 4'd1;
assign QN2 = rgstrPtr[3:0] + 4'd2;
assign QN3 = rgstrPtr[3:0] + 4'd3;
always @(posedge clock or negedge reset) begin
    if(isAck) begin
        QN0F1 <= QN0;
        QN1F1 <= QN1;
        QN2F1 <= QN2;
        QN3F1 <= QN3;
    end
end
always @(posedge clock or negedge reset) begin
    if(infoValid) begin
        rdmaControlF1 <= rdmaControl;
        rdmaWRF1  <= rdmaWR;
    end
end
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        infoValidF1 <= 1'd0;
        isAckF1 <= 1'd0;
        rdmap2DdpHdrValid <= 1'd0;
    end
    else begin
        infoValidF1 <= infoValid;
        isAckF1     <= isAck;
        rdmap2DdpHdrValid <= infoValidF1;
    end
end
assign isReq  = (rdmaControlF1[7:0] == REQ_OPCODE)& infoValidF1;
assign isRcv  = (rdmaControlF1[7:0] == RCV_OPCODE)& infoValidF1;
assign isSend = (rdmaControlF1[7:0] == SEND_OPCODE)& infoValidF1;

assign headerInt = isAckF1 ? {rdmaWRF1[51:36],QN0F1,QN1F1,QN2F1,QN3F1,24'd0} :
                   isSend  ? {rdmaWRF1[43:36],48'd0} : {rdmaWRF1,4'd0};
always @(posedge clock or negedge reset) begin
    if(infoValidF1) begin
        rdmap2DdpHeader <= headerInt;
        rdmap2DdpCtrl <= rdmaControlF1;
    end
end
endmodule // HeaderGen


