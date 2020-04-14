module IP_Reg (
   // Outputs
   registerReadData, decodeEn, registerReadS, 
   registerWriteDataS, registerAck, registerError, decodeAddress, 
   // Inputs
   clock, reset, registerSelect, registerRead, registerAddress, 
   registerWriteData, readDataInternal, decodeInternal,
   memReqTrigger, memAckTrigger
);

   input                clock;
   input 		reset;
   
   input 		registerSelect;
   input 		registerRead;
   input [31:2] 	registerAddress;
   input [31:0] 	registerWriteData;
   input [31:0] 	readDataInternal;
   input 		decodeInternal;
   input 		memReqTrigger;
   input 		memAckTrigger;

   output [31:0] 	registerReadData;
   output 		decodeEn;
   output 		registerReadS;
   output [31:0] 	registerWriteDataS;
   output 		registerAck;
   output 		registerError;
   output [31:0] 	decodeAddress;
   

   ////////////////////////////////////////
   // Internal variables
   ////////////////////////////////////////
   reg 			registerSelectS;
   reg 			registerReadS;
   reg [31:2] 		registerAddressS;
   reg [31:0] 		registerWriteDataS;

   reg [31:0] 		registerReadData;

   reg                  decodeEn;

   // reset lines and one stage flop for incoming data
   // These registers are not resetable
   always @ ( posedge clock or negedge reset) begin
      if ( !reset ) begin
         registerSelectS    <= 1'd0;
         registerAddressS   <= 30'd0;
         registerReadS      <= 1'd0;
         registerWriteDataS <= 32'd0;
      end
      else begin
         registerSelectS    <=  registerSelect;
         registerReadS      <=  registerRead;
         registerAddressS   <=  registerAddress;
         registerWriteDataS <=  registerWriteData;
      end
   end // always @ ( posedge clock )
   
   wire [31:0] decodeAddress = {registerAddressS[31:2], 2'b00};

   reg [31:0]          registerReadDataD;
   reg 		       registerAckD, registerAck;
   reg 		       registerErrorD, registerError;
   reg [1:0] 	       genericRegStateD, genericRegState;
  
   parameter 	       STD_REG_STATE_IDLE        = 2'b00,
		       STD_REG_STATE_MEM_REQ     = 2'b10,
		       STD_REG_STATE_MEM_ACK     = 2'b11,
		       STD_REG_STATE_WAIT        = 2'b01;

   always @ (*) begin
      decodeEn                    = 1'b0;

      // State machine 
      case ( genericRegState )
	// // decode in this state   
	STD_REG_STATE_IDLE    : begin
	   if ( registerSelectS ) begin
	      decodeEn               = 1'b1;
	   end // if ( registerSelectS )
	end // case: STD_REG_STATE_IDLE

	STD_REG_STATE_MEM_REQ : begin
	   decodeEn                  = 1'b1;
	end

	STD_REG_STATE_MEM_ACK : begin
	   decodeEn                  = 1'b1;
	end
	   
	// This specially waiting for the select line to go away
	STD_REG_STATE_WAIT   : ;
      endcase // case( genericRegState )
   end // always @ (...
   
   
   always @ (*) begin
      registerAckD                = 1'b0;
      registerErrorD              = 1'b0;
      
      registerReadDataD           = registerReadData;
      genericRegStateD            = genericRegState;
      
      // State machine 
      case ( genericRegState )
	// // decode in this state   
	STD_REG_STATE_IDLE    : begin
	   if ( registerSelectS ) begin
	      if ( memReqTrigger )
		genericRegStateD        = STD_REG_STATE_MEM_REQ;
	      else begin
		 registerReadDataD      = readDataInternal;
		 registerAckD           = 1'b1;
		 registerErrorD         = !decodeInternal;
	      
		 genericRegStateD       = STD_REG_STATE_WAIT;
	      end
	      
	   end // if ( registerSelectS )
	end // case: STD_REG_STATE_IDLE

	STD_REG_STATE_MEM_REQ : begin
	   if ( !registerSelectS | memAckTrigger )
	     genericRegStateD        = STD_REG_STATE_MEM_ACK;
	end

	STD_REG_STATE_MEM_ACK : begin
	   registerReadDataD         = readDataInternal;
	   registerAckD              = 1'b1;
	   registerErrorD            = !decodeInternal;
	   
	   genericRegStateD          = STD_REG_STATE_WAIT;
	end
	   
	// This specially waiting for the select line to go away
	STD_REG_STATE_WAIT   : 
	  if ( !registerSelectS ) genericRegStateD = STD_REG_STATE_IDLE;
	
      endcase // case( genericRegState )
   end // always @ (...
   
   
   ///////////////////////////////////
   // registers for the state machine
   ///////////////////////////////////
   
   always @ ( posedge clock or negedge reset ) begin
      if ( !reset ) begin
	 registerAck           <=  1'b0;
	 registerError         <=  1'b0;
	 genericRegState       <=  STD_REG_STATE_IDLE;
	 registerReadData      <=  32'h0;
      end
      else begin
	 registerAck           <=  registerAckD;
	 registerError         <=  registerErrorD;
	 genericRegState       <=  genericRegStateD;
	 registerReadData      <=  registerReadDataD;
      end
   end
   
endmodule // IP_Reg

