module IP_Wrr8
   (
   // Inputs
   clock, 
   reset, 
   initialCredit0, 
   initialCredit1, 
   initialCredit2, 
   initialCredit3, 
   initialCredit4,    
   initialCredit5 ,       
   initialCredit6 ,       
   initialCredit7 ,       
   holdArbitration, 
   req,
   
   // Outputs
   grant
   );

// synopsys template
parameter    CREDIT_WIDTH        = 4;

/////////////////////////////////////////////////////////////////////////////
// input/output declaration
/////////////////////////////////////////////////////////////////////////////
 
input                                 clock;
input                                 reset;
 
input      [CREDIT_WIDTH-1:0]         initialCredit0;
input      [CREDIT_WIDTH-1:0]         initialCredit1;
input      [CREDIT_WIDTH-1:0]         initialCredit2;
input      [CREDIT_WIDTH-1:0]         initialCredit3;
input      [CREDIT_WIDTH-1:0]         initialCredit4;
input      [CREDIT_WIDTH-1:0]         initialCredit5;
input      [CREDIT_WIDTH-1:0]         initialCredit6;
input      [CREDIT_WIDTH-1:0]         initialCredit7;

input                                 holdArbitration;
 
input    [7:0]                        req;
  
output   [7:0]                        grant;

/////////////////////////////////////////////////////////////////////////////
// input/output wire/reg declaration
/////////////////////////////////////////////////////////////////////////////

wire                                 clock;
wire                                 reset;
 
wire      [CREDIT_WIDTH-1:0]         initialCredit0;
wire      [CREDIT_WIDTH-1:0]         initialCredit1;
wire      [CREDIT_WIDTH-1:0]         initialCredit2;
wire      [CREDIT_WIDTH-1:0]         initialCredit3;
wire      [CREDIT_WIDTH-1:0]         initialCredit4;
wire      [CREDIT_WIDTH-1:0]         initialCredit5;
wire      [CREDIT_WIDTH-1:0]         initialCredit6;
wire      [CREDIT_WIDTH-1:0]         initialCredit7;

wire                                 holdArbitration;
 
wire       [7:0]                     req;
  
reg      [7:0]                       grant;

/////////////////////////////////////////////////////////////////////////////
// internal signal wire/reg declaration
/////////////////////////////////////////////////////////////////////////////

reg      [CREDIT_WIDTH-1:0]         remainingCredit0;
reg      [CREDIT_WIDTH-1:0]         remainingCredit1;
reg      [CREDIT_WIDTH-1:0]         remainingCredit2;
reg      [CREDIT_WIDTH-1:0]         remainingCredit3;
reg      [CREDIT_WIDTH-1:0]         remainingCredit4;
reg      [CREDIT_WIDTH-1:0]         remainingCredit5;
reg      [CREDIT_WIDTH-1:0]         remainingCredit6;
reg      [CREDIT_WIDTH-1:0]         remainingCredit7;

wire                                reqValid0;
wire                                reqValid1;
wire                                reqValid2;
wire                                reqValid3;
wire                                reqValid4;
wire                                reqValid5;
wire                                reqValid6;
wire                                reqValid7;

wire                                reloadCredit0;
wire                                reloadCredit1;
wire                                reloadCredit2;
wire                                reloadCredit3;
wire                                reloadCredit4;
wire                                reloadCredit5;
wire                                reloadCredit6;
wire                                reloadCredit7;

wire                                reloadCredit;

reg      [7:0]                      previousGrant;

/////////////////////////////////////////////////////////////////////////////

