module IP_Wrr32
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
	initialCredit8 , 		
	initialCredit9 , 		
	initialCredit10, 		
	initialCredit11, 		
	initialCredit12, 		
	initialCredit13, 		
	initialCredit14, 		
	initialCredit15, 		
	initialCredit16, 		
	initialCredit17, 		
	initialCredit18, 		
	initialCredit19, 		
	initialCredit20, 		
	initialCredit21, 		
	initialCredit22, 		
	initialCredit23, 		
	initialCredit24, 		
	initialCredit25, 		
	initialCredit26, 		
	initialCredit27, 		
	initialCredit28, 		
	initialCredit29, 		
	initialCredit30, 		
	initialCredit31, 		
	holdArbitration, 
	req,
	
	// Outputs
	grant
	);

// synopsys template
parameter 	CREDIT_WIDTH        = 4;

/////////////////////////////////////////////////////////////////////////////
// input/output declaration
/////////////////////////////////////////////////////////////////////////////
 
input	      						clock;
input 	      						reset;
 
input		[CREDIT_WIDTH-1:0]			initialCredit0;
input		[CREDIT_WIDTH-1:0]			initialCredit1;
input		[CREDIT_WIDTH-1:0]			initialCredit2;
input		[CREDIT_WIDTH-1:0]			initialCredit3;
input		[CREDIT_WIDTH-1:0]			initialCredit4;
input		[CREDIT_WIDTH-1:0]			initialCredit5;
input		[CREDIT_WIDTH-1:0]			initialCredit6;
input		[CREDIT_WIDTH-1:0]			initialCredit7;
input		[CREDIT_WIDTH-1:0]			initialCredit8;
input		[CREDIT_WIDTH-1:0]			initialCredit9;
input		[CREDIT_WIDTH-1:0]			initialCredit10;
input		[CREDIT_WIDTH-1:0]			initialCredit11;
input		[CREDIT_WIDTH-1:0]			initialCredit12;
input		[CREDIT_WIDTH-1:0]			initialCredit13;
input		[CREDIT_WIDTH-1:0]			initialCredit14;
input		[CREDIT_WIDTH-1:0]			initialCredit15;
input		[CREDIT_WIDTH-1:0]			initialCredit16;
input		[CREDIT_WIDTH-1:0]			initialCredit17;
input		[CREDIT_WIDTH-1:0]			initialCredit18;
input		[CREDIT_WIDTH-1:0]			initialCredit19;
input		[CREDIT_WIDTH-1:0]			initialCredit20;
input		[CREDIT_WIDTH-1:0]			initialCredit21;
input		[CREDIT_WIDTH-1:0]			initialCredit22;
input		[CREDIT_WIDTH-1:0]			initialCredit23;
input		[CREDIT_WIDTH-1:0]			initialCredit24;
input		[CREDIT_WIDTH-1:0]			initialCredit25;
input		[CREDIT_WIDTH-1:0]			initialCredit26;
input		[CREDIT_WIDTH-1:0]			initialCredit27;
input		[CREDIT_WIDTH-1:0]			initialCredit28;
input		[CREDIT_WIDTH-1:0]			initialCredit29;
input		[CREDIT_WIDTH-1:0]			initialCredit30;
input		[CREDIT_WIDTH-1:0]			initialCredit31;

input 	      						holdArbitration;
 
input 	[31:0]	      					req;
  
output	[31:0]	      					grant;

/////////////////////////////////////////////////////////////////////////////
// input/output wire/reg declaration
/////////////////////////////////////////////////////////////////////////////

wire	      						clock;
wire 	      						reset;
 
