module  IP_SyncFlop (
   // Outputs
   dataOut, 
   // Inputs
   clockOut, dataIn
);
   // synopsys template
   parameter           WIDTH = 1;
   
   input 	       clockOut;
   input [WIDTH-1:0]   dataIn;
   
   output [WIDTH-1:0]  dataOut;
   
   reg [WIDTH-1:0]     sync1Flop;
   reg [WIDTH-1:0]     dataOut;
   
   always @(posedge clockOut) begin
      sync1Flop <=  dataIn;
      dataOut   <=  sync1Flop;
   end
   
endmodule // IP_SyncFlop
