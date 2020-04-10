`include "MacroDefine.h"
module DdpCutPad(
    /*AUTOARG*/
   // Outputs
   ddpPktCutDataOut, ddpPktCutEmpty, ddpPktCutDataValid, ddpPktPop,
   // Inputs
   clock, reset, ddpPktCutPop, ddpPktDataOut, ddpPktEmpty,
   ddpPktDataValid
   );
input clock;
input reset;

input             ddpPktCutPop;
output  [266:0]   ddpPktCutDataOut; // sop : 1 , eop :1 , byteenable : 9, pkt : 256
output            ddpPktCutEmpty;
output            ddpPktCutDataValid;

input  [266:0]   ddpPktDataOut; // sop : 1 , eop :1 , byteenable : 9, pkt : 256
output           ddpPktPop;
input            ddpPktEmpty;
input            ddpPktDataValid;

wire       sop;
wire       eop;
wire [8:0] byteenable;      
wire [7:0] ddpCtrl;
wire [7:0] rdmapCtrl;

assign {sop,eop,byteenable,ddpCtrl,rdmapCtrl} = ddpPktDataOut[266:240];

wire  isReq =    (rdmapCtrl[3:0] == `REQ_OPCODE) & ddpPktDataValid & sop;
wire  isAck =    (rdmapCtrl[3:0] == `ACK_OPCODE) & ddpPktDataValid & sop;
wire  isSend =   (rdmapCtrl[3:0] == `SEND_OPCODE)& ddpPktDataValid & sop;

wire startProc = isReq | isAck;
reg  endProc;
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        endProc <= 1'd0;
    end
    else begin
        if(startProc) endProc <= 1'd1;
        else if(ddpPktDataValid) endProc <= 1'd0;
    end
end

wire [8:0] byteenable_cuted;
wire ddpPktCutPush;
wire ddpPktCutFull;
wire [266:0] ddpPktCutDataIn;
wire         eopCuted;
GenRegFifo32D267W uDdpCutFifo(
    // Outputs;
    .dataOut                            (ddpPktCutDataOut),
    .full                               (ddpPktCutFull),
    .empty                              (ddpPktCutEmpty)  ,
    .almostFullFlag                     (),
    .almostEmptyFlag                    (),
    .fifoDepth                          (),
    .overrun                            (),
    .underrun                           (),
    // Inputs
    .clockCore                          (clock),
    .resetCore                          (reset),
    .push                               (ddpPktCutPush) ,
    .dataIn                             (ddpPktCutDataIn)   ,
    .pop                                (ddpPktCutPop),
    .almostFullThreshold                (6'd32),
    .almostEmptyThreshold               (6'd0) 
    );
assign eopCuted = startProc | eop;
assign byteenable_cuted = isReq ? 9'd10 : isAck ? 9'd8 : byteenable;
assign ddpPktCutDataIn = {sop,eopCuted,byteenable_cuted,ddpPktDataOut[255:0]};
assign ddpPktCutPush = ~ddpPktCutFull & (ddpPktDataValid & ~endProc);
assign ddpPktPop = (ddpPktCutPush | endProc & ddpPktDataValid);
assign ddpPktCutDataValid = ~ddpPktCutEmpty;
endmodule // DdpCutPad