wire		[CREDIT_WIDTH-1:0]			initialCredit0;
wire		[CREDIT_WIDTH-1:0]			initialCredit1;
wire		[CREDIT_WIDTH-1:0]			initialCredit2;
wire		[CREDIT_WIDTH-1:0]			initialCredit3;
wire		[CREDIT_WIDTH-1:0]			initialCredit4;
wire		[CREDIT_WIDTH-1:0]			initialCredit5;
wire		[CREDIT_WIDTH-1:0]			initialCredit6;
wire		[CREDIT_WIDTH-1:0]			initialCredit7;
wire		[CREDIT_WIDTH-1:0]			initialCredit8;
wire		[CREDIT_WIDTH-1:0]			initialCredit9;
wire		[CREDIT_WIDTH-1:0]			initialCredit10;
wire		[CREDIT_WIDTH-1:0]			initialCredit11;
wire		[CREDIT_WIDTH-1:0]			initialCredit12;
wire		[CREDIT_WIDTH-1:0]			initialCredit13;
wire		[CREDIT_WIDTH-1:0]			initialCredit14;
wire		[CREDIT_WIDTH-1:0]			initialCredit15;
wire		[CREDIT_WIDTH-1:0]			initialCredit16;
wire		[CREDIT_WIDTH-1:0]			initialCredit17;
wire		[CREDIT_WIDTH-1:0]			initialCredit18;
wire		[CREDIT_WIDTH-1:0]			initialCredit19;
wire		[CREDIT_WIDTH-1:0]			initialCredit20;
wire		[CREDIT_WIDTH-1:0]			initialCredit21;
wire		[CREDIT_WIDTH-1:0]			initialCredit22;
wire		[CREDIT_WIDTH-1:0]			initialCredit23;
wire		[CREDIT_WIDTH-1:0]			initialCredit24;
wire		[CREDIT_WIDTH-1:0]			initialCredit25;
wire		[CREDIT_WIDTH-1:0]			initialCredit26;
wire		[CREDIT_WIDTH-1:0]			initialCredit27;
wire		[CREDIT_WIDTH-1:0]			initialCredit28;
wire		[CREDIT_WIDTH-1:0]			initialCredit29;
wire		[CREDIT_WIDTH-1:0]			initialCredit30;
wire		[CREDIT_WIDTH-1:0]			initialCredit31;

wire 	      						holdArbitration;
 
wire 		[31:0]	      				req;
  
reg		[31:0]	      				grant;

/////////////////////////////////////////////////////////////////////////////
// internal signal wire/reg declaration
/////////////////////////////////////////////////////////////////////////////

reg		[CREDIT_WIDTH-1:0]			remainingCredit0;
reg		[CREDIT_WIDTH-1:0]			remainingCredit1;
reg		[CREDIT_WIDTH-1:0]			remainingCredit2;
reg		[CREDIT_WIDTH-1:0]			remainingCredit3;
reg		[CREDIT_WIDTH-1:0]			remainingCredit4;
reg		[CREDIT_WIDTH-1:0]			remainingCredit5;
reg		[CREDIT_WIDTH-1:0]			remainingCredit6;
reg		[CREDIT_WIDTH-1:0]			remainingCredit7;
reg		[CREDIT_WIDTH-1:0]			remainingCredit8;
reg		[CREDIT_WIDTH-1:0]			remainingCredit9;
reg		[CREDIT_WIDTH-1:0]			remainingCredit10;
reg		[CREDIT_WIDTH-1:0]			remainingCredit11;
reg		[CREDIT_WIDTH-1:0]			remainingCredit12;
reg		[CREDIT_WIDTH-1:0]			remainingCredit13;
reg		[CREDIT_WIDTH-1:0]			remainingCredit14;
reg		[CREDIT_WIDTH-1:0]			remainingCredit15;
reg		[CREDIT_WIDTH-1:0]			remainingCredit16;
reg		[CREDIT_WIDTH-1:0]			remainingCredit17;
reg		[CREDIT_WIDTH-1:0]			remainingCredit18;
reg		[CREDIT_WIDTH-1:0]			remainingCredit19;
reg		[CREDIT_WIDTH-1:0]			remainingCredit20;
reg		[CREDIT_WIDTH-1:0]			remainingCredit21;
reg		[CREDIT_WIDTH-1:0]			remainingCredit22;
reg		[CREDIT_WIDTH-1:0]			remainingCredit23;
reg		[CREDIT_WIDTH-1:0]			remainingCredit24;
reg		[CREDIT_WIDTH-1:0]			remainingCredit25;
reg		[CREDIT_WIDTH-1:0]			remainingCredit26;
reg		[CREDIT_WIDTH-1:0]			remainingCredit27;
reg		[CREDIT_WIDTH-1:0]			remainingCredit28;
reg		[CREDIT_WIDTH-1:0]			remainingCredit29;
reg		[CREDIT_WIDTH-1:0]			remainingCredit30;
reg		[CREDIT_WIDTH-1:0]			remainingCredit31;

