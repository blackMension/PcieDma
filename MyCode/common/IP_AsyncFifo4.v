// Async Fifo w/ 8 depth. If you do not need the fifoOccup and overTxThreshold,
// you can just ignore the output and tied the txThreshold to 0.
// NOTE: Default fullThreshold should be 4 for 8 deep FIFO if don't care.

module IP_AsyncFifo4( 
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
   input [2:0]      	       fullThreshold;
   input [2:0]      	       txThreshold;
   
   output [FIFO_WIDTH-1:0]     dataOut;
   output 		       dataOutValid;
   output 		       fifoFull;
   output 		       fifoEmpty;
   output [2:0]      	       fifoOccup;
   output 		       overTxThreshold;
   wire 		       fifoEmpty;

   reg [FIFO_WIDTH-1:0]        dataOut;
   reg 			       dataOutValid;
   reg [FIFO_WIDTH-1:0]        fifoData0, fifoData1, fifoData2, fifoData3;
   reg [2:0] 		       fifoWritePtrGray, fifoWritePtr;
   wire [2:0] 		       fifoReadPtrGrayS2;
   wire [2:0] 		       fifoWritePtrGrayS2;
   reg [2:0] 		       fifoReadPtrGray, fifoReadPtr;
   wire 		       resetWriteS2, resetReadS2;

   wire 		       fifoRealFull;

   wire 		       internalPop;
   
   //-------------------------------------------------------------
   // Write side
   //-------------------------------------------------------------
   wire 	incFifoWritePtr  = push & !fifoRealFull;
   
   wire [2:0]   fifoWritePtrD 
      = incFifoWritePtr ? ( fifoWritePtr + 3'h1 ) : fifoWritePtr;
   
   // Gray code conversion
   // Equation:
   //      symbols:        G[N-1:0] gray code
   //                      B[N-1:0] binary code
   //
   //              G[N-1] = B[N-1] ^ 1'b0;
   //              G[i]   = B[i+1] ^ B[i], where 0 <= i <= N-2;
   wire [2:0] 	fifoWritePtrGrayD 
		= {fifoWritePtrD[2],
		   fifoWritePtrD[1] ^ fifoWritePtrD[2],
		   fifoWritePtrD[0] ^ fifoWritePtrD[1]};
   
   wire [2:0] 	fifoReadPtrBin;
   assign 	fifoReadPtrBin = {fifoReadPtrGrayS2[2],
				  fifoReadPtrGrayS2[1] ^ fifoReadPtrBin[2],
				  fifoReadPtrGrayS2[0] ^ fifoReadPtrBin[1]};

   wire [2:0] 	fifoDepth = fifoWritePtr - fifoReadPtrBin;
   
   assign 	fifoRealFull = ( fifoWritePtr[2]!= fifoReadPtrBin[2] ) && 	
                ( fifoWritePtr[1:0] == fifoReadPtrBin[1:0] );

   wire 	fifoFull = fifoDepth > fullThreshold;
   
   wire [FIFO_WIDTH-1:0] fifoData0D 
      = (incFifoWritePtr & fifoWritePtr[1:0]==2'b00) ? dataIn : fifoData0;
   wire [FIFO_WIDTH-1:0] fifoData1D 
      = (incFifoWritePtr & fifoWritePtr[1:0]==2'b01) ? dataIn : fifoData1;
   wire [FIFO_WIDTH-1:0] fifoData2D 
      = (incFifoWritePtr & fifoWritePtr[1:0]==2'b10) ? dataIn : fifoData2;
   wire [FIFO_WIDTH-1:0] fifoData3D 
      = (incFifoWritePtr & fifoWritePtr[1:0]==2'b11) ? dataIn : fifoData3;

   // sync Reset
   IP_SyncFlop #(1) uDoubleSyncResetWrite
     ( .dataOut     (resetWriteS2), 
       .clockOut    (writeClock), 
       .dataIn      (reset)
       );
   
   // sync gray read ptr
   IP_SyncFlop #(3) uDoubleSyncReadPtrGray
     ( .dataOut     (fifoReadPtrGrayS2), 
       .clockOut    (writeClock), 
       .dataIn      (fifoReadPtrGray)
       );
   
   // FIFO Registers
   always @(posedge writeClock or negedge resetWriteS2 )
     if (!resetWriteS2)
       begin
          fifoData0		    <=  0;
          fifoData1		    <=  0;
          fifoData2		    <=  0;
          fifoData3		    <=  0;
          fifoWritePtrGray	    <=  0;
          fifoWritePtr		    <=  0;
       end
     else
       begin
          fifoData0		    <=  fifoData0D;
          fifoData1		    <=  fifoData1D;
          fifoData2		    <=  fifoData2D;
          fifoData3		    <=  fifoData3D;
          fifoWritePtrGray	    <=  fifoWritePtrGrayD;
          fifoWritePtr		    <=  fifoWritePtrD;
       end

   //-------------------------------------------------------------------
   // Read Side
   //-------------------------------------------------------------------
   assign internalPop  = pop || !dataOutValid;
   
   wire incFifoReadPtr = internalPop & !fifoEmpty;

   wire [2:0] fifoReadPtrD 
     = incFifoReadPtr ? ( fifoReadPtr + 3'h1 ) : fifoReadPtr;

   wire [2:0] fifoReadPtrGrayD 
	      = {fifoReadPtrD[2],
		 fifoReadPtrD[1] ^ fifoReadPtrD[2],
		 fifoReadPtrD[0] ^ fifoReadPtrD[1]};
   
   wire [2:0] fifoWritePtrBin;
   assign  fifoWritePtrBin 
	      = {fifoWritePtrGrayS2[2],
                 fifoWritePtrGrayS2[1] ^ fifoWritePtrBin[2],
                 fifoWritePtrGrayS2[0] ^ fifoWritePtrBin[1]};

   assign       fifoEmpty = (fifoReadPtr == fifoWritePtrBin);
   assign       fifoOccup = (fifoWritePtrBin - fifoReadPtr);
   assign       overTxThreshold = (fifoOccup > txThreshold);

   wire [FIFO_WIDTH-1:0] dataOutD 
      = ((fifoReadPtr[1:0] == 0) ? fifoData0 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[1:0] == 1) ? fifoData1 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[1:0] == 2) ? fifoData2 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[1:0] == 3) ? fifoData3 : {FIFO_WIDTH{1'b0}}) ;
     
   // sync Reset
   IP_SyncFlop #(1) uDoubleSyncResetRead
     ( .dataOut     (resetReadS2), 
       .clockOut    (readClock), 
       .dataIn      (reset)
       );
   
   // sync gray write ptr
   IP_SyncFlop #(3) uDoubleSyncWritePtrGray
     ( .dataOut     (fifoWritePtrGrayS2), 
       .clockOut    (readClock), 
       .dataIn      (fifoWritePtrGray)
       );
   
   always @ (posedge readClock or negedge resetReadS2)
     begin
        if ( !resetReadS2 )
          begin
             fifoReadPtrGray		<=  0;
             fifoReadPtr		<=  0;
             dataOutValid               <=  0;	     
	     dataOut                    <=  0;
           end
        else
          begin
             fifoReadPtrGray		<=  fifoReadPtrGrayD;
             fifoReadPtr		<=  fifoReadPtrD;
	     if ( incFifoReadPtr ) 
	       dataOutValid             <=  1'b1;
	     else if ( pop ) // pop and not inc fifo ptr
	       dataOutValid             <=  1'b0;
	     if ( incFifoReadPtr ) 
	       dataOut                  <=  dataOutD;	     
          end
     end // always @ (posedge readClock)
   
// synopsys translate_off
	assert_overrun :	assert property (@ (posedge writeClock) disable iff (reset!=1'd1) !(push & fifoRealFull))
							else $fatal(0,"%m %t [FATAL] : Fifo overrun,\t ",$time);	
	assert_underrun : assert property (@ (posedge readClock) disable iff (reset!=1'd1) !(pop & !dataOutValid))
							else $fatal(0,"%m %t [FATAL] : Fifo underrun,\t ",$time);

`ifdef FIFO_ANALYSIS                                                                                                               
//FIFO_ANALYSIS                                                                                                                    
int    maxFifoDepth;                                                                                                               
real    usage;                                                                                                                     
                                                                                                                                   
always @(fifoDepth) begin                                                                                                          
    if(fifoDepth > maxFifoDepth) begin                                                                                             
        maxFifoDepth = fifoDepth[2:0];                                                                                                  
    end                                                                                                                            
end                                                                                                                                
                                                                                                                                   
final begin : FIFO_ANALYSIS                                                                                                        
    usage = maxFifoDepth * 100.0 / 8;                                                                                     
    if (usage > 80 ) begin                                                                                                         
        $display ("%m  Fifo Depth %3d, maxFifoDepth %3d, UsageHigh %3.2f%s" , 8, maxFifoDepth, usage, "%");             
    end else if (usage < 20) begin                                                                                                 
        $display ("%m  Fifo Depth %3d, maxFifoDepth %3d, UsageLow %3.2f%s" , 8, maxFifoDepth, usage, "%");              
    end else begin                                                                                                                 
        $display ("%m  Fifo Depth %3d, maxFifoDepth %3d, Usage %3.2f%s" , 8, maxFifoDepth, usage, "%");                 
    end                                                                                                                            
end : FIFO_ANALYSIS                                                                                                                
                                                                                                                                   
`endif                                                                                                                             

// synopsys translate_on


endmodule // IP_AsyncFifo4
