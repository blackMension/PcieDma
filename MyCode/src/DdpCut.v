`include "MacroDefine.h"
module DdpCut(
    /*AUTOARG*/
   // Outputs
   QN, push, pushData, ddp2RdmapHdrValid, ddp2RdmapControl,
   ddp2RdmapHeader,
   // Inputs
   clock, reset, ddpPktCutDataOut, ddpPktCutPop, ddpPktCutEmpty,
   ddpPktCutDataValid, sendDoneCtrl, sendDoneTID, sendDoneValid
   );

input clock;
input reset;
// To RecvBuffer (data in)
output  [3:0]    QN;
output           push;
output  [255:0]  pushData;
// From AsyncFifo
input  [266:0]   ddpPktCutDataOut; // sop : 1 , eop :1 , byteenable : 9, pkt : 256
output           ddpPktCutPop;
input            ddpPktCutEmpty;
input            ddpPktCutDataValid;
// From DdpAssmble;
input   [7:0]    sendDoneCtrl;
input   [7:0]    sendDoneTID;
input            sendDoneValid;
// To HeaderProc
output           ddp2RdmapHdrValid;
output  [7:0]    ddp2RdmapControl;
output  [55:0]   ddp2RdmapHeader;

wire sop;
wire eop;
wire [8:0] byteEnable;

wire [7:0]  ddpCtrl;
wire [7:0]  rdmapCtrl;
wire [55:0] rdmapHdr;
wire [15:0] ddpHdr;
reg   [55:0]  rdmapHdrLock;
reg   [7:0]   rdmapCtrlLock;
wire [255:0]  sendDataSlice;
reg  [255:0]  sendDataAligned;
reg  [215:0]  sendDataLast;
wire          dataValid;
wire [8:0]    dataLen;
reg  [8:0]    lastDataLen;
reg           dataValidF1;
reg           eopF1;
reg           sopF1;
reg           isSendF1;
wire          pEdgeIsSend;
reg  [3:0]    sendQN;
wire          lastDataValid;
reg           lastDataValidF1;
wire          pEdgeLastDataValid;
wire  isReq =    (rdmapCtrl[3:0] == `REQ_OPCODE) & ddpPktCutDataValid & sop;
wire  isAck =    (rdmapCtrl[3:0] == `ACK_OPCODE) & ddpPktCutDataValid & sop;
wire  isSend =   (rdmapCtrl[3:0] == `SEND_OPCODE)& ddpPktCutDataValid & sop;
assign pEdgeIsSend = isSend & ~isSendF1;
assign {sop,eop,byteEnable,ddpCtrl,rdmapCtrl,ddpHdr,rdmapHdr} = ddpPktCutDataOut[266:168];
always @(posedge clock) begin
    if(sop & ~eop) begin
        rdmapHdrLock <= rdmapHdr;
        rdmapCtrlLock <= rdmapCtrl;
    end
end
assign dataLen = ddpHdr[8:0] - 9'd1;
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        lastDataLen <= 9'd0;
        eopF1 <= 1'd0;
        sopF1 <= 1'd0;
        sendQN <= 4'd0;
        dataValidF1 <= 1'd0;
        isSendF1 <= 1'd0;
        lastDataValidF1 <= 1'd0;
    end
    else begin
        eopF1 <= eop;
        sopF1 <= sop;
        dataValidF1 <= dataValid;
        isSendF1 <= isSend;
        lastDataValidF1 <= lastDataValid;
        if(isSend) begin
            lastDataLen <= {3'd0,dataLen[4:0]};
            sendQN      <= ddpHdr[12:9];
        end
    end
end
wire   dataReady;
assign dataReady = ddpPktCutDataValid ; 
assign lastDataValid = ~sop & eop & dataReady & ( byteEnable > 9'd5); 
assign pEdgeLastDataValid = lastDataValid & ~lastDataValidF1;
assign sendDataSlice = sop ? {40'd0,ddpPktCutDataOut[215:0]} : ddpPktCutDataOut[255:0];
assign dataValid = pEdgeIsSend | (~sop & dataReady) | pEdgeLastDataValid; 
always @(posedge clock) begin
    if(dataValid) begin
        {sendDataAligned,sendDataLast} <= {sendDataLast,sendDataSlice};
    end
end
assign QN = sendQN;
assign pushData = sendDataAligned;
assign push     = dataValidF1 & eopF1 | dataValidF1 & ~sopF1 & ~eopF1;
assign ddpPktCutPop = ((~lastDataValid & (dataValid | eop)) | pEdgeLastDataValid) & dataReady;

assign ddp2RdmapHdrValid = eop & dataReady;
assign ddp2RdmapHeader   = sop ? rdmapHdr : rdmapHdrLock;
assign ddp2RdmapControl  = sop ? rdmapCtrl: rdmapCtrlLock;
endmodule // DdpCut
