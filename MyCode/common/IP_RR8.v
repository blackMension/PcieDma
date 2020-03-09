module IP_RR8(
   // Inputs
   clock, 
   reset, 
   holdArbitration, 
   req,
   
   // Outputs
   grant
);
/////////////////////////////////////////////////////////////////////////////
// input/output declaration
/////////////////////////////////////////////////////////////////////////////
 
input             clock;
input             reset;
 
input             holdArbitration;
 
input    [7:0]    req;
  
output   [7:0]    grant;

/////////////////////////////////////////////////////////////////////////////
// input/output wire/reg declaration
/////////////////////////////////////////////////////////////////////////////

wire              clock;
wire              reset;
 
wire              holdArbitration;
 
wire  [7:0]       req;
  
reg   [7:0]       grant;

/////////////////////////////////////////////////////////////////////////////
// internal signal wire/reg declaration
/////////////////////////////////////////////////////////////////////////////

wire              reqValid0;
wire              reqValid1;
wire              reqValid2;
wire              reqValid3;
wire              reqValid4;
wire              reqValid5;
wire              reqValid6;
wire              reqValid7;

reg    [7:0]      previousGrant;

/////////////////////////////////////////////////////////////////////////////

assign reqValid0 = req[0] && !holdArbitration;
assign reqValid1 = req[1] && !holdArbitration;
assign reqValid2 = req[2] && !holdArbitration;
assign reqValid3 = req[3] && !holdArbitration;
assign reqValid4 = req[4] && !holdArbitration;
assign reqValid5 = req[5] && !holdArbitration;
assign reqValid6 = req[6] && !holdArbitration;
assign reqValid7 = req[7] && !holdArbitration;
                       
/////////////////////////////////////////////////////////////////////////////

