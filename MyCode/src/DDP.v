
// VWEAVE: BEGIN PERL
//
// matrix off;
//
// module;
// ports;
// wires;
//
// instance "DdpHdrGen.v","uDdpHdrGen";
// instance "DdpAssmble.v","uDdpAssmble";
// #instance "DdpCutPad.v","uDdpCutPad";
// instance "DdpCut.v","uDdpCut";
//    connect "ddpPktCutDataOut"   , "ddpPktDataOut";    
//    connect "ddpPktCutDataValid" , "ddpPktDataValid";      
//    connect "ddpPktCutEmpty"     , "ddpPktEmpty";  
//    connect "ddpPktCutPop"       , "ddpPktPop";
// # instance "DdpLoop.v","uDdpLoop";
// endmodule
// VWEAVE: END PERL
// VWEAVE: BEGIN GENERATED
module DDP ( 
              // inputs
              clock,
              dataNumProcRd,
              dataNumProcRdAddr,
              dataOut,
              ddpPktDataOut,
              ddpPktDataValid,
              ddpPktEmpty,
              ddpPktFull,
              emptyArray,
              queueNumRdData,
              rdmap2DdpCtrl,
              rdmap2DdpHdrValid,
              rdmap2DdpHeader,
              ready,
              reset,

              // outputs
              QN,
              dataNumRdData,
              dataPop,
              ddp2RdmapControl,
              ddp2RdmapHdrValid,
              ddp2RdmapHeader,
              ddpPktDataIn,
              ddpPktPop,
              ddpPktPush,
              push,
              pushData,
              queueNumRd,
              queueNumRdAddr
);

input              clock;
input              dataNumProcRd;
input   [7:0]      dataNumProcRdAddr;
input   [255:0]    dataOut;
input   [266:0]    ddpPktDataOut;
input              ddpPktDataValid;
input              ddpPktEmpty;
input              ddpPktFull;
input   [3:0]      emptyArray;
input   [15:0]     queueNumRdData;
input   [7:0]      rdmap2DdpCtrl;
input              rdmap2DdpHdrValid;
input   [55:0]     rdmap2DdpHeader;
input              ready;
input              reset;

output  [3:0]      QN;
output  [2:0]      dataNumRdData;
output             dataPop;
output  [7:0]      ddp2RdmapControl;
output             ddp2RdmapHdrValid;
output  [55:0]     ddp2RdmapHeader;
output  [266:0]    ddpPktDataIn;
output             ddpPktPop;
output             ddpPktPush;
output             push;
output  [255:0]    pushData;
output             queueNumRd;
output  [7:0]      queueNumRdAddr;


   wire [7:0]      gen2PkgDdpCtrl;
   wire [15:0]     gen2PkgDdpHeader;
   wire [7:0]      gen2PkgRdmapCtrl;
   wire [55:0]     gen2PkgRdmapHeader;
   wire            gen2PkgValid;
   wire            pkgFifoFull;
   wire [7:0]      sendDoneCtrl;
   wire [7:0]      sendDoneTID;
   wire            sendDoneValid;

DdpHdrGen  uDdpHdrGen (
   .clock                         (clock),
   .dataNumProcRd                 (dataNumProcRd),
   .dataNumProcRdAddr             (dataNumProcRdAddr[7:0]),
   .pkgFifoFull                   (pkgFifoFull),
   .queueNumRdData                (queueNumRdData[15:0]),
   .rdmap2DdpCtrl                 (rdmap2DdpCtrl[7:0]),
   .rdmap2DdpHdrValid             (rdmap2DdpHdrValid),
   .rdmap2DdpHeader               (rdmap2DdpHeader[55:0]),
   .reset                         (reset),

   .dataNumRdData                 (dataNumRdData[2:0]),
   .gen2PkgDdpCtrl                (gen2PkgDdpCtrl[7:0]),
   .gen2PkgDdpHeader              (gen2PkgDdpHeader[15:0]),
   .gen2PkgRdmapCtrl              (gen2PkgRdmapCtrl[7:0]),
   .gen2PkgRdmapHeader            (gen2PkgRdmapHeader[55:0]),
   .gen2PkgValid                  (gen2PkgValid),
   .queueNumRd                    (queueNumRd),
   .queueNumRdAddr                (queueNumRdAddr[7:0])
);

DdpAssmble  uDdpAssmble (
   .clock                         (clock),
   .dataOut                       (dataOut[255:0]),
   .ddpPktFull                    (ddpPktFull),
   .emptyArray                    (emptyArray[3:0]),
   .gen2PkgDdpCtrl                (gen2PkgDdpCtrl[7:0]),
   .gen2PkgDdpHeader              (gen2PkgDdpHeader[15:0]),
   .gen2PkgRdmapCtrl              (gen2PkgRdmapCtrl[7:0]),
   .gen2PkgRdmapHeader            (gen2PkgRdmapHeader[55:0]),
   .gen2PkgValid                  (gen2PkgValid),
   .ready                         (ready),
   .reset                         (reset),

   .dataPop                       (dataPop),
   .ddpPktDataIn                  (ddpPktDataIn[266:0]),
   .ddpPktPush                    (ddpPktPush),
   .pkgFifoFull                   (pkgFifoFull),
   .sendDoneCtrl                  (sendDoneCtrl[7:0]),
   .sendDoneTID                   (sendDoneTID[7:0]),
   .sendDoneValid                 (sendDoneValid)
);

DdpCut  uDdpCut (
   .clock                         (clock),
   .ddpPktCutDataOut              (ddpPktDataOut[266:0]),
   .ddpPktCutDataValid            (ddpPktDataValid),
   .ddpPktCutEmpty                (ddpPktEmpty),
   .reset                         (reset),
   .sendDoneCtrl                  (sendDoneCtrl[7:0]),
   .sendDoneTID                   (sendDoneTID[7:0]),
   .sendDoneValid                 (sendDoneValid),

   .QN                            (QN[3:0]),
   .ddp2RdmapControl              (ddp2RdmapControl[7:0]),
   .ddp2RdmapHdrValid             (ddp2RdmapHdrValid),
   .ddp2RdmapHeader               (ddp2RdmapHeader[55:0]),
   .ddpPktCutPop                  (ddpPktPop),
   .push                          (push),
   .pushData                      (pushData[255:0])
);

endmodule
// VWEAVE: END GENERATED
