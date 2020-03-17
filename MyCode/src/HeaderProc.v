
// F1 : classify pkt, put it to different direction
// F2 Send : read datanum table ,static table
// F3 Send : write static table,or gen IRR
// F2 Other : push info to their fifo
`include "MacroDefine.h"
module HeaderProc(
    /*AUTOARG*/
   // Outputs
   ackFifoPush, ackFifoDataIn, offloadFifoPush, offloadFifoDataIn,
   wrDoneFifoPush, wrDoneFifoDataIn, reqValid, reqInfo, dataNumRdAddr,
   dataNumRd, queueNumRdData,
   // Inputs
   clock, reset, ddp2RdmapHdrValid, ddp2RdmapControl, ddp2RdmapHeader,
   ackFifoFull, offloadFifoFull, wrDoneFifoFull, dataNumRdData,
   queueNumRdAddr, queueNumRd
   );
input clock;
input reset;
// From DDP
input          ddp2RdmapHdrValid;
input [7:0]    ddp2RdmapControl;
input [55:0]   ddp2RdmapHeader;
// TO Optr Ack
output         ackFifoPush;
output [27:0]  ackFifoDataIn;
input          ackFifoFull;
// To Optr offload Done
output         offloadFifoPush; // First Data
output [7:0]   offloadFifoDataIn;
input          offloadFifoFull;
// To Optr Send Done
output         wrDoneFifoPush;
output [7:0]   wrDoneFifoDataIn;
input          wrDoneFifoFull;

// To IRRQ , Request 
output         reqValid;
output [55:0]  reqInfo;

// To send dataNum table
output [7:0]   dataNumRdAddr;
output         dataNumRd;
input  [2:0]   dataNumRdData;
// From DdpHdrGen
input  [7:0]    queueNumRdAddr;
input           queueNumRd;
output [15:0]   queueNumRdData;
parameter       SEND_OPCODE = 4'b0000;
parameter       RCV_OPCODE  = 4'b0001;
parameter       REQ_OPCODE  = 4'b0011;
parameter       ACK_OPCODE  = 4'b0111;
parameter       WR_DONE_OPCODE  = 4'b0110;
parameter       RD_DONE_OPCODE  = 4'b0100;
// SEND static Table width 3bit ;depth 256
wire           enableRead;
wire  [7:0]    addressRead;
wire           enableWrite;
wire  [7:0]    addressWrite;
wire  [2:0]    writeData;
wire  [2:0]    readData;


wire  isReq =  (ddp2RdmapControl[7:0] == REQ_OPCODE) & ddp2RdmapHdrValid;
wire  isAck =  (ddp2RdmapControl[7:0] == ACK_OPCODE) & ddp2RdmapHdrValid;
wire  isSend = (ddp2RdmapControl[7:0] == SEND_OPCODE)& ddp2RdmapHdrValid;
wire  isWrDone = (ddp2RdmapControl[7:0] == WR_DONE_OPCODE) & ddp2RdmapHdrValid;
wire  isRdDone = (ddp2RdmapControl[7:0] == RD_DONE_OPCODE) & ddp2RdmapHdrValid;
//===========================
//        Send Proc
reg  [7:0]    sendInfo; // TID
reg           isSendF1;
reg           isSendF2;
wire [2:0]    writeDataProc;
wire          writeProc;
wire [2:0]    sendedNum;
wire          isSop;
wire          isEop;
wire          initWr;
wire  [8:0]   initAddrInt;
reg   [8:0]   initAddr;
wire          initDone;
wire          initData;
assign enableRead  = isSend;
assign addressRead = ddp2RdmapHeader[`PKT_TID_RANGE];
assign dataNumRd   = isSend;
assign dataNumRdAddr = ddp2RdmapHeader[`PKT_TID_RANGE];
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        isSendF1 <= 1'd0;
        isSendF2 <= 1'd0;
    end
    else begin
        isSendF1 <= isSend;
        isSendF2 <= isSendF1;
    end
end
always @(posedge clock) begin
    if(isSend) begin
        sendInfo <= ddp2RdmapHeader[`SEND_TID_RANGE];
    end
end
assign sendedNum = readData + 3'd1;
assign isSop = ( sendedNum == 3'd1 ) & isSendF1;
assign isEop = ( sendedNum == dataNumRdData ) & isSendF1;
assign writeDataProc = isEop ? 3'd0:sendedNum;
assign addressWrite = initDone ? sendInfo : initAddr;
assign offloadFifoDataIn  = sendInfo;
assign offloadFifoPush    = isSop & ~offloadFifoFull;
assign writeProc    = isSendF1;

assign initData = 3'd0;
assign initDone    = initAddr[8];
assign initAddrInt = initDone ? initAddr : initAddr + 9'd1;
always @(posedge clock or negedge reset) begin
    if (!reset) begin
        initAddr <= 9'd0;
    end
    else begin
        initAddr <= initAddrInt;
    end
end
assign enableWrite = ~initDone | writeProc;
assign writeData   = initDone ? writeDataProc : initData;

GenRam2P256D3W uSendStatic(
    // Outputs;
    .readData     	 (readData      ),
    // Inputs;         
    .clockCore    	 (clock         ),
    .enableRead   	 (enableRead    ),
    .addressRead     (addressRead   ),
    .enableWrite  	 (enableWrite   ),
    .addressWrite    (addressWrite  ),
    .writeData    	 (writeData     ) 
    );
//=======================
//      Others Proc
assign wrDoneFifoPush    = isWrDone & ~wrDoneFifoFull;
assign wrDoneFifoDataIn  = ddp2RdmapHeader[55:48];

assign ackFifoPush   = isAck & ~ackFifoFull;
assign ackFifoDataIn = {ddp2RdmapHeader[`PKT_TID_RANGE],ddp2RdmapHeader[`ACK_QUEUE_NUM_RANGE]};

assign reqValid   = isReq;
assign reqInfo    = ddp2RdmapHeader;
// TODO : ADD QueueNumber Static Table
wire [7:0]    queueNumWrAddr;
wire          queueNumWr;
wire [15:0]   queueNumWrData;
GenRam2P256D16W uQueueNumberStatic(
    // Outputs;
    .readData     	 (queueNumRdData),
    // Inputs;         
    .clockCore    	 (clock         ),
    .enableRead   	 (queueNumRd    ),
    .addressRead     (queueNumRdAddr),
    .enableWrite  	 (queueNumWr    ),
    .addressWrite    (queueNumWrAddr),
    .writeData    	 (queueNumWrData ) 
);
assign queueNumWr = isAck;
assign queueNumWrAddr = ddp2RdmapHeader[`PKT_TID_RANGE];
assign queueNumWrData = ddp2RdmapHeader[`ACK_QUEUE_NUM_RANGE];
endmodule // HeaderPaser
