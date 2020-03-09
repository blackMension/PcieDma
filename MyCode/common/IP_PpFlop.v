/*
  For design with gen with scripts!
*/

module IP_PpFlop(/*autoarg*/
   // Outputs
   dataOutValid, data0Out, data1Out,
   // Inputs
   clockCore, resetCore, dataInValid, data0In, data1In
   );

parameter  DATA0WITH = 32;
parameter  DATA1WITH = 32;

input                 clockCore;
input                 resetCore;
input                 dataInValid;
input [DATA0WITH-1:0] data0In;
input [DATA1WITH-1:0] data1In;

output                dataOutValid;
output [DATA0WITH-1:0] data0Out;
output [DATA1WITH-1:0] data1Out;
reg                   dataOutValid;
reg [DATA0WITH-1:0]    data0Out;
reg [DATA1WITH-1:0]    data1Out;

always @(posedge clockCore or negedge resetCore)begin
  if(!resetCore)begin
    dataOutValid <= 1'd0;
  end 
  else begin 
    dataOutValid <= dataInValid;
  end 
end 

always @(posedge clockCore)begin
  data0Out <= data0In;
  data1Out <= data1In;
end 



endmodule
