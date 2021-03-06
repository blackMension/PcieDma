// VWEAVE: BEGIN PERL
//
// matrix off;
//
// module;
// ports;
// wires;
//
// instance "QueuePair.v" ,"uQueuePair";
// instance "DmaRequest.v","uDmaRequest";
// instance "RdmaOptr.v","uRdmaOptr";
// # instance "RdmapLoop.v","uRdmapLoop";
// instance "HeaderGen.v","uHeaderGen";
// instance "HeaderProc.v","uHeaderProc";
// # instance "Loop.v","uLoop";
// instance "PCIeArbiter.v" ,"uPcieArb";
//    connect "ArbConfChipSelect_i" ,"RQChipSelect_i";
//    connect "ArbConfWrite_i"      ,"RQWrite_i";         
//    connect "ArbConfAddress_i"    ,"RQAddress_i";       
//    connect "ArbConfWriteData_i"  ,"RQWriteData_i";     
//    connect "ArbConfByteEnable_i" ,"RQByteEnable_i";    
//    connect "ArbConfWaitRequest_o","RQWaitRequest_o";   
//    connect "ArbConfRead_i"       ,"RQRead_i";          
//    connect "ArbConfReadData_o"   ,"RQReadData_o";      
// endmodule
// VWEAVE: END PERL
// VWEAVE: BEGIN GENERATED
module Rdmap ( 
                // inputs
                ArbWaitRequest,
                QpWaitRequest,
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
                dataNumRdData,
                ddp2RdmapControl,
                ddp2RdmapHdrValid,
                ddp2RdmapHeader,
                ddp2RdmapIsSendSop,
                lastNum,
                poolEmpty,
                poolFull,
                queueNumRd,
                queueNumRdAddr,
                rdDmaDone,
                reset,
                rgstrPtr,
                wrDmaDone,

                // outputs
                ArbAddress,
                ArbByteEnable,
                ArbChipSelect,
                ArbWrite,
                ArbWriteData,
                QpAddress,
                QpByteEnable,
                QpChipSelect,
                QpWrite,
                QpWriteData,
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
                dataNumRd,
                dataNumRdAddr,
                queueNumRdData,
                rdmap2DdpCtrl,
                rdmap2DdpHdrValid,
                rdmap2DdpHeader,
                rgstrNum
);

input              ArbWaitRequest;
input              QpWaitRequest;
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
input   [2:0]      dataNumRdData;
input   [7:0]      ddp2RdmapControl;
input              ddp2RdmapHdrValid;
input   [55:0]     ddp2RdmapHeader;
input              ddp2RdmapIsSendSop;
input   [4:0]      lastNum;
input              poolEmpty;
input              poolFull;
input              queueNumRd;
input   [7:0]      queueNumRdAddr;
input              rdDmaDone;
input              reset;
input   [4:0]      rgstrPtr;
input              wrDmaDone;

output  [63:0]     ArbAddress;
output  [3:0]      ArbByteEnable;
output             ArbChipSelect;
output             ArbWrite;
output  [31:0]     ArbWriteData;
output  [63:0]     QpAddress;
output  [3:0]      QpByteEnable;
output             QpChipSelect;
output             QpWrite;
output  [31:0]     QpWriteData;
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
output             dataNumRd;
output  [7:0]      dataNumRdAddr;
output  [15:0]     queueNumRdData;
output  [7:0]      rdmap2DdpCtrl;
output             rdmap2DdpHdrValid;
output  [55:0]     rdmap2DdpHeader;
output  [2:0]      rgstrNum;


   wire [115:0]    RqData;
   wire [115:0]    RqDmaFifoData;
   wire [4:0]      RqDmaFifoDepth;
   wire            RqDmaFifoEmpty;
   wire            RqDmaFifoFull;
   wire            RqDmaFifoPop;
   wire            RqEmpty;
   wire [4:0]      RqFifoDepth;
   wire            RqFull;
   wire            RqPop;
   wire [115:0]    SqData;
   wire [115:0]    SqDmaFifoData;
   wire [4:0]      SqDmaFifoDepth;
   wire            SqDmaFifoEmpty;
   wire            SqDmaFifoFull;
   wire            SqDmaFifoPop;
   wire            SqEmpty;
   wire            SqFifoDepth;
   wire            SqFull;
   wire            SqPop;
   wire [27:0]     ackFifoDataIn;
   wire            ackFifoFull;
   wire            ackFifoPush;
   wire            infoValid;
   wire [7:0]      offloadFifoDataIn;
   wire            offloadFifoFull;
   wire            offloadFifoPush;
   wire [15:0]     rdmaControl;
   wire [51:0]     rdmaWR;
   wire [55:0]     reqInfo;
   wire            reqValid;
   wire [7:0]      wrDoneFifoDataIn;
   wire            wrDoneFifoFull;
   wire            wrDoneFifoPush;

