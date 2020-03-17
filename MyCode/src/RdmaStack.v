// VWEAVE: BEGIN PERL
//
// matrix off;
//
// module;
// ports;
// wires;
//
// instance "Rdmap.v" , "uRdmap";
// instance "DDP.v","uDDP";
//     connect "dataNumProcRd","dataNumRd";
//     connect "dataNumProcRdAddr","dataNumRdAddr";
// instance "DdpLoop.v","uDdpLoop";
// endmodule
// VWEAVE: END PERL
// VWEAVE: BEGIN GENERATED
module RdmaStack ( 
                    // inputs
                    RQAddress_i,
                    RQByteEnable_i,
                    RQChipSelect_i,
                    RQRead_i,
                    RQWriteData_i,
                    RQWrite_i,
                    RdDCSReadData,
                    RdDCSWaitRequest,
                    SQAddress_i,
                    SQByteEnable_i,
                    SQChipSelect_i,
                    SQRead_i,
                    SQWriteData_i,
                    SQWrite_i,
                    WrDCSReadData,
                    WrDCSWaitRequest,
                    clock,
                    dataOut,
                    emptyArray,
                    lastNum,
                    poolEmpty,
                    poolFull,
                    ready,
                    reset,
                    rgstrPtr,

                    // outputs
                    QN,
                    RQReadData_o,
                    RQWaitRequest_o,
                    RdDCSAddress,
                    RdDCSByteEnable,
                    RdDCSChipSelect,
                    RdDCSRead,
                    RdDCSWrite,
                    RdDCSWriteData,
                    SQReadData_o,
                    SQWaitRequest_o,
                    WrDCSAddress,
                    WrDCSByteEnable,
                    WrDCSChipSelect,
                    WrDCSRead,
                    WrDCSWrite,
                    WrDCSWriteData,
                    bufRegister,
                    dataPop,
                    push,
                    pushData,
                    reqInfo,
                    reqValid,
                    rgstrNum
);

input   [7:0]      RQAddress_i;
input   [3:0]      RQByteEnable_i;
input              RQChipSelect_i;
input              RQRead_i;
input   [31:0]     RQWriteData_i;
input              RQWrite_i;
input   [31:0]     RdDCSReadData;
input              RdDCSWaitRequest;
input   [7:0]      SQAddress_i;
input   [3:0]      SQByteEnable_i;
input              SQChipSelect_i;
input              SQRead_i;
input   [31:0]     SQWriteData_i;
input              SQWrite_i;
input   [31:0]     WrDCSReadData;
input              WrDCSWaitRequest;
input              clock;
input   [255:0]    dataOut;
input   [3:0]      emptyArray;
input   [4:0]      lastNum;
input              poolEmpty;
input              poolFull;
input              ready;
input              reset;
input   [4:0]      rgstrPtr;

output  [3:0]      QN;
output  [31:0]     RQReadData_o;
output             RQWaitRequest_o;
output  [7:0]      RdDCSAddress;
output  [3:0]      RdDCSByteEnable;
output             RdDCSChipSelect;
output             RdDCSRead;
output             RdDCSWrite;
output  [31:0]     RdDCSWriteData;
output  [31:0]     SQReadData_o;
output             SQWaitRequest_o;
output  [7:0]      WrDCSAddress;
output  [3:0]      WrDCSByteEnable;
output             WrDCSChipSelect;
output             WrDCSRead;
output             WrDCSWrite;
output  [31:0]     WrDCSWriteData;
output             bufRegister;
output             dataPop;
output             push;
output  [255:0]    pushData;
output  [55:0]     reqInfo;
output             reqValid;
output  [2:0]      rgstrNum;


   wire            dataNumRd;
   wire [7:0]      dataNumRdAddr;
   wire [2:0]      dataNumRdData;
   wire [7:0]      ddp2RdmapControl;
   wire            ddp2RdmapHdrValid;
   wire [55:0]     ddp2RdmapHeader;
   wire [266:0]    ddpPktDataIn;
   wire [266:0]    ddpPktDataOut;
   wire            ddpPktEmpty;
   wire            ddpPktFull;
   wire            ddpPktPop;
   wire            ddpPktPush;
   wire            queueNumRd;
   wire [7:0]      queueNumRdAddr;
   wire [15:0]     queueNumRdData;
   wire [7:0]      rdmap2DdpCtrl;
   wire            rdmap2DdpHdrValid;
   wire [55:0]     rdmap2DdpHeader;

