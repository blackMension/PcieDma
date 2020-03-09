module IP_AsyncFifo8( 
   // Outputs
   dataOut, dataOutValid, fifoFull, fifoEmpty, fifoOccup, overTxThreshold,
   // Inputs
   writeClock, readClock, reset, dataIn, push, pop, fullThreshold, txThreshold
);

   //synopsys template
   parameter FIFO_WIDTH        = 32;
   
   input                       writeClock;
   input 		       readClock;
   input 		       reset;
   input [FIFO_WIDTH-1:0]      dataIn;
   input 		       push;
   input 		       pop;
   input [3:0]      	       fullThreshold;
   input [3:0]      	       txThreshold;
   
   output [FIFO_WIDTH-1:0]     dataOut;
   output 		       dataOutValid;
   output 		       fifoFull;
   output 		       fifoEmpty;
   output [3:0]      	       fifoOccup;
   output 		       overTxThreshold;
   wire 		       fifoEmpty;

   reg [FIFO_WIDTH-1:0]        dataOut;
   reg 			       dataOutValid;
   reg [FIFO_WIDTH-1:0]        fifoData0, fifoData1, fifoData2, fifoData3,
			       fifoData4, fifoData5, fifoData6, fifoData7;
   reg [3:0] 		       fifoWritePtrGray, fifoWritePtr;
   wire [3:0] 		       fifoReadPtrGrayS2;
   wire [3:0] 		       fifoWritePtrGrayS2;
   reg [3:0] 		       fifoReadPtrGray, fifoReadPtr;
   wire 		       resetWriteS2, resetReadS2;

   wire 		       fifoRealFull;

   wire 		       internalPop;
   
   //-------------------------------------------------------------
   // Write side
   //-------------------------------------------------------------
   wire 	incFifoWritePtr  = push & !fifoRealFull;
   
   wire [3:0]   fifoWritePtrD 
      = incFifoWritePtr ? ( fifoWritePtr + 4'h1 ) : fifoWritePtr;
   
   // Gray code conversion
   // Equation:
   //      symbols:        G[N-1:0] gray code
   //                      B[N-1:0] binary code
   //
   //              G[N-1] = B[N-1] ^ 1'b0;
   //              G[i]   = B[i+1] ^ B[i], where 0 <= i <= N-2;
   wire [3:0] 	fifoWritePtrGrayD 
		= {fifoWritePtrD[3],
		   fifoWritePtrD[2] ^ fifoWritePtrD[3],
		   fifoWritePtrD[1] ^ fifoWritePtrD[2],
		   fifoWritePtrD[0] ^ fifoWritePtrD[1]};
   
   wire [3:0] 	fifoReadPtrBin;
   assign 	fifoReadPtrBin[3] = fifoReadPtrGrayS2[3];
   assign       fifoReadPtrBin[2] = fifoReadPtrGrayS2[2] ^ fifoReadPtrBin[3];
   assign       fifoReadPtrBin[1] = fifoReadPtrGrayS2[1] ^ fifoReadPtrBin[2];
   assign       fifoReadPtrBin[0] = fifoReadPtrGrayS2[0] ^ fifoReadPtrBin[1];

   wire [3:0] 	fifoDepth = fifoWritePtr - fifoReadPtrBin;
   
   assign 	fifoRealFull = ( fifoWritePtr[3]!= fifoReadPtrBin[3] ) && 	
                ( fifoWritePtr[2:0] == fifoReadPtrBin[2:0] );

   wire 	fifoFull = fifoDepth > fullThreshold;
   
   wire [FIFO_WIDTH-1:0] fifoData0D 
      = (incFifoWritePtr & fifoWritePtr[2:0]==3'b000) ? dataIn : fifoData0;
   wire [FIFO_WIDTH-1:0] fifoData1D 
      = (incFifoWritePtr & fifoWritePtr[2:0]==3'b001) ? dataIn : fifoData1;
   wire [FIFO_WIDTH-1:0] fifoData2D 
      = (incFifoWritePtr & fifoWritePtr[2:0]==3'b010) ? dataIn : fifoData2;
   wire [FIFO_WIDTH-1:0] fifoData3D 
      = (incFifoWritePtr & fifoWritePtr[2:0]==3'b011) ? dataIn : fifoData3;
   wire [FIFO_WIDTH-1:0] fifoData4D 
      = (incFifoWritePtr & fifoWritePtr[2:0]==3'b100) ? dataIn : fifoData4;
   wire [FIFO_WIDTH-1:0] fifoData5D 
      = (incFifoWritePtr & fifoWritePtr[2:0]==3'b101) ? dataIn : fifoData5;
   wire [FIFO_WIDTH-1:0] fifoData6D 
      = (incFifoWritePtr & fifoWritePtr[2:0]==3'b110) ? dataIn : fifoData6;
   wire [FIFO_WIDTH-1:0] fifoData7D 
      = (incFifoWritePtr & fifoWritePtr[2:0]==3'b111) ? dataIn : fifoData7;

   // sync Reset
   IP_ResetSync  uDoubleSyncResetWrite
   ( .resetOut     (resetWriteS2), 
     .clock        (writeClock), 
     .resetIn      (reset)
   );
   
   // sync gray read ptr
   IP_SyncFlop #(4) uDoubleSyncReadPtrGray
   ( .dataOut     (fifoReadPtrGrayS2), 
     .clockOut    (writeClock), 
     .dataIn      (fifoReadPtrGray)
   );
   
   // FIFO Registers
   always @(posedge writeClock or negedge resetWriteS2 )
     if (!resetWriteS2)
       begin
          fifoData0		    <= {FIFO_WIDTH{1'b0}};
          fifoData1		    <= {FIFO_WIDTH{1'b0}};
          fifoData2		    <= {FIFO_WIDTH{1'b0}};
          fifoData3		    <= {FIFO_WIDTH{1'b0}};
          fifoData4		    <= {FIFO_WIDTH{1'b0}};
          fifoData5		    <= {FIFO_WIDTH{1'b0}};
          fifoData6		    <= {FIFO_WIDTH{1'b0}};
          fifoData7		    <= {FIFO_WIDTH{1'b0}};
          fifoWritePtrGray	    <= 4'd0;
          fifoWritePtr		    <= 4'd0;
       end
     else
       begin
          fifoData0		    <= fifoData0D;
          fifoData1		    <= fifoData1D;
          fifoData2		    <= fifoData2D;
          fifoData3		    <= fifoData3D;
          fifoData4		    <= fifoData4D;
          fifoData5		    <= fifoData5D;
          fifoData6		    <= fifoData6D;
          fifoData7		    <= fifoData7D;
          fifoWritePtrGray	    <= fifoWritePtrGrayD;
          fifoWritePtr		    <= fifoWritePtrD;
       end

   //-------------------------------------------------------------------
   // Read Side
   //-------------------------------------------------------------------
   assign internalPop  = pop || !dataOutValid;
   
   wire incFifoReadPtr = internalPop & !fifoEmpty;

   wire [3:0] fifoReadPtrD 
     = incFifoReadPtr ? ( fifoReadPtr + 4'h1 ) : fifoReadPtr;

   wire [3:0] fifoReadPtrGrayD 
	      = {fifoReadPtrD[3],
		 fifoReadPtrD[2] ^ fifoReadPtrD[3],
		 fifoReadPtrD[1] ^ fifoReadPtrD[2],
		 fifoReadPtrD[0] ^ fifoReadPtrD[1]};
   
   wire [3:0] fifoWritePtrBin;
   assign  fifoWritePtrBin[3] = fifoWritePtrGrayS2[3];
   assign  fifoWritePtrBin[2] = fifoWritePtrGrayS2[2] ^ fifoWritePtrBin[3];
   assign  fifoWritePtrBin[1] = fifoWritePtrGrayS2[1] ^ fifoWritePtrBin[2];
   assign  fifoWritePtrBin[0] = fifoWritePtrGrayS2[0] ^ fifoWritePtrBin[1];

   assign       fifoEmpty = (fifoReadPtr == fifoWritePtrBin);
   assign       fifoOccup = (fifoWritePtrBin - fifoReadPtr);
   assign       overTxThreshold = (fifoOccup > txThreshold);

   wire [FIFO_WIDTH-1:0] dataOutD 
      = ((fifoReadPtr[2:0] == 0) ? fifoData0 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[2:0] == 1) ? fifoData1 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[2:0] == 2) ? fifoData2 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[2:0] == 3) ? fifoData3 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[2:0] == 4) ? fifoData4 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[2:0] == 5) ? fifoData5 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[2:0] == 6) ? fifoData6 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[2:0] == 7) ? fifoData7 : {FIFO_WIDTH{1'b0}});   
     
   // sync Reset
   IP_ResetSync  uDoubleSyncResetRead
   ( .resetOut     (resetReadS2), 
     .clock        (readClock), 
     .resetIn      (reset)
   );
   
   // sync gray write ptr
   IP_SyncFlop #(4) uDoubleSyncWritePtrGray
   ( .dataOut     (fifoWritePtrGrayS2), 
     .clockOut    (readClock), 
     .dataIn      (fifoWritePtrGray)
   );
   
   always @ (posedge readClock or negedge resetReadS2)
     begin
        if ( !resetReadS2 )
          begin
             fifoReadPtrGray		<= 4'd0;
             fifoReadPtr		<= 4'd0;
             dataOutValid               <= 1'd0;	     
	     dataOut                    <= {FIFO_WIDTH{1'b0}};
           end
        else
          begin
             fifoReadPtrGray		<= fifoReadPtrGrayD;
             fifoReadPtr		<= fifoReadPtrD;
	     if ( incFifoReadPtr ) 
	       dataOutValid             <= 1'b1;
	     else if ( pop ) // pop and not inc fifo ptr
	       dataOutValid             <= 1'b0;
	     if ( incFifoReadPtr ) 
	       dataOut                  <= dataOutD;	     
          end
     end // always @ (posedge readClock)
   
     // synopsys translate_off
     assert_overrun :	assert property (@ (posedge writeClock) disable iff (reset!=1'd1) !(push & fifoRealFull))
                                                                else $fatal(0,"%m %t [FATAL] : Fifo overrun,\t ",$time);	
     assert_underrun : assert property (@ (posedge readClock) disable iff (reset!=1'd1) !(pop & !dataOutValid))
                                                                else $fatal(0,"%m %t [FATAL] : Fifo underrun,\t ",$time);
     // synopsys translate_on

endmodule // IP_AsyncFifo8