wire 	      						reqValid0;
wire 	      						reqValid1;
wire 	      						reqValid2;
wire 	      						reqValid3;
wire 	      						reqValid4;
wire 	      						reqValid5;
wire 	      						reqValid6;
wire 	      						reqValid7;
wire 	      						reqValid8;
wire 	      						reqValid9;
wire 	      						reqValid10;
wire 	      						reqValid11;
wire 	      						reqValid12;
wire 	      						reqValid13;
wire 	      						reqValid14;
wire 	      						reqValid15;
wire 	      						reqValid16;
wire 	      						reqValid17;
wire 	      						reqValid18;
wire 	      						reqValid19;
wire 	      						reqValid20;
wire 	      						reqValid21;
wire 	      						reqValid22;
wire 	      						reqValid23;
wire 	      						reqValid24;
wire 	      						reqValid25;
wire 	      						reqValid26;
wire 	      						reqValid27;
wire 	      						reqValid28;
wire 	      						reqValid29;
wire 	      						reqValid30;
wire 	      						reqValid31;

wire 	      						reloadCredit0;
wire 	      						reloadCredit1;
wire 	      						reloadCredit2;
wire 	      						reloadCredit3;
wire 	      						reloadCredit4;
wire 	      						reloadCredit5;
wire 	      						reloadCredit6;
wire 	      						reloadCredit7;
wire 	      						reloadCredit8;
wire 	      						reloadCredit9;
wire 	      						reloadCredit10;
wire 	      						reloadCredit11;
wire 	      						reloadCredit12;
wire 	      						reloadCredit13;
wire 	      						reloadCredit14;
wire 	      						reloadCredit15;
wire 	      						reloadCredit16;
wire 	      						reloadCredit17;
wire 	      						reloadCredit18;
wire 	      						reloadCredit19;
wire 	      						reloadCredit20;
wire 	      						reloadCredit21;
wire 	      						reloadCredit22;
wire 	      						reloadCredit23;
wire 	      						reloadCredit24;
wire 	      						reloadCredit25;
wire 	      						reloadCredit26;
wire 	      						reloadCredit27;
wire 	      						reloadCredit28;
wire 	      						reloadCredit29;
wire 	      						reloadCredit30;
wire 	      						reloadCredit31;

wire 	      						reloadCredit;

reg		[31:0] 	      				previousGrant;

/////////////////////////////////////////////////////////////////////////////

