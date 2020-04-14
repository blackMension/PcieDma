module IP_8bitLfsr(clockCore,
               resetCore,
               trigger,
               lfsr
);
   // synopsys template

input clockCore, resetCore;
input trigger;

output [7:0] lfsr;

reg [7:0] lfsr;

wire lfsrChg = lfsr[7]^lfsr[5]^lfsr[4]^lfsr[3];

always @(posedge clockCore or negedge resetCore)
   if(!resetCore)
    lfsr <= 8'hff;
   else begin
    if(trigger)
        lfsr <= {lfsr[6:0],lfsrChg};
   end 

endmodule // IP_8bitLfsr