QueuePair  uQueuePair (
   .QpWaitRequest                 (QpWaitRequest),
   .RQAddress_i                   (RQAddress_i[7:0]),
   .RQByteEnable_i                (RQByteEnable_i[3:0]),
   .RQChipSelect_i                (RQChipSelect_i),
   .RQRead_i                      (RQRead_i),
   .RQWriteData_i                 (RQWriteData_i[31:0]),
   .RQWrite_i                     (RQWrite_i),
   .RqPop                         (RqPop),
   .SQAddress_i                   (SQAddress_i[7:0]),
   .SQByteEnable_i                (SQByteEnable_i[3:0]),
   .SQChipSelect_i                (SQChipSelect_i),
   .SQRead_i                      (SQRead_i),
   .SQWriteData_i                 (SQWriteData_i[31:0]),
   .SQWrite_i                     (SQWrite_i),
   .SqPop                         (SqPop),
   .clock                         (clock),
   .reset                         (reset),

   .QpAddress                     (QpAddress[63:0]),
   .QpByteEnable                  (QpByteEnable[3:0]),
   .QpChipSelect                  (QpChipSelect),
   .QpWrite                       (QpWrite),
   .QpWriteData                   (QpWriteData[31:0]),
   .RQReadData_o                  (RQReadData_o[31:0]),
   .RQWaitRequest_o               (RQWaitRequest_o),
   .RqData                        (RqData[115:0]),
   .RqEmpty                       (RqEmpty),
   .RqFifoDepth                   (RqFifoDepth[4:0]),
   .RqFull                        (RqFull),
   .SQReadData_o                  (SQReadData_o[31:0]),
   .SQWaitRequest_o               (SQWaitRequest_o),
   .SqData                        (SqData[115:0]),
   .SqEmpty                       (SqEmpty),
   .SqFifoDepth                   (SqFifoDepth),
   .SqFull                        (SqFull)
);

DmaRequest  uDmaRequest (
   .RdDCSReadData                 (RdDCSReadData[31:0]),
   .RdDCSWaitRequest              (RdDCSWaitRequest),
   .RqDmaFifoData                 (RqDmaFifoData[115:0]),
   .RqDmaFifoDepth                (RqDmaFifoDepth),
   .RqDmaFifoEmpty                (RqDmaFifoEmpty),
   .RqDmaFifoFull                 (RqDmaFifoFull),
   .SqDmaFifoData                 (SqDmaFifoData[115:0]),
   .SqDmaFifoDepth                (SqDmaFifoDepth),
   .SqDmaFifoEmpty                (SqDmaFifoEmpty),
   .SqDmaFifoFull                 (SqDmaFifoFull),
   .WrDCSReadData                 (WrDCSReadData[31:0]),
   .WrDCSWaitRequest              (WrDCSWaitRequest),
   .clock                         (clock),
   .reset                         (reset),

   .RdDCSAddress                  (RdDCSAddress[7:0]),
   .RdDCSByteEnable               (RdDCSByteEnable[3:0]),
   .RdDCSChipSelect               (RdDCSChipSelect),
   .RdDCSRead                     (RdDCSRead),
   .RdDCSWrite                    (RdDCSWrite),
   .RdDCSWriteData                (RdDCSWriteData[31:0]),
   .RqDmaFifoPop                  (RqDmaFifoPop),
   .SqDmaFifoPop                  (SqDmaFifoPop),
   .WrDCSAddress                  (WrDCSAddress[7:0]),
   .WrDCSByteEnable               (WrDCSByteEnable[3:0]),
   .WrDCSChipSelect               (WrDCSChipSelect),
   .WrDCSRead                     (WrDCSRead),
   .WrDCSWrite                    (WrDCSWrite),
   .WrDCSWriteData                (WrDCSWriteData[31:0])
);

