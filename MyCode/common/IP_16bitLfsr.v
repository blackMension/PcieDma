module IP_16bitLfsr(clockCore,
               resetCore,
               trigger,
               lfsr
);
   // synopsys template

input clockCore, resetCore;
input trigger;

output [15:0] lfsr;

reg [15:0] lfsr;

wire lfsrChg = lfsr[15]^lfsr[13]^lfsr[12]^lfsr[10];

always @(posedge clockCore or negedge resetCore)
   if(!resetCore)
    lfsr <= 16'hffff;
   else begin
    if(trigger)
        lfsr <= {lfsr[14:0],lfsrChg};
   end 

endmodule // IP_8bitLfsr
