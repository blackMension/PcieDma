module IP_ResetSync ( 
   // inputs
   clock,
   resetIn,

   // outputs
   resetOut
);
// synopsys template

input	resetIn;
input	clock;

output	resetOut;

wire    resetIn;
wire	clock;

reg     resetInt;
reg	resetOut;

always @ (posedge clock) begin
   resetInt  <=  resetIn;
   resetOut  <=  resetInt;
end

endmodule // IP_ResetSync
