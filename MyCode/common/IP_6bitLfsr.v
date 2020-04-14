//===================================================
//6bit LFSR
//Feedback polynomial x^6 + x^5 + 1
//===================================================
module IP_6bitLfsr(clockCore,
               resetCore,
               trigger,
               lfsr
);
   // synopsys template

input clockCore, resetCore;
input trigger;

output [5:0] lfsr;

reg [5:0] lfsr;

wire lfsrChg = lfsr[5]^lfsr[4];

always @(posedge clockCore or negedge resetCore)
   if(!resetCore)
    lfsr <= 6'b11_1111;
   else begin
    if(trigger)
        lfsr <= {lfsr[4:0],lfsrChg};
   end 

endmodule // IP_6bitLfsr