always @(*) begin
   case (previousGrant)
      8'b1000_0000 : begin
         casez ({reqValid6, reqValid5, reqValid4, reqValid3,reqValid2, reqValid1, reqValid0, reqValid7})
           8'b1???_????  : grant = 8'b0100_0000;
           8'b01??_????  : grant = 8'b0010_0000;
           8'b001?_????  : grant = 8'b0001_0000;
           8'b0001_????  : grant = 8'b0000_1000;
           8'b0000_1???  : grant = 8'b0000_0100;
           8'b0000_01??  : grant = 8'b0000_0010;
           8'b0000_001?  : grant = 8'b0000_0001;
           8'b0000_0001  : grant = 8'b1000_0000;
           default : grant = 8'b0000_0000;
         endcase 
      end
      
      8'b0100_0000 : begin
         casez ({reqValid5, reqValid4, reqValid3,reqValid2, reqValid1, reqValid0, reqValid7, reqValid6})
           8'b1???_????  : grant = 8'b0010_0000;
           8'b01??_????  : grant = 8'b0001_0000;
           8'b001?_????  : grant = 8'b0000_1000;
           8'b0001_????  : grant = 8'b0000_0100;
           8'b0000_1???  : grant = 8'b0000_0010;
           8'b0000_01??  : grant = 8'b0000_0001;
           8'b0000_001?  : grant = 8'b1000_0000;
           8'b0000_0001  : grant = 8'b0100_0000;
           default : grant = 8'b0000_0000;
         endcase 
      end
      
      8'b0010_0000 : begin
         casez ({reqValid4, reqValid3,reqValid2, reqValid1, reqValid0, reqValid7, reqValid6, reqValid5})
           8'b1???_????  : grant = 8'b0001_0000;
           8'b01??_????  : grant = 8'b0000_1000;
           8'b001?_????  : grant = 8'b0000_0100;
           8'b0001_????  : grant = 8'b0000_0010;
           8'b0000_1???  : grant = 8'b0000_0001;
           8'b0000_01??  : grant = 8'b1000_0000;
           8'b0000_001?  : grant = 8'b0100_0000;
           8'b0000_0001  : grant = 8'b0010_0000;
           default : grant = 8'b0000_0000;
         endcase 
      end
      
      8'b0001_0000 : begin
         casez ({reqValid3,reqValid2, reqValid1, reqValid0, reqValid7, reqValid6, reqValid5, reqValid4})
           8'b1???_????  : grant = 8'b0000_1000;
           8'b01??_????  : grant = 8'b0000_0100;
           8'b001?_????  : grant = 8'b0000_0010;
           8'b0001_????  : grant = 8'b0000_0001;
           8'b0000_1???  : grant = 8'b1000_0000;
           8'b0000_01??  : grant = 8'b0100_0000;
           8'b0000_001?  : grant = 8'b0010_0000;
           8'b0000_0001  : grant = 8'b0001_0000;
           default : grant = 8'b0000_0000;
         endcase 
      end
      
      8'b0000_1000 : begin
         casez ({reqValid2, reqValid1, reqValid0, reqValid7, reqValid6, reqValid5, reqValid4, reqValid3})
           8'b1???_????  : grant = 8'b0000_0100;
           8'b01??_????  : grant = 8'b0000_0010;
           8'b001?_????  : grant = 8'b0000_0001;
           8'b0001_????  : grant = 8'b1000_0000;
           8'b0000_1???  : grant = 8'b0100_0000;
           8'b0000_01??  : grant = 8'b0010_0000;
           8'b0000_001?  : grant = 8'b0001_0000;
           8'b0000_0001  : grant = 8'b0000_1000;
           default : grant = 8'b0000_0000;
         endcase 
      end
      
      8'b0000_0100 : begin
         casez ({reqValid1, reqValid0, reqValid7, reqValid6, reqValid5, reqValid4, reqValid3,reqValid2})
           8'b1???_????  : grant = 8'b0000_0010;
           8'b01??_????  : grant = 8'b0000_0001;
           8'b001?_????  : grant = 8'b1000_0000;
           8'b0001_????  : grant = 8'b0100_0000;
           8'b0000_1???  : grant = 8'b0010_0000;
           8'b0000_01??  : grant = 8'b0001_0000;
           8'b0000_001?  : grant = 8'b0000_1000;
           8'b0000_0001  : grant = 8'b0000_0100;
           default : grant = 8'b0000_0000;
         endcase 
      end
      
      8'b0000_0010 : begin
         casez ({reqValid0, reqValid7, reqValid6, reqValid5, reqValid4, reqValid3,reqValid2, reqValid1})
           8'b1???_????  : grant = 8'b0000_0001;
           8'b01??_????  : grant = 8'b1000_0000;
           8'b001?_????  : grant = 8'b0100_0000;
           8'b0001_????  : grant = 8'b0010_0000;
           8'b0000_1???  : grant = 8'b0001_0000;
           8'b0000_01??  : grant = 8'b0000_1000;
           8'b0000_001?  : grant = 8'b0000_0100;
           8'b0000_0001  : grant = 8'b0000_0010;
           default : grant = 8'b0000_0000;
         endcase 
      end
      
      8'b0000_0001 : begin
         casez ({reqValid7, reqValid6, reqValid5, reqValid4, reqValid3,reqValid2, reqValid1, reqValid0})
           8'b1???_????  : grant = 8'b1000_0000;
           8'b01??_????  : grant = 8'b0100_0000;
           8'b001?_????  : grant = 8'b0010_0000;
           8'b0001_????  : grant = 8'b0001_0000;
           8'b0000_1???  : grant = 8'b0000_1000;
           8'b0000_01??  : grant = 8'b0000_0100;
           8'b0000_001?  : grant = 8'b0000_0010;
           8'b0000_0001  : grant = 8'b0000_0001;
           default : grant = 8'b0000_0000;
         endcase 
      end
      
      default : begin
         casez ({reqValid7, reqValid6, reqValid5, reqValid4, reqValid3,reqValid2, reqValid1, reqValid0})
           8'b1???_????  : grant = 8'b1000_0000;
           8'b01??_????  : grant = 8'b0100_0000;
           8'b001?_????  : grant = 8'b0010_0000;
           8'b0001_????  : grant = 8'b0001_0000;
           8'b0000_1???  : grant = 8'b0000_1000;
           8'b0000_01??  : grant = 8'b0000_0100;
           8'b0000_001?  : grant = 8'b0000_0010;
           8'b0000_0001  : grant = 8'b0000_0001;
           default : grant = 8'b0000_0000;
         endcase 
      end
   endcase
end

always @(posedge clock or negedge reset) begin
   if (!reset) begin
      previousGrant   <= 8'b0000_0000;
   end
   else begin
      if (grant != 8'b0000_0000) begin
         previousGrant <= grant;
      end
   end
end

endmodule