Rdmap  uRdmap (
   .RQAddress_i                   (RQAddress_i[7:0]),
   .RQByteEnable_i                (RQByteEnable_i[3:0]),
   .RQChipSelect_i                (RQChipSelect_i),
   .RQRead_i                      (RQRead_i),
   .RQWriteData_i                 (RQWriteData_i[31:0]),
   .RQWrite_i                     (RQWrite_i),
   .RdDCSReadData                 (RdDCSReadData[31:0]),
   .RdDCSWaitRequest              (RdDCSWaitRequest),
   .SQAddress_i                   (SQAddress_i[7:0]),
   .SQByteEnable_i                (SQByteEnable_i[3:0]),
   .SQChipSelect_i                (SQChipSelect_i),
   .SQRead_i                      (SQRead_i),
   .SQWriteData_i                 (SQWriteData_i[31:0]),
   .SQWrite_i                     (SQWrite_i),
   .WrDCSReadData                 (WrDCSReadData[31:0]),
   .WrDCSWaitRequest              (WrDCSWaitRequest),
   .clock                         (clock),
   .dataNumRdData                 (dataNumRdData[2:0]),
   .ddp2RdmapControl              (ddp2RdmapControl[7:0]),
   .ddp2RdmapHdrValid             (ddp2RdmapHdrValid),
   .ddp2RdmapHeader               (ddp2RdmapHeader[55:0]),
   .lastNum                       (lastNum[4:0]),
   .poolEmpty                     (poolEmpty),
   .poolFull                      (poolFull),
   .queueNumRd                    (queueNumRd),
   .queueNumRdAddr                (queueNumRdAddr[7:0]),
   .reset                         (reset),
   .rgstrPtr                      (rgstrPtr[4:0]),

   .RQReadData_o                  (RQReadData_o[31:0]),
   .RQWaitRequest_o               (RQWaitRequest_o),
   .RdDCSAddress                  (RdDCSAddress[7:0]),
   .RdDCSByteEnable               (RdDCSByteEnable[3:0]),
   .RdDCSChipSelect               (RdDCSChipSelect),
   .RdDCSRead                     (RdDCSRead),
   .RdDCSWrite                    (RdDCSWrite),
   .RdDCSWriteData                (RdDCSWriteData[31:0]),
   .SQReadData_o                  (SQReadData_o[31:0]),
   .SQWaitRequest_o               (SQWaitRequest_o),
   .WrDCSAddress                  (WrDCSAddress[7:0]),
   .WrDCSByteEnable               (WrDCSByteEnable[3:0]),
   .WrDCSChipSelect               (WrDCSChipSelect),
   .WrDCSRead                     (WrDCSRead),
   .WrDCSWrite                    (WrDCSWrite),
   .WrDCSWriteData                (WrDCSWriteData[31:0]),
   .bufRegister                   (bufRegister),
   .dataNumRd                     (dataNumRd),
   .dataNumRdAddr                 (dataNumRdAddr[7:0]),
   .queueNumRdData                (queueNumRdData[15:0]),
   .rdmap2DdpCtrl                 (rdmap2DdpCtrl[7:0]),
   .rdmap2DdpHdrValid             (rdmap2DdpHdrValid),
   .rdmap2DdpHeader               (rdmap2DdpHeader[55:0]),
   .reqInfo                       (reqInfo[55:0]),
   .reqValid                      (reqValid),
   .rgstrNum                      (rgstrNum[2:0])
);

DDP  uDDP (
   .clock                         (clock),
   .dataNumProcRd                 (dataNumRd),
   .dataNumProcRdAddr             (dataNumRdAddr[7:0]),
   .dataOut                       (dataOut[255:0]),
   .ddpPktDataOut                 (ddpPktDataOut[266:0]),
   .ddpPktFull                    (ddpPktFull),
   .ddpPktPop                     (ddpPktPop),
   .emptyArray                    (emptyArray[3:0]),
   .queueNumRdData                (queueNumRdData[15:0]),
   .rdmap2DdpCtrl                 (rdmap2DdpCtrl[7:0]),
   .rdmap2DdpHdrValid             (rdmap2DdpHdrValid),
   .rdmap2DdpHeader               (rdmap2DdpHeader[55:0]),
   .ready                         (ready),
   .reset                         (reset),

   .QN                            (QN[3:0]),
   .dataNumRdData                 (dataNumRdData[2:0]),
   .dataPop                       (dataPop),
   .ddp2RdmapControl              (ddp2RdmapControl[7:0]),
   .ddp2RdmapHdrValid             (ddp2RdmapHdrValid),
   .ddp2RdmapHeader               (ddp2RdmapHeader[55:0]),
   .ddpPktDataIn                  (ddpPktDataIn[266:0]),
   .ddpPktEmpty                   (ddpPktEmpty),
   .ddpPktPush                    (ddpPktPush),
   .push                          (push),
   .pushData                      (pushData[255:0]),
   .queueNumRd                    (queueNumRd),
   .queueNumRdAddr                (queueNumRdAddr[7:0])
);

DdpLoop  uDdpLoop (
   .clock                         (clock),
   .ddpPktDataIn                  (ddpPktDataIn[266:0]),
   .ddpPktEmpty                   (ddpPktEmpty),
   .ddpPktPush                    (ddpPktPush),
   .reset                         (reset),

   .ddpPktDataOut                 (ddpPktDataOut),
   .ddpPktFull                    (ddpPktFull),
   .ddpPktPop                     (ddpPktPop)
);

endmodule
// VWEAVE: END GENERATED