assign reqValid0     = req[0]  && ((remainingCredit0  != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid1     = req[1]  && ((remainingCredit1  != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid2     = req[2]  && ((remainingCredit2  != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid3     = req[3]  && ((remainingCredit3  != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid4     = req[4]  && ((remainingCredit4  != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid5     = req[5]  && ((remainingCredit5  != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid6     = req[6]  && ((remainingCredit6  != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid7     = req[7]  && ((remainingCredit7  != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
                       
assign reloadCredit0 = !req[0]  || (remainingCredit0  == {CREDIT_WIDTH{1'd0}});
assign reloadCredit1 = !req[1]  || (remainingCredit1  == {CREDIT_WIDTH{1'd0}});
assign reloadCredit2 = !req[2]  || (remainingCredit2  == {CREDIT_WIDTH{1'd0}});
assign reloadCredit3 = !req[3]  || (remainingCredit3  == {CREDIT_WIDTH{1'd0}});
assign reloadCredit4 = !req[4]  || (remainingCredit4  == {CREDIT_WIDTH{1'd0}});
assign reloadCredit5 = !req[5]  || (remainingCredit5  == {CREDIT_WIDTH{1'd0}});
assign reloadCredit6 = !req[6]  || (remainingCredit6  == {CREDIT_WIDTH{1'd0}});
assign reloadCredit7 = !req[7]  || (remainingCredit7  == {CREDIT_WIDTH{1'd0}});
       
assign reloadCredit    = reloadCredit0  && 
                         reloadCredit1  && 
                         reloadCredit2  && 
                         reloadCredit3  && 
                         reloadCredit4  && 
                         reloadCredit5  && 
                         reloadCredit6  && 
                         reloadCredit7  ; 

/////////////////////////////////////////////////////////////////////////////

always @(
         previousGrant or 
         reqValid0  or 
         reqValid1  or 
         reqValid2  or 
         reqValid3  or 
         reqValid4  or 
         reqValid5  or
         reqValid6  or
         reqValid7  
         ) begin
   case (previousGrant)
      8'b1000_0000 : begin
         casez ({
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid7   
                   })
           8'b1???_????   : grant = 8'b0100_0000;
           8'b01??_????   : grant = 8'b0010_0000;
           8'b001?_????   : grant = 8'b0001_0000;
           8'b0001_????   : grant = 8'b0000_1000;
           8'b0000_1???   : grant = 8'b0000_0100;
           8'b0000_01??   : grant = 8'b0000_0010;
           8'b0000_001?   : grant = 8'b0000_0001;
           8'b0000_0001   : grant = 8'b1000_0000;
           default        : grant = 8'b0000_0000;
         endcase 
      end
      
      8'b0100_0000 : begin
         casez ({
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid7  , 
                   reqValid6   
                   })
           8'b1???_????   : grant = 8'b0010_0000;
           8'b01??_????   : grant = 8'b0001_0000;
           8'b001?_????   : grant = 8'b0000_1000;
           8'b0001_????   : grant = 8'b0000_0100;
           8'b0000_1???   : grant = 8'b0000_0010;
           8'b0000_01??   : grant = 8'b0000_0001;
           8'b0000_001?   : grant = 8'b1000_0000;
           8'b0000_0001   : grant = 8'b0100_0000;
           default        : grant = 8'b0000_0000;
         endcase 
      end
      
      8'b0010_0000 : begin
         casez ({
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5   
                   })
           8'b1???_????   : grant = 8'b0001_0000;
           8'b01??_????   : grant = 8'b0000_1000;
           8'b001?_????   : grant = 8'b0000_0100;
           8'b0001_????   : grant = 8'b0000_0010;
           8'b0000_1???   : grant = 8'b0000_0001;
           8'b0000_01??   : grant = 8'b1000_0000;
           8'b0000_001?   : grant = 8'b0100_0000;
           8'b0000_0001   : grant = 8'b0010_0000;
           default        : grant = 8'b0000_0000;
         endcase
      end

      8'b0001_0000 : begin
         casez ({
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4   
                   })
           8'b1???_????   : grant = 8'b0000_1000;
           8'b01??_????   : grant = 8'b0000_0100;
           8'b001?_????   : grant = 8'b0000_0010;
           8'b0001_????   : grant = 8'b0000_0001;
           8'b0000_1???   : grant = 8'b1000_0000;
           8'b0000_01??   : grant = 8'b0100_0000;
           8'b0000_001?   : grant = 8'b0010_0000;
           8'b0000_0001   : grant = 8'b0001_0000;
           default        : grant = 8'b0000_0000;
         endcase
      end

      8'b0000_1000 : begin
         casez ({
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3   
                   })
           8'b1???_????   : grant = 8'b0000_0100;
           8'b01??_????   : grant = 8'b0000_0010;
           8'b001?_????   : grant = 8'b0000_0001;
           8'b0001_????   : grant = 8'b1000_0000;
           8'b0000_1???   : grant = 8'b0100_0000;
           8'b0000_01??   : grant = 8'b0010_0000;
           8'b0000_001?   : grant = 8'b0001_0000;
           8'b0000_0001   : grant = 8'b0000_1000;
           default        : grant = 8'b0000_0000;
         endcase
      end

      8'b0000_0100 : begin
         casez ({
                   reqValid1  , 
                   reqValid0  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2   
                   })
           8'b1???_????   : grant = 8'b0000_0010;
           8'b01??_????   : grant = 8'b0000_0001;
           8'b001?_????   : grant = 8'b1000_0000;
           8'b0001_????   : grant = 8'b0100_0000;
           8'b0000_1???   : grant = 8'b0010_0000;
           8'b0000_01??   : grant = 8'b0001_0000;
           8'b0000_001?   : grant = 8'b0000_1000;
           8'b0000_0001   : grant = 8'b0000_0100;
           default        : grant = 8'b0000_0000;
         endcase
      end
      
      8'b0000_0010 : begin
         casez ({
                   reqValid0  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1   
                   })
           8'b1???_????   : grant = 8'b0000_0001;
           8'b01??_????   : grant = 8'b1000_0000;
           8'b001?_????   : grant = 8'b0100_0000;
           8'b0001_????   : grant = 8'b0010_0000;
           8'b0000_1???   : grant = 8'b0001_0000;
           8'b0000_01??   : grant = 8'b0000_1000;
           8'b0000_001?   : grant = 8'b0000_0100;
           8'b0000_0001   : grant = 8'b0000_0010;
           default        : grant = 8'b0000_0000;
         endcase
      end

      default : begin //8'b0000_0001
         casez ({
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0   
                   })
           8'b1???_????   : grant = 8'b1000_0000;
           8'b01??_????   : grant = 8'b0100_0000;
           8'b001?_????   : grant = 8'b0010_0000;
           8'b0001_????   : grant = 8'b0001_0000;
           8'b0000_1???   : grant = 8'b0000_1000;
           8'b0000_01??   : grant = 8'b0000_0100;
           8'b0000_001?   : grant = 8'b0000_0010;
           8'b0000_0001   : grant = 8'b0000_0001;
           default        : grant = 8'b0000_0000;
         endcase
      end
   endcase
end

always @(posedge clock or negedge reset) begin
   if (!reset) begin
      previousGrant <= 8'b0000_0000;
   end
   else begin
      if (grant != 8'b0000_0000) begin
         previousGrant <= grant;
      end
   end
end

/////////////////////////////////////////////////////////////////////////////

always @(posedge clock or negedge reset) begin
   if (!reset) begin
      remainingCredit0     <=  {CREDIT_WIDTH{1'd0}};
      remainingCredit1     <=  {CREDIT_WIDTH{1'd0}};
      remainingCredit2     <=  {CREDIT_WIDTH{1'd0}};
      remainingCredit3     <=  {CREDIT_WIDTH{1'd0}};
      remainingCredit4     <=  {CREDIT_WIDTH{1'd0}};
      remainingCredit5     <=  {CREDIT_WIDTH{1'd0}};
      remainingCredit6     <=  {CREDIT_WIDTH{1'd0}};
      remainingCredit7     <=  {CREDIT_WIDTH{1'd0}};
   end
   else begin
      if (reloadCredit) begin
        remainingCredit0   <=  grant[0]? (initialCredit0  - 1'd1) : initialCredit0 ;
        remainingCredit1   <=  grant[1]? (initialCredit1  - 1'd1) : initialCredit1 ;
        remainingCredit2   <=  grant[2]? (initialCredit2  - 1'd1) : initialCredit2 ;
        remainingCredit3   <=  grant[3]? (initialCredit3  - 1'd1) : initialCredit3 ;
        remainingCredit4   <=  grant[4]? (initialCredit4  - 1'd1) : initialCredit4 ;
        remainingCredit5   <=  grant[5]? (initialCredit5  - 1'd1) : initialCredit5 ;
        remainingCredit6   <=  grant[6]? (initialCredit6  - 1'd1) : initialCredit6 ;
        remainingCredit7   <=  grant[7]? (initialCredit7  - 1'd1) : initialCredit7 ;
      end
      else begin
        remainingCredit0   <=  grant[0]? (remainingCredit0  - 1'd1) : remainingCredit0 ;
        remainingCredit1   <=  grant[1]? (remainingCredit1  - 1'd1) : remainingCredit1 ;
        remainingCredit2   <=  grant[2]? (remainingCredit2  - 1'd1) : remainingCredit2 ;
        remainingCredit3   <=  grant[3]? (remainingCredit3  - 1'd1) : remainingCredit3 ;
        remainingCredit4   <=  grant[4]? (remainingCredit4  - 1'd1) : remainingCredit4 ;
        remainingCredit5   <=  grant[5]? (remainingCredit5  - 1'd1) : remainingCredit5 ;
        remainingCredit6   <=  grant[6]? (remainingCredit6  - 1'd1) : remainingCredit6 ;
        remainingCredit7   <=  grant[7]? (remainingCredit7  - 1'd1) : remainingCredit7 ;
      end
  end
end
   
endmodule