assign reqValid0    	= req[0]  && ((remainingCredit0  != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid1    	= req[1]  && ((remainingCredit1  != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid2    	= req[2]  && ((remainingCredit2  != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid3    	= req[3]  && ((remainingCredit3  != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid4    	= req[4]  && ((remainingCredit4  != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid5     	= req[5]  && ((remainingCredit5  != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid6     	= req[6]  && ((remainingCredit6  != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid7     	= req[7]  && ((remainingCredit7  != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid8     	= req[8]  && ((remainingCredit8  != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid9     	= req[9]  && ((remainingCredit9  != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid10    	= req[10] && ((remainingCredit10 != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid11    	= req[11] && ((remainingCredit11 != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid12    	= req[12] && ((remainingCredit12 != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid13    	= req[13] && ((remainingCredit13 != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid14    	= req[14] && ((remainingCredit14 != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid15    	= req[15] && ((remainingCredit15 != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid16    	= req[16] && ((remainingCredit16 != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid17    	= req[17] && ((remainingCredit17 != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid18    	= req[18] && ((remainingCredit18 != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid19    	= req[19] && ((remainingCredit19 != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid20    	= req[20] && ((remainingCredit20 != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid21    	= req[21] && ((remainingCredit21 != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid22    	= req[22] && ((remainingCredit22 != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid23    	= req[23] && ((remainingCredit23 != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid24    	= req[24] && ((remainingCredit24 != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid25    	= req[25] && ((remainingCredit25 != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid26    	= req[26] && ((remainingCredit26 != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid27    	= req[27] && ((remainingCredit27 != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid28    	= req[28] && ((remainingCredit28 != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid29    	= req[29] && ((remainingCredit29 != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid30    	= req[30] && ((remainingCredit30 != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
assign reqValid31    	= req[31] && ((remainingCredit31 != {CREDIT_WIDTH{1'd0}}) || reloadCredit) && !holdArbitration;
                    	
assign reloadCredit0	= !req[0]  || (remainingCredit0  == {CREDIT_WIDTH{1'd0}});
assign reloadCredit1	= !req[1]  || (remainingCredit1  == {CREDIT_WIDTH{1'd0}});
assign reloadCredit2	= !req[2]  || (remainingCredit2  == {CREDIT_WIDTH{1'd0}});
assign reloadCredit3	= !req[3]  || (remainingCredit3  == {CREDIT_WIDTH{1'd0}});
assign reloadCredit4	= !req[4]  || (remainingCredit4  == {CREDIT_WIDTH{1'd0}});
assign reloadCredit5 	= !req[5]  || (remainingCredit5  == {CREDIT_WIDTH{1'd0}});
assign reloadCredit6 	= !req[6]  || (remainingCredit6  == {CREDIT_WIDTH{1'd0}});
assign reloadCredit7 	= !req[7]  || (remainingCredit7  == {CREDIT_WIDTH{1'd0}});
assign reloadCredit8 	= !req[8]  || (remainingCredit8  == {CREDIT_WIDTH{1'd0}});
assign reloadCredit9 	= !req[9]  || (remainingCredit9  == {CREDIT_WIDTH{1'd0}});
assign reloadCredit10	= !req[10] || (remainingCredit10 == {CREDIT_WIDTH{1'd0}});
assign reloadCredit11	= !req[11] || (remainingCredit11 == {CREDIT_WIDTH{1'd0}});
assign reloadCredit12	= !req[12] || (remainingCredit12 == {CREDIT_WIDTH{1'd0}});
assign reloadCredit13	= !req[13] || (remainingCredit13 == {CREDIT_WIDTH{1'd0}});
assign reloadCredit14	= !req[14] || (remainingCredit14 == {CREDIT_WIDTH{1'd0}});
assign reloadCredit15	= !req[15] || (remainingCredit15 == {CREDIT_WIDTH{1'd0}});
assign reloadCredit16	= !req[16] || (remainingCredit16 == {CREDIT_WIDTH{1'd0}});
assign reloadCredit17	= !req[17] || (remainingCredit17 == {CREDIT_WIDTH{1'd0}});
assign reloadCredit18	= !req[18] || (remainingCredit18 == {CREDIT_WIDTH{1'd0}});
assign reloadCredit19	= !req[19] || (remainingCredit19 == {CREDIT_WIDTH{1'd0}});
assign reloadCredit20	= !req[20] || (remainingCredit20 == {CREDIT_WIDTH{1'd0}});
assign reloadCredit21	= !req[21] || (remainingCredit21 == {CREDIT_WIDTH{1'd0}});
assign reloadCredit22	= !req[22] || (remainingCredit22 == {CREDIT_WIDTH{1'd0}});
assign reloadCredit23	= !req[23] || (remainingCredit23 == {CREDIT_WIDTH{1'd0}});
assign reloadCredit24	= !req[24] || (remainingCredit24 == {CREDIT_WIDTH{1'd0}});
assign reloadCredit25	= !req[25] || (remainingCredit25 == {CREDIT_WIDTH{1'd0}});
assign reloadCredit26	= !req[26] || (remainingCredit26 == {CREDIT_WIDTH{1'd0}});
assign reloadCredit27	= !req[27] || (remainingCredit27 == {CREDIT_WIDTH{1'd0}});
assign reloadCredit28	= !req[28] || (remainingCredit28 == {CREDIT_WIDTH{1'd0}});
assign reloadCredit29	= !req[29] || (remainingCredit29 == {CREDIT_WIDTH{1'd0}});
assign reloadCredit30	= !req[30] || (remainingCredit30 == {CREDIT_WIDTH{1'd0}});
assign reloadCredit31	= !req[31] || (remainingCredit31 == {CREDIT_WIDTH{1'd0}});
       
assign reloadCredit 	= reloadCredit0  && 
                          reloadCredit1  && 
                          reloadCredit2  && 
                          reloadCredit3  && 
                          reloadCredit4  && 
                          reloadCredit5  && 
                          reloadCredit6  && 
                          reloadCredit7  && 
                          reloadCredit8  && 
                          reloadCredit9  && 
                          reloadCredit10 && 
                          reloadCredit11 && 
                          reloadCredit12 && 
                          reloadCredit13 && 
                          reloadCredit14 && 
                          reloadCredit15 && 
                          reloadCredit16 && 
                          reloadCredit17 && 
                          reloadCredit18 && 
                          reloadCredit19 && 
                          reloadCredit20 && 
                          reloadCredit21 && 
                          reloadCredit22 && 
                          reloadCredit23 && 
                          reloadCredit24 && 
                          reloadCredit25 && 
                          reloadCredit26 && 
                          reloadCredit27 && 
                          reloadCredit28 && 
                          reloadCredit29 && 
                          reloadCredit30 && 
                          reloadCredit31 ;

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
         reqValid7  or
         reqValid8  or
         reqValid9  or
         reqValid10 or
         reqValid11 or
         reqValid12 or
         reqValid13 or
         reqValid14 or
         reqValid15 or
         reqValid16 or
         reqValid17 or
         reqValid18 or
         reqValid19 or
         reqValid20 or
         reqValid21 or
         reqValid22 or
         reqValid23 or
         reqValid24 or
         reqValid25 or
         reqValid26 or
         reqValid27 or
         reqValid28 or
         reqValid29 or
         reqValid30 or
         reqValid31 
         ) begin
	case (previousGrant)
		32'b1000_0000_0000_0000_0000_0000_0000_0000 : begin
		   casez ({
                   reqValid30 , 
                   reqValid29 , 
                   reqValid28 , 
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase 
		end
		
		32'b0100_0000_0000_0000_0000_0000_0000_0000 : begin
		   casez ({
                   reqValid29 , 
                   reqValid28 , 
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase 
		end
		
		32'b0010_0000_0000_0000_0000_0000_0000_0000 : begin
		   casez ({
                   reqValid28 , 
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29  
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0001_0000_0000_0000_0000_0000_0000_0000 : begin
		   casez ({
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28  
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_1000_0000_0000_0000_0000_0000_0000 : begin
		   casez ({
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27   
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0100_0000_0000_0000_0000_0000_0000 : begin
		   casez ({
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26   
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end
		
		32'b0000_0010_0000_0000_0000_0000_0000_0000 : begin
		   casez ({
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25   
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0001_0000_0000_0000_0000_0000_0000 : begin
		   casez ({
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24   
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_1000_0000_0000_0000_0000_0000 : begin
		   casez ({
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23   
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_0100_0000_0000_0000_0000_0000 : begin
		   casez ({
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22   
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_0010_0000_0000_0000_0000_0000 : begin
		   casez ({
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21   
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_0001_0000_0000_0000_0000_0000 : begin
		   casez ({
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20   
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_0000_1000_0000_0000_0000_0000 : begin
		   casez ({
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19   
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_0000_0100_0000_0000_0000_0000 : begin
		   casez ({
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18   
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_0000_0010_0000_0000_0000_0000 : begin
		   casez ({
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17   
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_0000_0001_0000_0000_0000_0000 : begin
		   casez ({
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16   
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_0000_0000_1000_0000_0000_0000 : begin
		   casez ({
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15   
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_0000_0000_0100_0000_0000_0000 : begin
		   casez ({
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14   
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_0000_0000_0010_0000_0000_0000 : begin
		   casez ({
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13   
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_0000_0000_0001_0000_0000_0000 : begin
		   casez ({
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12   
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_0000_0000_0000_1000_0000_0000 : begin
		   casez ({
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11   
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_0000_0000_0000_0100_0000_0000 : begin
		   casez ({
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10   
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_0000_0000_0000_0010_0000_0000 : begin
		   casez ({
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9    
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_0000_0000_0000_0001_0000_0000 : begin
		   casez ({
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8    
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_0000_0000_0000_0000_1000_0000 : begin
		   casez ({
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7    
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_0000_0000_0000_0000_0100_0000 : begin
		   casez ({
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6    
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_0000_0000_0000_0000_0010_0000 : begin
		   casez ({
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5    
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_0000_0000_0000_0000_0001_0000 : begin
		   casez ({
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4    
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_0000_0000_0000_0000_0000_1000 : begin
		   casez ({
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3    
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_0000_0000_0000_0000_0000_0100 : begin
		   casez ({
                   reqValid1  , 
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2    
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		32'b0000_0000_0000_0000_0000_0000_0000_0010 : begin
		   casez ({
                   reqValid0  , 
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1    
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase
		end

		default : begin // 32'b0000_0000_0000_0000_0000_0000_0000_0001
		   casez ({
                   reqValid31 ,
                   reqValid30 ,
                   reqValid29 , 
                   reqValid28 ,
                   reqValid27 , 
                   reqValid26 , 
                   reqValid25 , 
                   reqValid24 , 
                   reqValid23 , 
                   reqValid22 , 
                   reqValid21 , 
                   reqValid20 , 
                   reqValid19 , 
                   reqValid18 , 
                   reqValid17 , 
                   reqValid16 , 
                   reqValid15 , 
                   reqValid14 , 
                   reqValid13 , 
                   reqValid12 , 
                   reqValid11 , 
                   reqValid10 , 
                   reqValid9  , 
                   reqValid8  , 
                   reqValid7  , 
                   reqValid6  , 
                   reqValid5  , 
                   reqValid4  , 
                   reqValid3  , 
                   reqValid2  , 
                   reqValid1  , 
                   reqValid0    
                   })
		     32'b1???_????_????_????_????_????_????_????	: grant = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
		     32'b01??_????_????_????_????_????_????_????	: grant = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		     32'b001?_????_????_????_????_????_????_????	: grant = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		     32'b0001_????_????_????_????_????_????_????	: grant = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		     32'b0000_1???_????_????_????_????_????_????	: grant = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		     32'b0000_01??_????_????_????_????_????_????	: grant = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		     32'b0000_001?_????_????_????_????_????_????	: grant = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		     32'b0000_0001_????_????_????_????_????_????	: grant = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		     32'b0000_0000_1???_????_????_????_????_????	: grant = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		     32'b0000_0000_01??_????_????_????_????_????	: grant = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		     32'b0000_0000_001?_????_????_????_????_????	: grant = 32'b0000_0000_0010_0000_0000_0000_0000_0000;
		     32'b0000_0000_0001_????_????_????_????_????	: grant = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		     32'b0000_0000_0000_1???_????_????_????_????	: grant = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		     32'b0000_0000_0000_01??_????_????_????_????	: grant = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		     32'b0000_0000_0000_001?_????_????_????_????	: grant = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		     32'b0000_0000_0000_0001_????_????_????_????	: grant = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		     32'b0000_0000_0000_0000_1???_????_????_????	: grant = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		     32'b0000_0000_0000_0000_01??_????_????_????	: grant = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		     32'b0000_0000_0000_0000_001?_????_????_????	: grant = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		     32'b0000_0000_0000_0000_0001_????_????_????	: grant = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		     32'b0000_0000_0000_0000_0000_1???_????_????	: grant = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		     32'b0000_0000_0000_0000_0000_01??_????_????	: grant = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		     32'b0000_0000_0000_0000_0000_001?_????_????	: grant = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		     32'b0000_0000_0000_0000_0000_0001_????_????	: grant = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		     32'b0000_0000_0000_0000_0000_0000_1???_????	: grant = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		     32'b0000_0000_0000_0000_0000_0000_01??_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		     32'b0000_0000_0000_0000_0000_0000_001?_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		     32'b0000_0000_0000_0000_0000_0000_0001_????	: grant = 32'b0000_0000_0000_0000_0000_0000_0001_0000;
		     32'b0000_0000_0000_0000_0000_0000_0000_1???	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		     32'b0000_0000_0000_0000_0000_0000_0000_01??	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		     32'b0000_0000_0000_0000_0000_0000_0000_001?	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		     32'b0000_0000_0000_0000_0000_0000_0000_0001	: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		     default  		: grant = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
		   endcase 
		end
	endcase
end

always @(posedge clock or negedge reset) begin
	if (!reset) begin
		previousGrant	<=  32'b0000_0000_0000_0000_0000_0000_0000_0000;
	end
	else begin
		if (grant != 32'b0000_0000_0000_0000_0000_0000_0000_0000) begin
   		previousGrant	<=  grant;
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
		remainingCredit8     <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit9     <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit10    <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit11    <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit12    <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit13    <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit14    <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit15    <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit16    <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit17    <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit18    <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit19    <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit20    <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit21    <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit22    <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit23    <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit24    <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit25    <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit26    <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit27    <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit28    <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit29    <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit30    <=  {CREDIT_WIDTH{1'd0}};
		remainingCredit31    <=  {CREDIT_WIDTH{1'd0}};
	end
	else begin
		if (reloadCredit) begin
		  remainingCredit0   <=  grant[0 ]? (initialCredit0  - 1'd1) : initialCredit0 ;
		  remainingCredit1   <=  grant[1 ]? (initialCredit1  - 1'd1) : initialCredit1 ;
		  remainingCredit2   <=  grant[2 ]? (initialCredit2  - 1'd1) : initialCredit2 ;
		  remainingCredit3   <=  grant[3 ]? (initialCredit3  - 1'd1) : initialCredit3 ;
		  remainingCredit4   <=  grant[4 ]? (initialCredit4  - 1'd1) : initialCredit4 ;
		  remainingCredit5   <=  grant[5 ]? (initialCredit5  - 1'd1) : initialCredit5 ;
		  remainingCredit6   <=  grant[6 ]? (initialCredit6  - 1'd1) : initialCredit6 ;
		  remainingCredit7   <=  grant[7 ]? (initialCredit7  - 1'd1) : initialCredit7 ;
		  remainingCredit8   <=  grant[8 ]? (initialCredit8  - 1'd1) : initialCredit8 ;
		  remainingCredit9   <=  grant[9 ]? (initialCredit9  - 1'd1) : initialCredit9 ;
		  remainingCredit10  <=  grant[10]? (initialCredit10 - 1'd1) : initialCredit10;
		  remainingCredit11  <=  grant[11]? (initialCredit11 - 1'd1) : initialCredit11;
		  remainingCredit12  <=  grant[12]? (initialCredit12 - 1'd1) : initialCredit12;
		  remainingCredit13  <=  grant[13]? (initialCredit13 - 1'd1) : initialCredit13;
		  remainingCredit14  <=  grant[14]? (initialCredit14 - 1'd1) : initialCredit14;
		  remainingCredit15  <=  grant[15]? (initialCredit15 - 1'd1) : initialCredit15;
		  remainingCredit16  <=  grant[16]? (initialCredit16 - 1'd1) : initialCredit16;
		  remainingCredit17  <=  grant[17]? (initialCredit17 - 1'd1) : initialCredit17;
		  remainingCredit18  <=  grant[18]? (initialCredit18 - 1'd1) : initialCredit18;
		  remainingCredit19  <=  grant[19]? (initialCredit19 - 1'd1) : initialCredit19;
		  remainingCredit20  <=  grant[20]? (initialCredit20 - 1'd1) : initialCredit20;
		  remainingCredit21  <=  grant[21]? (initialCredit21 - 1'd1) : initialCredit21;
		  remainingCredit22  <=  grant[22]? (initialCredit22 - 1'd1) : initialCredit22;
		  remainingCredit23  <=  grant[23]? (initialCredit23 - 1'd1) : initialCredit23;
		  remainingCredit24  <=  grant[24]? (initialCredit24 - 1'd1) : initialCredit24;
		  remainingCredit25  <=  grant[25]? (initialCredit25 - 1'd1) : initialCredit25;
		  remainingCredit26  <=  grant[26]? (initialCredit26 - 1'd1) : initialCredit26;
		  remainingCredit27  <=  grant[27]? (initialCredit27 - 1'd1) : initialCredit27;
		  remainingCredit28  <=  grant[28]? (initialCredit28 - 1'd1) : initialCredit28;
		  remainingCredit29  <=  grant[29]? (initialCredit29 - 1'd1) : initialCredit29;
		  remainingCredit30  <=  grant[30]? (initialCredit30 - 1'd1) : initialCredit30;
		  remainingCredit31  <=  grant[31]? (initialCredit31 - 1'd1) : initialCredit31;
		end
		else begin
		  remainingCredit0   <=  grant[0 ]? (remainingCredit0  - 1'd1) : remainingCredit0 ;
		  remainingCredit1   <=  grant[1 ]? (remainingCredit1  - 1'd1) : remainingCredit1 ;
		  remainingCredit2   <=  grant[2 ]? (remainingCredit2  - 1'd1) : remainingCredit2 ;
		  remainingCredit3   <=  grant[3 ]? (remainingCredit3  - 1'd1) : remainingCredit3 ;
		  remainingCredit4   <=  grant[4 ]? (remainingCredit4  - 1'd1) : remainingCredit4 ;
		  remainingCredit5   <=  grant[5 ]? (remainingCredit5  - 1'd1) : remainingCredit5 ;
		  remainingCredit6   <=  grant[6 ]? (remainingCredit6  - 1'd1) : remainingCredit6 ;
		  remainingCredit7   <=  grant[7 ]? (remainingCredit7  - 1'd1) : remainingCredit7 ;
		  remainingCredit8   <=  grant[8 ]? (remainingCredit8  - 1'd1) : remainingCredit8 ;
		  remainingCredit9   <=  grant[9 ]? (remainingCredit9  - 1'd1) : remainingCredit9 ;
		  remainingCredit10  <=  grant[10]? (remainingCredit10 - 1'd1) : remainingCredit10;
		  remainingCredit11  <=  grant[11]? (remainingCredit11 - 1'd1) : remainingCredit11;
		  remainingCredit12  <=  grant[12]? (remainingCredit12 - 1'd1) : remainingCredit12;
		  remainingCredit13  <=  grant[13]? (remainingCredit13 - 1'd1) : remainingCredit13;
		  remainingCredit14  <=  grant[14]? (remainingCredit14 - 1'd1) : remainingCredit14;
		  remainingCredit15  <=  grant[15]? (remainingCredit15 - 1'd1) : remainingCredit15;
		  remainingCredit16  <=  grant[16]? (remainingCredit16 - 1'd1) : remainingCredit16;
		  remainingCredit17  <=  grant[17]? (remainingCredit17 - 1'd1) : remainingCredit17;
		  remainingCredit18  <=  grant[18]? (remainingCredit18 - 1'd1) : remainingCredit18;
		  remainingCredit19  <=  grant[19]? (remainingCredit19 - 1'd1) : remainingCredit19;
		  remainingCredit20  <=  grant[20]? (remainingCredit20 - 1'd1) : remainingCredit20;
		  remainingCredit21  <=  grant[21]? (remainingCredit21 - 1'd1) : remainingCredit21;
		  remainingCredit22  <=  grant[22]? (remainingCredit22 - 1'd1) : remainingCredit22;
		  remainingCredit23  <=  grant[23]? (remainingCredit23 - 1'd1) : remainingCredit23;
		  remainingCredit24  <=  grant[24]? (remainingCredit24 - 1'd1) : remainingCredit24;
		  remainingCredit25  <=  grant[25]? (remainingCredit25 - 1'd1) : remainingCredit25;
		  remainingCredit26  <=  grant[26]? (remainingCredit26 - 1'd1) : remainingCredit26;
		  remainingCredit27  <=  grant[27]? (remainingCredit27 - 1'd1) : remainingCredit27;
		  remainingCredit28  <=  grant[28]? (remainingCredit28 - 1'd1) : remainingCredit28;
		  remainingCredit29  <=  grant[29]? (remainingCredit29 - 1'd1) : remainingCredit29;
		  remainingCredit30  <=  grant[30]? (remainingCredit30 - 1'd1) : remainingCredit30;
		  remainingCredit31  <=  grant[31]? (remainingCredit31 - 1'd1) : remainingCredit31;
		end
  end
end
   
endmodule


