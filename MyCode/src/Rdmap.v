// VWEAVE: BEGIN PERL
//
// matrix off;
//
// module;
// ports;
// wires;
//
// instance "QueuePair.v" ,"uQueuePair";
// instance "RequestTraffic.v","uRequestTraffic";
// endmodule
// VWEAVE: END PERL
// VWEAVE: BEGIN GENERATED
module Rdmap ( 
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
                reset,

                // outputs
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
                WrDCSWriteData
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
input              reset;

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


   wire [111:0]    RqData;
   wire            RqEmpty;
   wire            RqFifoDepth;
   wire            RqPop;
   wire            Rqfull;
   wire [111:0]    SqData;
   wire            SqEmpty;
   wire            SqFifoDepth;
   wire            SqPop;
   wire            Sqfull;

QueuePair  uQueuePair (
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

   .RQReadData_o                  (RQReadData_o[31:0]),
   .RQWaitRequest_o               (RQWaitRequest_o),
   .RqData                        (RqData[111:0]),
   .RqEmpty                       (RqEmpty),
   .RqFifoDepth                   (RqFifoDepth),
   .Rqfull                        (Rqfull),
   .SQReadData_o                  (SQReadData_o[31:0]),
   .SQWaitRequest_o               (SQWaitRequest_o),
   .SqData                        (SqData[111:0]),
   .SqEmpty                       (SqEmpty),
   .SqFifoDepth                   (SqFifoDepth),
   .Sqfull                        (Sqfull)
);

RequestTraffic  uRequestTraffic (
   .RdDCSReadData                 (RdDCSReadData[31:0]),
   .RdDCSWaitRequest              (RdDCSWaitRequest),
   .RqData                        (RqData[111:0]),
   .RqEmpty                       (RqEmpty),
   .RqFifoDepth                   (RqFifoDepth),
   .Rqfull                        (Rqfull),
   .SqData                        (SqData[111:0]),
   .SqEmpty                       (SqEmpty),
   .SqFifoDepth                   (SqFifoDepth),
   .Sqfull                        (Sqfull),
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
   .RqPop                         (RqPop),
   .SqPop                         (SqPop),
   .WrDCSAddress                  (WrDCSAddress[7:0]),
   .WrDCSByteEnable               (WrDCSByteEnable[3:0]),
   .WrDCSChipSelect               (WrDCSChipSelect),
   .WrDCSRead                     (WrDCSRead),
   .WrDCSWrite                    (WrDCSWrite),
   .WrDCSWriteData                (WrDCSWriteData[31:0])
);

endmodule
// VWEAVE: END GENERATED
