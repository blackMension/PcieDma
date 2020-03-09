module IP_AsyncFifo32(/*AUTOARG*/
   // Outputs
   dataOut, dataOutValid, fifoFull, fifoEmpty, fifoOccup, 
   overTxThreshold, 
   // Inputs
   writeClock, readClock, reset, dataIn, push, pop, fullThreshold, 
   txThreshold
   );

   //synopsys template
   parameter FIFO_WIDTH        = 32;
   
   input                       writeClock;
   input 		       readClock;
   input 		       reset;
   input [FIFO_WIDTH-1:0]      dataIn;
   input 		       push;
   input 		       pop;
   input [5:0]                 fullThreshold;
   input [5:0]                 txThreshold;
   
   output [FIFO_WIDTH-1:0]     dataOut;
   output 		       dataOutValid;
   output 		       fifoFull;
   output 		       fifoEmpty;
   output [5:0]		       fifoOccup;
   output 		       overTxThreshold;
   wire 		       fifoEmpty;

   reg [FIFO_WIDTH-1:0]        dataOut;
   reg 			       dataOutValid;
   reg [FIFO_WIDTH-1:0]        fifoData0, fifoData1, fifoData2, fifoData3,
			       fifoData4, fifoData5, fifoData6, fifoData7;
   reg [FIFO_WIDTH-1:0]        fifoData8, fifoData9, fifoData10, fifoData11,
			       fifoData12, fifoData13, fifoData14, fifoData15;
   reg [FIFO_WIDTH-1:0]        fifoData16, fifoData17, fifoData18, fifoData19,
			       fifoData20, fifoData21, fifoData22, fifoData23,
			       fifoData24, fifoData25, fifoData26, fifoData27,
			       fifoData28, fifoData29, fifoData30, fifoData31;
   reg [5:0] 		       fifoWritePtrGray, fifoWritePtr;
   wire [5:0] 		       fifoReadPtrGrayS2;
   wire [5:0] 		       fifoWritePtrGrayS2;
   reg [5:0] 		       fifoReadPtrGray, fifoReadPtr;

   wire 		       resetWriteS2, resetReadS2;

   wire 		       fifoRealFull;

   wire 		       internalPop;
   
   //-------------------------------------------------------------
   // Write side
   //-------------------------------------------------------------
   wire 	incFifoWritePtr  = push & !fifoRealFull;
   
   wire [5:0]   fifoWritePtrD 
      = incFifoWritePtr ? ( fifoWritePtr + 1'b1 ) : fifoWritePtr;
   
   // Gray code conversion
   // Equation:
   //      symbols:        G[N-1:0] gray code
   //                      B[N-1:0] binary code
   //
   //              G[N-1] = B[N-1] ^ 1'b0;
   //              G[i]   = B[i+1] ^ B[i], where 0 <= i <= N-2;
   wire [5:0] 	fifoWritePtrGrayD 
		= {fifoWritePtrD[5],
		   fifoWritePtrD[4] ^ fifoWritePtrD[5],
		   fifoWritePtrD[3] ^ fifoWritePtrD[4],
		   fifoWritePtrD[2] ^ fifoWritePtrD[3],
		   fifoWritePtrD[1] ^ fifoWritePtrD[2],
		   fifoWritePtrD[0] ^ fifoWritePtrD[1]};
   
   wire [5:0] 	fifoReadPtrBin;
   assign 	fifoReadPtrBin[5] = fifoReadPtrGrayS2[5];
   assign       fifoReadPtrBin[4] = fifoReadPtrGrayS2[4] ^ fifoReadPtrBin[5];
   assign       fifoReadPtrBin[3] = fifoReadPtrGrayS2[3] ^ fifoReadPtrBin[4];
   assign       fifoReadPtrBin[2] = fifoReadPtrGrayS2[2] ^ fifoReadPtrBin[3];
   assign       fifoReadPtrBin[1] = fifoReadPtrGrayS2[1] ^ fifoReadPtrBin[2];
   assign       fifoReadPtrBin[0] = fifoReadPtrGrayS2[0] ^ fifoReadPtrBin[1];

   wire [5:0] 	fifoDepth = fifoWritePtr - fifoReadPtrBin;
   
   assign 	fifoRealFull = ( fifoWritePtr[5]!= fifoReadPtrBin[5] ) && 	
                ( fifoWritePtr[4:0] == fifoReadPtrBin[4:0] );

   assign 	fifoFull = fifoDepth > fullThreshold;
   
   wire [FIFO_WIDTH-1:0] fifoData0D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b00000) ? dataIn : fifoData0;
   wire [FIFO_WIDTH-1:0] fifoData1D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b00001) ? dataIn : fifoData1;
   wire [FIFO_WIDTH-1:0] fifoData2D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b00010) ? dataIn : fifoData2;
   wire [FIFO_WIDTH-1:0] fifoData3D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b00011) ? dataIn : fifoData3;
   wire [FIFO_WIDTH-1:0] fifoData4D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b00100) ? dataIn : fifoData4;
   wire [FIFO_WIDTH-1:0] fifoData5D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b00101) ? dataIn : fifoData5;
   wire [FIFO_WIDTH-1:0] fifoData6D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b00110) ? dataIn : fifoData6;
   wire [FIFO_WIDTH-1:0] fifoData7D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b00111) ? dataIn : fifoData7;
   wire [FIFO_WIDTH-1:0] fifoData8D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b01000) ? dataIn : fifoData8;
   wire [FIFO_WIDTH-1:0] fifoData9D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b01001) ? dataIn : fifoData9;
   wire [FIFO_WIDTH-1:0] fifoData10D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b01010) ? dataIn : fifoData10;
   wire [FIFO_WIDTH-1:0] fifoData11D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b01011) ? dataIn : fifoData11;
   wire [FIFO_WIDTH-1:0] fifoData12D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b01100) ? dataIn : fifoData12;
   wire [FIFO_WIDTH-1:0] fifoData13D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b01101) ? dataIn : fifoData13;
   wire [FIFO_WIDTH-1:0] fifoData14D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b01110) ? dataIn : fifoData14;
   wire [FIFO_WIDTH-1:0] fifoData15D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b01111) ? dataIn : fifoData15;
   wire [FIFO_WIDTH-1:0] fifoData16D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b10000) ? dataIn : fifoData16;
   wire [FIFO_WIDTH-1:0] fifoData17D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b10001) ? dataIn : fifoData17;
   wire [FIFO_WIDTH-1:0] fifoData18D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b10010) ? dataIn : fifoData18;
   wire [FIFO_WIDTH-1:0] fifoData19D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b10011) ? dataIn : fifoData19;
   wire [FIFO_WIDTH-1:0] fifoData20D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b10100) ? dataIn : fifoData20;
   wire [FIFO_WIDTH-1:0] fifoData21D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b10101) ? dataIn : fifoData21;
   wire [FIFO_WIDTH-1:0] fifoData22D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b10110) ? dataIn : fifoData22;
   wire [FIFO_WIDTH-1:0] fifoData23D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b10111) ? dataIn : fifoData23;
   wire [FIFO_WIDTH-1:0] fifoData24D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b11000) ? dataIn : fifoData24;
   wire [FIFO_WIDTH-1:0] fifoData25D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b11001) ? dataIn : fifoData25;
   wire [FIFO_WIDTH-1:0] fifoData26D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b11010) ? dataIn : fifoData26;
   wire [FIFO_WIDTH-1:0] fifoData27D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b11011) ? dataIn : fifoData27;
   wire [FIFO_WIDTH-1:0] fifoData28D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b11100) ? dataIn : fifoData28;
   wire [FIFO_WIDTH-1:0] fifoData29D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b11101) ? dataIn : fifoData29;
   wire [FIFO_WIDTH-1:0] fifoData30D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b11110) ? dataIn : fifoData30;
   wire [FIFO_WIDTH-1:0] fifoData31D 
      = (incFifoWritePtr & fifoWritePtr[4:0]==5'b11111) ? dataIn : fifoData31;

   // sync Reset
   IP_ResetSync  uDoubleSyncResetWrite
   ( .resetOut     (resetWriteS2), 
     .clock        (writeClock), 
     .resetIn      (reset)
   );
   
   // sync gray read ptr
   IP_SyncFlop #(6) uDoubleSyncReadPtrGray
   ( .dataOut     (fifoReadPtrGrayS2), 
     .clockOut    (writeClock), 
     .dataIn      (fifoReadPtrGray)
   );
   
   // FIFO Registers
   always @(posedge writeClock or negedge resetWriteS2)
     if (!resetWriteS2)
       begin
          fifoData0		    <=  {FIFO_WIDTH{1'b0}};
          fifoData1		    <=  {FIFO_WIDTH{1'b0}};
          fifoData2		    <=  {FIFO_WIDTH{1'b0}};
          fifoData3		    <=  {FIFO_WIDTH{1'b0}};
          fifoData4		    <=  {FIFO_WIDTH{1'b0}};
          fifoData5		    <=  {FIFO_WIDTH{1'b0}};
          fifoData6		    <=  {FIFO_WIDTH{1'b0}};
          fifoData7		    <=  {FIFO_WIDTH{1'b0}};
          fifoData8		    <=  {FIFO_WIDTH{1'b0}};
          fifoData9		    <=  {FIFO_WIDTH{1'b0}};
          fifoData10		    <=  {FIFO_WIDTH{1'b0}};
          fifoData11		    <=  {FIFO_WIDTH{1'b0}};
          fifoData12		    <=  {FIFO_WIDTH{1'b0}};
          fifoData13		    <=  {FIFO_WIDTH{1'b0}};
          fifoData14		    <=  {FIFO_WIDTH{1'b0}};
          fifoData15		    <=  {FIFO_WIDTH{1'b0}};
          fifoData16		    <=  {FIFO_WIDTH{1'b0}};
          fifoData17		    <=  {FIFO_WIDTH{1'b0}};
          fifoData18		    <=  {FIFO_WIDTH{1'b0}};
          fifoData19		    <=  {FIFO_WIDTH{1'b0}};
          fifoData20		    <=  {FIFO_WIDTH{1'b0}};
          fifoData21		    <=  {FIFO_WIDTH{1'b0}};
          fifoData22		    <=  {FIFO_WIDTH{1'b0}};
          fifoData23		    <=  {FIFO_WIDTH{1'b0}};
          fifoData24		    <=  {FIFO_WIDTH{1'b0}};
          fifoData25		    <=  {FIFO_WIDTH{1'b0}};
          fifoData26		    <=  {FIFO_WIDTH{1'b0}};
          fifoData27		    <=  {FIFO_WIDTH{1'b0}};
          fifoData28		    <=  {FIFO_WIDTH{1'b0}};
          fifoData29		    <=  {FIFO_WIDTH{1'b0}};
          fifoData30		    <=  {FIFO_WIDTH{1'b0}};
          fifoData31		    <=  {FIFO_WIDTH{1'b0}};
          fifoWritePtrGray	    <=  6'd0;
          fifoWritePtr		    <=  6'd0;
       end
     else
       begin
          fifoData0		    <=  fifoData0D;
          fifoData1		    <=  fifoData1D;
          fifoData2		    <=  fifoData2D;
          fifoData3		    <=  fifoData3D;
          fifoData4		    <=  fifoData4D;
          fifoData5		    <=  fifoData5D;
          fifoData6		    <=  fifoData6D;
          fifoData7		    <=  fifoData7D;
          fifoData8		    <=  fifoData8D;
          fifoData9		    <=  fifoData9D;
          fifoData10		    <=  fifoData10D;
          fifoData11		    <=  fifoData11D;
          fifoData12		    <=  fifoData12D;
          fifoData13		    <=  fifoData13D;
          fifoData14		    <=  fifoData14D;
          fifoData15		    <=  fifoData15D;
          fifoData16		    <=  fifoData16D;
          fifoData17		    <=  fifoData17D;
          fifoData18		    <=  fifoData18D;
          fifoData19		    <=  fifoData19D;
          fifoData20		    <=  fifoData20D;
          fifoData21		    <=  fifoData21D;
          fifoData22		    <=  fifoData22D;
          fifoData23		    <=  fifoData23D;
          fifoData24		    <=  fifoData24D;
          fifoData25		    <=  fifoData25D;
          fifoData26		    <=  fifoData26D;
          fifoData27		    <=  fifoData27D;
          fifoData28		    <=  fifoData28D;
          fifoData29		    <=  fifoData29D;
          fifoData30		    <=  fifoData30D;
          fifoData31		    <=  fifoData31D;
          fifoWritePtrGray	    <=  fifoWritePtrGrayD;
          fifoWritePtr		    <=  fifoWritePtrD;
       end

   //-------------------------------------------------------------------
   // Read Side
   //-------------------------------------------------------------------
   assign internalPop  = pop || !dataOutValid;
   
   wire incFifoReadPtr = internalPop & !fifoEmpty;

   wire [5:0] fifoReadPtrD 
     = incFifoReadPtr ? ( fifoReadPtr + 6'b1 ) : fifoReadPtr;

   wire [5:0] fifoReadPtrGrayD 
	      = {fifoReadPtrD[5],
		 fifoReadPtrD[4] ^ fifoReadPtrD[5],
		 fifoReadPtrD[3] ^ fifoReadPtrD[4],
		 fifoReadPtrD[2] ^ fifoReadPtrD[3],
		 fifoReadPtrD[1] ^ fifoReadPtrD[2],
		 fifoReadPtrD[0] ^ fifoReadPtrD[1]};
   
   wire [5:0] fifoWritePtrBin;
   assign  fifoWritePtrBin[5] = fifoWritePtrGrayS2[5];
   assign  fifoWritePtrBin[4] = fifoWritePtrGrayS2[4] ^ fifoWritePtrBin[5];
   assign  fifoWritePtrBin[3] = fifoWritePtrGrayS2[3] ^ fifoWritePtrBin[4];
   assign  fifoWritePtrBin[2] = fifoWritePtrGrayS2[2] ^ fifoWritePtrBin[3];
   assign  fifoWritePtrBin[1] = fifoWritePtrGrayS2[1] ^ fifoWritePtrBin[2];
   assign  fifoWritePtrBin[0] = fifoWritePtrGrayS2[0] ^ fifoWritePtrBin[1];

   assign       fifoEmpty = (fifoReadPtr == fifoWritePtrBin);
   assign       fifoOccup = (fifoWritePtrBin - fifoReadPtr);
   assign       overTxThreshold = (fifoOccup > txThreshold);

   wire [FIFO_WIDTH-1:0] dataOutD 
      = ((fifoReadPtr[4:0] == 5'd0 )  ? fifoData0  : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd1 )  ? fifoData1  : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd2 )  ? fifoData2  : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd3 )  ? fifoData3  : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd4 )  ? fifoData4  : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd5 )  ? fifoData5  : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd6 )  ? fifoData6  : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd7 )  ? fifoData7  : {FIFO_WIDTH{1'b0}}) |
	((fifoReadPtr[4:0] == 5'd8 )  ? fifoData8  : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd9 )  ? fifoData9  : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd10)  ? fifoData10 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd11)  ? fifoData11 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd12)  ? fifoData12 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd13)  ? fifoData13 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd14)  ? fifoData14 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd15)  ? fifoData15 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd16 ) ? fifoData16 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd17 ) ? fifoData17 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd18 ) ? fifoData18 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd19 ) ? fifoData19 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd20 ) ? fifoData20 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd21 ) ? fifoData21 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd22 ) ? fifoData22 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd23 ) ? fifoData23 : {FIFO_WIDTH{1'b0}}) |
	((fifoReadPtr[4:0] == 5'd24 ) ? fifoData24 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd25 ) ? fifoData25 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd26)  ? fifoData26 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd27)  ? fifoData27 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd28)  ? fifoData28 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd29)  ? fifoData29 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd30)  ? fifoData30 : {FIFO_WIDTH{1'b0}}) |
        ((fifoReadPtr[4:0] == 5'd31)  ? fifoData31 : {FIFO_WIDTH{1'b0}});   
     
   // sync Reset
   IP_ResetSync  uDoubleSyncResetRead
   ( .resetOut     (resetReadS2), 
     .clock        (readClock), 
     .resetIn      (reset)
   );
   
   // sync gray write ptr
   IP_SyncFlop #(6) uDoubleSyncWritePtrGray
   ( .dataOut     (fifoWritePtrGrayS2), 
     .clockOut    (readClock), 
     .dataIn      (fifoWritePtrGray)
   );
   
   always @(posedge readClock or negedge resetReadS2)
     begin
        if ( !resetReadS2 )
          begin
             fifoReadPtrGray		<=  6'd0;
             fifoReadPtr		<=  6'd0;
             dataOutValid               <=  1'b0;	     
	     dataOut                    <=  {FIFO_WIDTH{1'b0}};
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
     // synopsys translate_on
   
endmodule // IP_AsyncFifo32
