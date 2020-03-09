module IP_RegCdc (/*AUTOARG*/
   // Outputs
   registerAckA, registerErrorA, registerReadDataA, registerSelectB,
   registerReadB, registerAddressB, registerWriteDataB,
   // Inputs
   clockA, resetA, clockB, resetB, registerSelectA, registerReadA,
   registerAddressA, registerWriteDataA, registerAckB, registerErrorB,
   registerReadDataB
   );
	 
/////////////////////////////////////////////////////////////////////////////
// INPUT/OUTPUT declaration
/////////////////////////////////////////////////////////////////////////////

   input      			clockA;
   input 			resetA;

   input 			clockB;
   input 			resetB;
      
   input 			registerSelectA;
   input 			registerReadA;
   input	[31:0]		registerAddressA;
   input	[31:0]		registerWriteDataA;

   input 			registerAckB;
   input 			registerErrorB;
   input	[31:0] 		registerReadDataB;

   /////////////////////////////////////////////////////////////////////////////
   output 			registerAckA;
   output 			registerErrorA;
   output	[31:0] 		registerReadDataA;
   
   output 			registerSelectB;
   output 			registerReadB;
   output	[31:0] 		registerAddressB;
   output	[31:0] 		registerWriteDataB;

   /////////////////////////////////////////////////////////////////////////////
   // INPUT/OUTPUT wire/reg declaration
   /////////////////////////////////////////////////////////////////////////////
   reg				registerAckA;
   reg				registerErrorA;
   reg		[31:0]		registerReadDataA;
							
   reg				registerSelectB;
   reg				registerReadB;
   reg		[31:0]		registerAddressB;
   reg		[31:0]		registerWriteDataB;

   /////////////////////////////////////////////////////////////////////////////
   // internal wire/reg declaration
   /////////////////////////////////////////////////////////////////////////////
   wire 			registerSelectAInB;
   reg 				registerAckBToA;
   reg 				inProgressB;
   wire 			registerAckBInA;

   reg 				registerErrorBS;
   reg		[31:0]		registerReadDataBS;

   reg			        registerSelectAS;
   reg			        registerReadAS;
   reg		[31:0]		registerAddressAS;
   reg		[31:0]		registerWriteDataAS;

   reg			        registerAckBInAS;
   reg			        inProgressA;
      			        
   reg			        registerSelectASync;
   /////////////////////////////////////////////////////////////////////////////
   // code starts
   /////////////////////////////////////////////////////////////////////////////
   //============================================
   // sync select
   //============================================
   IP_SyncFlop #(1) uDoubleSyncSelect
     ( .dataOut     (registerSelectAInB), 
       .clockOut    (clockB), 
       .dataIn      (registerSelectAS)
       );

   always @ ( posedge clockB or negedge resetB ) begin
      if ( !resetB ) begin
	 registerSelectB               <= 1'b0;
	 registerAckBToA               <= 1'b0;
	 inProgressB                   <= 1'b0;
      end
      else begin
	 if ( registerSelectAInB && !inProgressB )
	   registerSelectB             <= 1'b1;
	 else if ( !registerSelectAInB || registerAckB )
	   registerSelectB             <= 1'b0;

	 if ( registerSelectAInB && registerAckB )
	   registerAckBToA             <= 1'b1;
	 else if ( !registerSelectAInB ) // release when core select done
	   registerAckBToA             <= 1'b0;

	 if ( registerSelectAInB && !inProgressB )
	   inProgressB                 <= 1'b1;
	 else if ( !registerSelectAInB )
	   inProgressB                 <= 1'b0;
      end
   end // always @ ( posedge clockB )

   // latch other dignals. They should be stable
   always @ ( posedge clockB ) begin
      if ( registerSelectAInB && !inProgressB ) begin
	 registerReadB                 <= registerReadAS;
	 registerAddressB              <= registerAddressAS;
	 registerWriteDataB            <= registerWriteDataAS;
      end
   end

   // latch the ACK data, make it stable
   always @ ( posedge clockB ) begin
      if ( registerSelectAInB && registerAckB ) begin
	 registerErrorBS               <= registerErrorB;
	 registerReadDataBS            <= registerReadDataB;
      end
   end
   
   //============================================
   // sync ack
   //============================================
   IP_SyncFlop #(1) uDoubleSyncAck
     ( .dataOut     (registerAckBInA), 
       .clockOut    (clockA), 
       .dataIn      (registerAckBToA)
       );
   
   //============================================
   // sync other inputs
   //============================================
   always @ ( posedge clockA ) begin
      registerSelectASync           <= registerSelectA;
      registerReadAS                <= registerReadA;
      registerAddressAS             <= registerAddressA;
      registerWriteDataAS           <= registerWriteDataA;
   end

   always @ ( posedge clockA or negedge resetA ) begin
      if ( !resetA ) begin
	 registerSelectAS           <= 1'b0;
	 inProgressA                <= 1'b0;
	 registerAckBInAS           <= 1'b0;
	 registerAckA               <= 1'b0;
      end
      else begin
	 if ( registerSelectASync && !inProgressA )
	   registerSelectAS         <= 1'b1;
	 else if ( !registerSelectASync || registerAckBInA )
	   registerSelectAS         <= 1'b0;

	 if ( registerSelectASync && !inProgressA )
	   inProgressA              <= 1'b1;
	 else if ( !registerSelectASync && !registerAckBInA ) 
	   // wait till core select and ACK from B are BOTH released
	   inProgressA              <= 1'b0;

	 registerAckBInAS           <= registerAckBInA;
	 registerAckA               <= !registerAckBInA && registerAckBInAS && inProgressA;
      end
   end

   always @ ( posedge clockA ) begin
      if ( registerAckBInA && !registerAckBInAS ) begin
	 registerErrorA             <= registerErrorBS;
	 registerReadDataA          <= registerReadDataBS;
      end
   end

endmodule

