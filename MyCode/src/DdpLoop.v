module DdpLoop(
    /*AUTOARG*/
   // Outputs
   ddpPktDataOut, ddpPktPop, ddpPktFull,
   // Inputs
   clock, reset, ddpPktEmpty, ddpPktDataIn, ddpPktPush
   );
input clock;
input reset;
// to DdpCut
output[266:0]   ddpPktDataOut; // sop : 1 , eop :1 , byteenable : 7, pkt : 256
output          ddpPktPop;
input           ddpPktEmpty;
// From DdpAssmble
input  [266:0]  ddpPktDataIn; // sop : 1 , eop :1 , byteenable : 7, pkt : 256
input           ddpPktPush;
output          ddpPktFull;


GenRegFifo8D267W uDdpPktFifo(
    // Outputs;
    .dataOut                            (ddpPktDataOut),
    .full                               (ddpPktFull),
    .empty                              (ddpPktEmpty)  ,
    .almostFullFlag                     (),
    .almostEmptyFlag                    (),
    .fifoDepth                          (),
    .overrun                            (),
    .underrun                           (),
    // Inputs
    .clockCore                          (clock),
    .resetCore                          (reset),
    .push                               (ddpPktPush ) ,
    .dataIn                             (ddpPktDataIn)   ,
    .pop                                (ddpPktPop),
    .almostFullThreshold                (4'd8),
    .almostEmptyThreshold               (4'd0) 
    );
endmodule // DdpLoop