RdmaOptr  uRdmaOptr (
   .RqData                        (RqData[115:0]),
   .RqDmaFifoPop                  (RqDmaFifoPop),
   .RqEmpty                       (RqEmpty),
   .RqFifoDepth                   (RqFifoDepth),
   .RqFull                        (RqFull),
   .SqData                        (SqData[115:0]),
   .SqDmaFifoPop                  (SqDmaFifoPop),
   .SqEmpty                       (SqEmpty),
   .SqFifoDepth                   (SqFifoDepth),
   .SqFull                        (SqFull),
   .ackFifoDataIn                 (ackFifoDataIn[27:0]),
   .ackFifoPush                   (ackFifoPush),
   .clock                         (clock),
   .offloadFifoDataIn             (offloadFifoDataIn[7:0]),
   .offloadFifoPush               (offloadFifoPush),
   .rdDmaDone                     (rdDmaDone),
   .reset                         (reset),
   .wrDmaDone                     (wrDmaDone),
   .wrDoneFifoDataIn              (wrDoneFifoDataIn[7:0]),
   .wrDoneFifoPush                (wrDoneFifoPush),

   .RqDmaFifoData                 (RqDmaFifoData[115:0]),
   .RqDmaFifoDepth                (RqDmaFifoDepth[4:0]),
   .RqDmaFifoEmpty                (RqDmaFifoEmpty),
   .RqDmaFifoFull                 (RqDmaFifoFull),
   .RqPop                         (RqPop),
   .SqDmaFifoData                 (SqDmaFifoData[115:0]),
   .SqDmaFifoDepth                (SqDmaFifoDepth[4:0]),
   .SqDmaFifoEmpty                (SqDmaFifoEmpty),
   .SqDmaFifoFull                 (SqDmaFifoFull),
   .SqPop                         (SqPop),
   .ackFifoFull                   (ackFifoFull),
   .infoValid                     (infoValid),
   .offloadFifoFull               (offloadFifoFull),
   .rdmaControl                   (rdmaControl[15:0]),
   .rdmaWR                        (rdmaWR[51:0]),
   .wrDoneFifoFull                (wrDoneFifoFull)
);

HeaderGen  uHeaderGen (
   .clock                         (clock),
   .infoValid                     (infoValid),
   .lastNum                       (lastNum[4:0]),
   .poolEmpty                     (poolEmpty),
   .poolFull                      (poolFull),
   .rdmaControl                   (rdmaControl[15:0]),
   .rdmaWR                        (rdmaWR[51:0]),
   .reset                         (reset),
   .rgstrPtr                      (rgstrPtr[4:0]),

   .bufRegister                   (bufRegister),
   .rdmap2DdpCtrl                 (rdmap2DdpCtrl[7:0]),
   .rdmap2DdpHdrValid             (rdmap2DdpHdrValid),
   .rdmap2DdpHeader               (rdmap2DdpHeader[55:0]),
   .rgstrNum                      (rgstrNum[2:0])
);

HeaderProc  uHeaderProc (
   .ackFifoFull                   (ackFifoFull),
   .clock                         (clock),
   .dataNumRdData                 (dataNumRdData[2:0]),
   .ddp2RdmapControl              (ddp2RdmapControl[7:0]),
   .ddp2RdmapHdrValid             (ddp2RdmapHdrValid),
   .ddp2RdmapHeader               (ddp2RdmapHeader[55:0]),
   .ddp2RdmapIsSendSop            (ddp2RdmapIsSendSop),
   .offloadFifoFull               (offloadFifoFull),
   .queueNumRd                    (queueNumRd),
   .queueNumRdAddr                (queueNumRdAddr[7:0]),
   .reset                         (reset),
   .wrDoneFifoFull                (wrDoneFifoFull),

   .ackFifoDataIn                 (ackFifoDataIn[27:0]),
   .ackFifoPush                   (ackFifoPush),
   .dataNumRd                     (dataNumRd),
   .dataNumRdAddr                 (dataNumRdAddr[7:0]),
   .offloadFifoDataIn             (offloadFifoDataIn[7:0]),
   .offloadFifoPush               (offloadFifoPush),
   .queueNumRdData                (queueNumRdData[15:0]),
   .reqInfo                       (reqInfo[55:0]),
   .reqValid                      (reqValid),
   .wrDoneFifoDataIn              (wrDoneFifoDataIn[7:0]),
   .wrDoneFifoPush                (wrDoneFifoPush)
);

PCIeArbiter  uPcieArb (
   .ArbConfAddress_i              (RQAddress_i[7:0]),
   .ArbConfByteEnable_i           (RQByteEnable_i[3:0]),
   .ArbConfChipSelect_i           (RQChipSelect_i),
   .ArbConfRead_i                 (RQRead_i),
   .ArbConfWriteData_i            (RQWriteData_i[31:0]),
   .ArbConfWrite_i                (RQWrite_i),
   .ArbWaitRequest                (ArbWaitRequest),
   .clock                         (clock),
   .reqInfo                       (reqInfo[55:0]),
   .reqValid                      (reqValid),
   .reset                         (reset),

   .ArbAddress                    (ArbAddress[63:0]),
   .ArbByteEnable                 (ArbByteEnable[3:0]),
   .ArbChipSelect                 (ArbChipSelect),
   .ArbConfReadData_o             (RQReadData_o[31:0]),
   .ArbConfWaitRequest_o          (RQWaitRequest_o),
   .ArbWrite                      (ArbWrite),
   .ArbWriteData                  (ArbWriteData[31:0])
);

endmodule
// VWEAVE: END GENERATED
