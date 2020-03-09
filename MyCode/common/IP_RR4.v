module IP_RR4 (/*autoarg*/
    //Inputs
    clock, reset, holdArbitration, req, 

    //Outputs
    grant
);
/////////////////////////////////////////////////////////////////////////////
// input/output declaration
/////////////////////////////////////////////////////////////////////////////
 
input               clock;
input               reset;
 
input               holdArbitration;
 
input    [3:0]      req;
  
output   [3:0]      grant;

/////////////////////////////////////////////////////////////////////////////
// input/output wire/reg declaration
/////////////////////////////////////////////////////////////////////////////
reg      [3:0]      grant;

/////////////////////////////////////////////////////////////////////////////
// internal signal wire/reg declaration
/////////////////////////////////////////////////////////////////////////////
wire                reqValid0;
wire                reqValid1;
wire                reqValid2;
wire                reqValid3;

reg     [3:0]       previousGrant;

/////////////////////////////////////////////////////////////////////////////
assign reqValid0       = req[0] &&  !holdArbitration;
assign reqValid1       = req[1] &&  !holdArbitration;
assign reqValid2       = req[2] &&  !holdArbitration;
assign reqValid3       = req[3] &&  !holdArbitration;
                       
/////////////////////////////////////////////////////////////////////////////
always @(*) begin
   case (previousGrant)
      4'b1000 : begin
         casez ({reqValid2, reqValid1, reqValid0, reqValid3})
           4'b1???     : grant = 4'b0100;
           4'b01??     : grant = 4'b0010;
           4'b001?     : grant = 4'b0001;
           4'b0001     : grant = 4'b1000;
           default     : grant = 4'b0000;
         endcase 
      end
      
      4'b0100 : begin
         casez ({reqValid1, reqValid0, reqValid3, reqValid2})
           4'b1???     : grant = 4'b0010;
           4'b01??     : grant = 4'b0001;
           4'b001?     : grant = 4'b1000;
           4'b0001     : grant = 4'b0100;
           default     : grant = 4'b0000;
         endcase 
      end
      
      4'b0010 : begin
         casez ({reqValid0, reqValid3, reqValid2, reqValid1})
           4'b1???     : grant = 4'b0001;
           4'b01??     : grant = 4'b1000;
           4'b001?     : grant = 4'b0100;
           4'b0001     : grant = 4'b0010;
           default     : grant = 4'b0000;
         endcase
      end
      
      default : begin
         casez ({reqValid3, reqValid2, reqValid1, reqValid0})
           4'b1???     : grant = 4'b1000;
           4'b01??     : grant = 4'b0100;
           4'b001?     : grant = 4'b0010;
           4'b0001     : grant = 4'b0001;
           default     : grant = 4'b0000;
         endcase 
      end
   endcase
end

always @(posedge clock or negedge reset) begin
   if (!reset) begin
      previousGrant <= 4'b0000;
   end
   else begin
      if (grant != 4'b0000) begin
         previousGrant <= grant;
      end
   end
end

endmodule















