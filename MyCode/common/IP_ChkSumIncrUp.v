// RFC 1624: Incremental Internet Checksum
// HC  - old checksum in header
// HC' - new checksum in header
// m   - old value of a 16-bit field
// m'  - new value of a 16-bit field
// HC' = ~(~HC + ~m + m')
module IP_ChkSumIncrUp(/*AUTOARG*/
   // Outputs
   newChkSum,
   // Inputs
   oldChkSum, oldField, newField
   );

input [15:0]    oldChkSum;
input [15:0]    oldField;
input [15:0]    newField;

output [15:0]   newChkSum;

//--------------------------------
wire [15:0]     oldChkSumInv;
wire [15:0]     oldFieldInv;
wire [31:0]     twoSum;
wire [16:0]     oneSum;
wire [15:0]     finalSum;

assign  oldChkSumInv = ~oldChkSum;
assign  oldFieldInv  = ~oldField;

// DW02_sum #(3,32) uTwoSum(.INPUT({
//                          16'd0,oldChkSumInv,
//                          16'd0,oldFieldInv,
//                          16'd0,newField}),
//                          .SUM(twoSum[31:0]));
// DW02_sum #(2,17) uOneSum0(.INPUT({1'b0,twoSum[15:0],1'b0,twoSum[31:16]}),.SUM(oneSum[16:0]));
// DW02_sum #(2,16) uOneSum1(.INPUT({oneSum[15:0],15'b0,oneSum[16]}),.SUM(finalSum[15:0]));

assign twoSum   = {16'd0,oldChkSumInv} + {16'd0,oldFieldInv} + {16'd0,newField};
assign oneSum   = {1'b0,twoSum[15:0]} + {1'b0,twoSum[31:16]};
assign finalSum = oneSum[15:0] + {15'b0,oneSum[16]};

wire [15:0]  newChkSum = ~finalSum;

endmodule

