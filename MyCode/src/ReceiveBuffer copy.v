// 32 data fifo
module ReceiveBuffer( 
    /*AUTOARG*/
   // Outputs
   readdata, rgstrPtr, lastNum, poolFull, poolEmpty,
   // Inputs
   clock, reset, address, clken, chipselect, write, writedata,
   byteenable, QN, push, pushData, bufRegister, rgstrNum, bufRelease,
   freshMapping
   );
// global
input clock;
input reset;
// To PCIe (data out)
input  [9:0]    address;
input           clken;
input           chipselect;
input           write;
output [255:0]  readdata;
input  [255:0]  writedata;
input  [31:0]   byteenable;
// To Rdma (data in)
input  [3:0]    QN;
input           push;
input  [255:0]  pushData;
// buffer register
input           bufRegister;
input  [2:0]    rgstrNum;
input           bufRelease;
output [5:0]    rgstrPtr;
output [5:0]    lastNum;
output          poolFull;
output          poolEmpty;
// fresh
input           freshMapping;

wire   [5:0]    registerPtrInt;
wire   [5:0]    releasePtrInt;
reg    [5:0]    registerPtr;
reg    [5:0]    releasePtr;

reg    [5:0]    nextLastNum;
reg    [5:0]    lastNumReg;

//=============================
//      Register & Release
assign poolFull  = (releasePtr[4:0] == registerPtr[4:0]) & (registerPtr[5] ^ releasePtr[5]);
assign poolEmpty = (releasePtr == registerPtr);
assign registerPtrInt = bufRegister ? registerPtr + rgstrNum : registerPtr;
assign releasePtrInt =  bufRelease ? releasePtr + 5'd1 : releasePtr;
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        registerPtr <= 5'd0;
        releasePtr  <= 5'd0;
    end
    else begin
        registerPtr <= registerPtrInt;
        releasePtr  <= releasePtrInt;
    end
end

always @(*) begin
    case({bufRelease,bufRegister})
        2'b00 : nextLastNum = lastNumReg;
        2'b01 : nextLastNum = lastNumReg - rgstrNum;
        2'b10 : nextLastNum = lastNumReg + 6'd1;
        2'b11 : nextLastNum = lastNumReg - rgstrNum + 6'd1;
    endcase
end
always@(posedge clock or negedge reset) begin
    if(!reset) begin
        lastNumReg <= 6'd32;
    end
    else begin
        lastNumReg <= nextLastNum;
    end
end
assign lastNum   = lastNumReg; 
//==================================
//     Mapping Address
wire [4:0]   basePtrInt;
reg  [4:0]   basePtr;
wire [4:0]   realPtr;

assign realPtr = basePtr + address[7:3];
assign basePtrInt = freshMapping ? releasePtr : basePtr;
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        basePtr <= 5'd0;
    end
    else begin
        basePtr <= basePtrInt;
    end
end
//==================================
//     Data Path
genvar i;
wire [255:0] fifoData[32];
wire [31:0]  pushArray;
wire [31:0]  popArray;
wire [31:0]  emptyArray;
wire [31:0]  fullArray;
reg  [255:0] dataReg;
assign readdata = dataReg;
always @(posedge clock) begin
    if(chipselect & ~write) begin
        dataReg <= fifoData[realPtr];
    end
end

for(i=0;i<32;i=i+1) begin
    assign pushArray[i] = (QN == i) & ~fullArray[i] & push;
    assign popArray[i]  = (realPtr == i) & ~emptyArray[i] & chipselect & ~write;
    GenRamFifo8D256W uDataBuffer( 
        // Outputs;
        .dataOut                            (fifoData[i]),
        .full                               (fullArray[i]),
        .empty                              (emptyArray[i]),
        .almostFullFlag                     (),
        .almostEmptyFlag                    (),
        .fifoDepth                          (),
        .overrun                            (),
        .underrun                           (),
        .cpuReadAck                         (),
        .cpuReadData                        (),
        // Inputs
        .clockCore                          (clock),
        .resetCore                          (reset),
        .push                               (pushArray[i]),
        .dataIn                             (pushData),
        .pop                                (popArray[i]),
        .almostFullThreshold                (4'd8),
        .almostEmptyThreshold               (4'd0),
        .cpuReadValid                       (1'd0),
        .cpuReadAddress                     (3'd0)
        );
    end
endmodule // ReceiveBuffer
