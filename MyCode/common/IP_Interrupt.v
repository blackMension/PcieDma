module IP_Interrupt (
   // Outputs
   maskSetReadData, maskResetReadData, valueSetReadData, 
   valueResetReadData, interruptOut, 
   // Inputs
   clock, reset, maskSetWrite, maskSetWriteData, maskResetWrite, 
   maskResetWriteData, valueSetWrite, valueSetWriteData, 
   valueResetWrite, valueResetWriteData, interruptIn
);
   
   // synopsys template
   parameter               WIDTH = 32;
   
   input                   clock;
   input                   reset;
   
   input                   maskSetWrite;
   input  [WIDTH - 1:0]    maskSetWriteData;
   output [WIDTH - 1:0]    maskSetReadData;
   
   input                   maskResetWrite;
   input  [WIDTH - 1:0]    maskResetWriteData;
   output [WIDTH - 1:0]    maskResetReadData;
   
   input                   valueSetWrite;
   input  [WIDTH - 1:0]    valueSetWriteData;
   output [WIDTH - 1:0]    valueSetReadData;
   
   input                   valueResetWrite;
   input  [WIDTH - 1:0]    valueResetWriteData;
   output [WIDTH - 1:0]    valueResetReadData;
   
   input  [WIDTH - 1:0]    interruptIn;
   output                  interruptOut;
   
   reg                     interruptOut;
   
   //============================================================
   reg [WIDTH - 1:0] 	   interruptMask;
   reg [WIDTH - 1:0] 	   interruptValue;
   
   reg [WIDTH - 1:0] 	   interruptInS;
   
   always @ ( posedge clock ) begin
      interruptInS <= interruptIn;
   end
   
   always @ ( posedge clock or negedge reset ) begin
      if ( !reset ) begin
	 interruptValue <= {WIDTH{1'b0}};
	 interruptMask  <= {WIDTH{1'b1}};
      end
      else begin
	 if ( valueSetWrite ) // write one set, consider new interrupt
	   interruptValue <= ( interruptValue | valueSetWriteData ) | interruptInS; 
	 else if ( valueResetWrite ) // write one reset, consider new interrupt
	   interruptValue <= ( interruptValue & (~ valueResetWriteData) ) | interruptInS;
	 else // latch new interrupt
	   interruptValue <= interruptValue | interruptInS;
	 
	 if ( maskSetWrite ) // write one set
	   interruptMask  <= interruptMask | maskSetWriteData;
	 else if ( maskResetWrite ) // write one clear
	   interruptMask  <= interruptMask & (~ maskResetWriteData );
      end // else: !if( reset )
   end // always @ ( posedge clock )
   
   assign     maskSetReadData    = interruptMask;
   assign     maskResetReadData  = interruptMask;
   assign     valueSetReadData   = interruptValue;
   assign     valueResetReadData = interruptValue;

   wire nxtInterruptOut = |(interruptValue & (~interruptMask));

   always @(posedge clock) begin
       interruptOut <= nxtInterruptOut;
   end
   
endmodule // IP_Interrupt

