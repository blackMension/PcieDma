`include "MacroDefine.h"
module DdpCut(
    /*AUTOARG*/
   // Outputs
   QN, push, pushData, ddpPktEmpty, ddp2RdmapHdrValid,
   ddp2RdmapControl, ddp2RdmapHeader,
   // Inputs
   clock, reset, ddpPktDataOut, ddpPktPop, sendDoneCtrl, sendDoneTID,
   sendDoneValid
   );

input clock;
input reset;
// To RecvBuffer (data in)
output  [3:0]    QN;
output           push;
output  [255:0]  pushData;
// From AsyncFifo
input  [264:0]   ddpPktDataOut; // sop : 1 , eop :1 , byteenable : 7, pkt : 256
input            ddpPktPop;
output           ddpPktEmpty;
// From DdpAssmble;
input   [7:0]    sendDoneCtrl;
input   [7:0]    sendDoneTID;
input            sendDoneValid;
// To HeaderProc
output           ddp2RdmapHdrValid;
output  [7:0]    ddp2RdmapControl;
output  [47:0]   ddp2RdmapHeader;

wire sop;
wire eop;
wire [7:0] byteEnable;

wire [7:0]  ddpCtrl;
wire [7:0]  rdmapCtrl;
wire [47:0] rdmapHdr;
wire [15:0] ddpHdr;

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
reg  [3:0]    sendQN;
wire  isReq =    (rdmapCtrl[3:0] == `REQ_OPCODE) & ~ddpPktEmpty & sop;
wire  isAck =    (rdmapCtrl[3:0] == `ACK_OPCODE) & ~ddpPktEmpty & sop;
wire  isSend =   (rdmapCtrl[3:0] == `SEND_OPCODE)& ~ddpPktEmpty & sop;

assign {sop,eop,byteEnable,ddpCtrl,rdmapCtrl,ddpHdr,rdmapHdr} = ddpPktDataOut[264:176];

assign dataLen = ddpHdr[8:0] - 9'd1;
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        lastDataLen <= 9'd0;
        eopF1 <= 1'd0;
        sopF1 <= 1'd0;
        sendQN <= 4'd0;
        dataValidF1 <= 1'd0;
    end
    else begin
        eopF1 <= eop;
        sopF1 <= sop;
        dataValidF1 <= dataValid;
        if(isSend) begin
            lastDataLen <= {3'd0,dataLen[4:0]};
            sendQN      <= ddpCtrl[11:8];
        end
    end
end
assign sendDataSlice = sop ? {ddpPktDataOut[215:0],40'd0} : ddpPktDataOut[255:0];
assign dataValid = isSend | (~sop & ~ddpPktEmpty); 
always @(posedge clock) begin
    if(dataValid) begin
        {sendDataAligned,sendDataLast} <= {sendDataLast,sendDataSlice};
    end
end
assign QN = sendQN;
assign pushData = sendDataAligned;
assign push     = dataValidF1 & eopF1 | dataValidF1 & ~sopF1 & ~eopF1;
assign ddpPktPop = dataValidF1 & ~eopF1 | eop;

assign ddp2RdmapHdrValid = eop;
assign ddp2RdmapHeader   = rdmapHdr;
assign ddp2RdmapControl  = rdmapCtrl;
endmodule // DdpCut
