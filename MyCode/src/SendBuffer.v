module SendBuffer(
    /*AUTOARG*/
   // Outputs
   readdata, dataOut, ready, emptyArray,
   // Inputs
   clock, reset, address, clken, chipselect, write, writedata,
   byteenable, dataPop
   );
// global
input clock;
input reset;
// To PCIe (data In)
input  [9:0]    address;
input           clken;
input           chipselect;
input           write;
output [255:0]  readdata;
input  [255:0]  writedata;
input  [31:0]   byteenable;
// To Rdma (data out)
output [255:0]  dataOut;
input           dataPop;
output          ready;
output [3:0]    emptyArray;

wire [3:0]   pushArray;
wire [3:0]   popArray;
wire [3:0]   fullArray;
wire [255:0] fifoData[4];
wire [255:0] fifoDataBackUp;
wire         push;
wire         pop;
wire         full;
wire         empty;
wire [255:0] pushData;
wire [1:0]   realPtr;
reg set;
reg clear;
assign ready    = ~ (&emptyArray);
assign dataOut  = ~emptyArray[0] ?  fifoData[0] :
                  ~emptyArray[1] ?  fifoData[1] : (emptyArray[1] & set & ~empty) ? fifoDataBackUp :
                  ~emptyArray[2] ?  fifoData[2] : (emptyArray[2] & set & ~empty) ? fifoDataBackUp :
                  fifoData[3];
assign pushData = writedata;
// assign realPtr[1]  = emptyArray[0] & emptyArray[1];
// assign realPtr[0]  = emptyArray[0] & (~ (emptyArray[1] & (emptyArray[2] || ~emptyArray[3])));
assign realPtr = ~ emptyArray[0] ? 2'd0 :
                 (~ emptyArray[1] | (emptyArray[1] & set & ~empty)) ? 2'd1 :
                 (~ emptyArray[2] | (emptyArray[2] & set & ~empty)) ? 2'd2 :
                 ~ emptyArray[3] ? 2'd3 : 2'd0;
genvar i;
for (i=0;i<4;i=i+1) begin : data_buffer
assign pushArray[i] = chipselect & write & (address[4:3] == i) & ~fullArray[i];
assign popArray[i]  = dataPop & (realPtr == i) & ~emptyArray[i];

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

assign push = chipselect & write & (address[4:3]  == 2'd0) & ~full;
assign pop  = dataPop & (realPtr[0]^realPtr[1]) & ~empty;
GenRamFifo8D256W uBackUpDataBuffer( 
    // Outputs;
    .dataOut                            (fifoDataBackUp),
    .full                               (full),
    .empty                              (empty),
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
    .push                               (push),
    .dataIn                             (pushData),
    .pop                                (pop),
    .almostFullThreshold                (4'd8),
    .almostEmptyThreshold               (4'd0),
    .cpuReadValid                       (1'd0),
    .cpuReadAddress                     (3'd0)
    );
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        set <= 1'd0;
    end
    else begin
        if (emptyArray[0] & emptyArray[3]&(~emptyArray[1] | ~emptyArray[2])) begin
            set <= 1'd1;
        end
        else if(clear) begin
            set <= 1'd0;
        end
    end
end
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        clear <= 1'd0;
    end
    else begin
        if(emptyArray == 4'hf) clear <= 1'd1;
        else clear <= 1'd0;
    end
end
endmodule // SendBuffer
