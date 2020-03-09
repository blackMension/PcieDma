module IP_RamFifoCtrl ( 
   // Outputs
   dataOut, full, empty, almostFullFlag, almostEmptyFlag, fifoDepth, overrun, underrun,
   ramWriteEnable, ramWriteAddress, ramWriteData, ramReadAddress, ramReadEnable,
   cpuReadAck, cpuReadData, 
   // Inputs
   clockCore, resetCore, push, dataIn, pop, 
   almostFullThreshold, almostEmptyThreshold, ramReadData, 
   cpuReadValid, cpuReadAddress
   );
   
   ////////////////
   // Parameters //
   ////////////////
  
   // synopsys template
   parameter   DEPTH       = 32,
               DATAWIDTH   = 32;
   
   parameter   DEPTH_M1    = DEPTH - 1;
   parameter   ADDRWIDTH   = (  DEPTH <= 2     ) ? 1 :
                             (( DEPTH <= 4     ) ? 2 :
                             (( DEPTH <= 8     ) ? 3 :
                             (( DEPTH <= 16    ) ? 4 :
                             (( DEPTH <= 32    ) ? 5 :
                             (( DEPTH <= 64    ) ? 6 :
                             (( DEPTH <= 128   ) ? 7 :
                             (( DEPTH <= 256   ) ? 8 :
                             (( DEPTH <= 512   ) ? 9 :
                             (( DEPTH <= 1024  ) ? 10 :
                             (( DEPTH <= 2048  ) ? 11 :
                             (( DEPTH <= 4096  ) ? 12 : 
                             (( DEPTH <= 8192  ) ? 13 : 
                             (( DEPTH <= 16384 ) ? 14 : 15 )))))))))))));

   parameter   ADDRWIDTHPLUS = ADDRWIDTH + 1;  

   
   /////////////////////
   // I/O Declaration //
   /////////////////////
   
   input                       clockCore;
   input 		       resetCore;
   
   input 		       push;
   input [DATAWIDTH-1:0]       dataIn;
   
   input 		       pop;
   output [DATAWIDTH-1:0]      dataOut;
   
   input [ADDRWIDTH:0] 	       almostFullThreshold;  
   input [ADDRWIDTH:0] 	       almostEmptyThreshold;  
   
   output 		       full;
   output 		       empty;
   output 		       almostFullFlag;
   output 		       almostEmptyFlag;
   output [ADDRWIDTH:0]        fifoDepth;
   
   output                      overrun;
   output                      underrun;

   output 		       ramWriteEnable;
   output [ADDRWIDTH-1:0]      ramWriteAddress;  
   output [DATAWIDTH-1:0]      ramWriteData;
   output [ADDRWIDTH-1:0]      ramReadAddress; 
   input [DATAWIDTH-1:0]       ramReadData; 
   output 		       ramReadEnable;
   
   input 		       cpuReadValid;
   input [ADDRWIDTH-1:0]       cpuReadAddress;
   output 		       cpuReadAck;
   output [DATAWIDTH-1:0]      cpuReadData;
   
   ///////////////
   // Registers //
   ///////////////
   
   reg			almostEmptyFlag;
   reg			almostFullFlag;
   reg			cpuReadAck;
   reg			empty;
   reg [ADDRWIDTH:0]	fifoDepth;
   
   reg		        overrun;
   reg		        underrun;
   
   reg [DATAWIDTH-1:0] 	dataOut;          // final flop stage
   reg [DATAWIDTH-1:0] 	stagingFlop;      // staging flop

   reg [ADDRWIDTH-1:0] 	wrPtr;            // RAM's write pointer
   reg [ADDRWIDTH-1:0] 	rdPtr;            // RAM's read pointer
   
   reg [ADDRWIDTH:0] 	wordsInRam;       // number of valid words in RAM
   reg 			ramHasData;       // If set, RAM has data inside

   reg 			stagingFlopValid; // valid data in the staging flop
   reg                  ramDataValid;     // valid data at RAM's output
   reg 			dataOutValid;

   wire 		ramPop;           // Pop data from the RAM
   wire 		ramPush;
   
   wire 		validPush;
   wire 		validPop;
   
   wire 		full;
   

   reg [ADDRWIDTH:0] 	nextFifoDepth;
   
   reg [1:0] 		selB;
   reg 			selA;
   reg 			pushIntoDataOut;
   reg 			popFromStaging;
   reg [DATAWIDTH-1:0] 	dataIntoDataOut;
   reg 			pushIntoStaging;
   reg [DATAWIDTH-1:0] 	dataIntoStaging;

   reg 			fifoFull;
   reg 			fifoEmpty;
      
   assign 		validPush  = push & (!fifoFull || pop);
   assign 		validPop   = pop & !fifoEmpty;

   always @ (*) begin
      case ( {validPush, validPop} )
	2'b00: nextFifoDepth   = fifoDepth;
	2'b01: nextFifoDepth   = fifoDepth - 1'b1;
	2'b10: nextFifoDepth   = fifoDepth + 1'b1;
	2'b11: nextFifoDepth   = fifoDepth;
      endcase // case( {validPush, validPop} )
   end

   always @ ( posedge clockCore or negedge resetCore ) begin
      if ( !resetCore ) begin
	 fifoDepth <= 0;
      end
      else begin
	 fifoDepth <= nextFifoDepth;
      end
   end

   always @ ( posedge clockCore or negedge resetCore ) begin
      if ( !resetCore ) begin
	 overrun  <= 1'd0;
      end
      else if (push & ~pop & fifoFull) begin
	 overrun  <= 1'd1;
      end
   end

   always @ ( posedge clockCore or negedge resetCore ) begin
      if ( !resetCore ) begin
         underrun <= 1'd0;
      end
      else if (pop & empty) begin
         underrun <= 1'd1;
      end
   end

   always @ ( posedge clockCore or negedge resetCore ) begin
      if ( !resetCore ) begin
	 empty           <= 1'b1;
	 fifoEmpty       <= 1'b1;
	 almostEmptyFlag <= 1'b1;
	 almostFullFlag  <= 1'b0;
	 fifoFull        <= 1'b0;
      end
      else begin
	 empty           <= ( nextFifoDepth == 0 );
	 fifoEmpty       <= ( nextFifoDepth == 0 );
	 almostEmptyFlag <= ( nextFifoDepth <= almostEmptyThreshold );
	 almostFullFlag  <= ( nextFifoDepth >= almostFullThreshold );
	 fifoFull        <= ( nextFifoDepth == DEPTH );
      end
   end
	
   assign full = fifoFull;
   	
   //==================================================
   // decide critical mux select
   //                                                                              
   //                                                                              
   //                                          |\                                  
   //                                          | \                                 
   //------------------------------------------|  \                                
   // |      |                                 |   \                               
   // |      |        |\                       |    \                              
   // |      |        | \        |--|          |    |    |--|                      
   // |      |        |  \       |  |----------|    -----|  |                      
   // |      |--------|A |-------|/\|          | B  |    |/\|                      
   // |               |  |       |--|          |    |    |--|                      
   // |          |----|  /                     |    |                              
   // |          |    | /               -------|   /                               
   // |          |    |/                |      |  /                                
   // |          |                      |      | /                                 
   // |  |----|  |                      |      |/                                  
   // |--|    ---------------------------                                          
   //    |RAM |                                                                    
   //    |----|                                                                    
   //                                                                              
   //                                                                              
   //                                                                              
   //                                                                              
   //  
   always @ (*) begin
      if ( !dataOutValid || ( dataOutValid & pop & !stagingFlopValid & !ramDataValid ) )
	selB = 2'b00; // select from push
      else if ( stagingFlopValid )
	selB = 2'b01; // select from staging flop
      else 
        selB = 2'b10; // select from RAM
   end

   always @ (*) begin
      if ( ( (ramDataValid || stagingFlopValid) & !pop ) || ramHasData )
	selA = 1'b1;
      else
	selA = 1'b0;
   end

   always @ (*) begin
      case ( selB )
	2'b00: begin
	   pushIntoDataOut = validPush;
	   dataIntoDataOut = dataIn;
	   popFromStaging  = 1'b0;
	end
	2'b01: begin
	   pushIntoDataOut = stagingFlopValid;
	   dataIntoDataOut = stagingFlop;
	   popFromStaging  = pop;
	end
	2'b10, 2'b11: begin
	   pushIntoDataOut = ramDataValid;
	   dataIntoDataOut = ramReadData;
	   popFromStaging  = 1'b0;
	end
      endcase // case( selA )
   end // always @ (...

   always @ (*) begin
      case ( selA )
	1'b0: begin
	   pushIntoStaging = validPush && ( selB != 2'b00 );
	   dataIntoStaging = dataIn;
	end
	1'b1: begin
	   pushIntoStaging = ramDataValid & !pop;
	   dataIntoStaging = ramReadData;
	end
      endcase // case( selB )
   end // always @ (...
   
   always @ ( posedge clockCore or negedge resetCore ) begin
      if ( !resetCore ) begin
	 stagingFlopValid       <= 1'b0;
	 dataOutValid           <= 1'b0;
      end
      else begin
	 if ( pushIntoStaging )
	   stagingFlopValid     <= 1'b1;
	 else if ( popFromStaging )
	   stagingFlopValid     <= 1'b0;

	 if ( pushIntoDataOut )
	   dataOutValid         <= 1'b1;
	 else if ( pop )
	   dataOutValid         <= 1'b0;
      end
   end

   always @ ( posedge clockCore ) begin
      if ( !dataOutValid || pop )
	dataOut     <= dataIntoDataOut;

      if ( !stagingFlopValid || popFromStaging )
	stagingFlop <= dataIntoStaging;
   end
   
   //============================================================
   // Decide when to read from RAM
   assign ramPush = validPush & (selA != 1'b0) & ( selB != 2'b00 );
   
   always @ ( posedge clockCore or negedge resetCore ) begin
      if ( !resetCore ) begin
	 ramHasData       <= 1'b0;
	 wordsInRam       <= {ADDRWIDTHPLUS{1'b0}};
      end
      else begin
	 case ( {ramPush, ramPop} )
	   2'b00: ;        // no change
	   2'b01: begin
	      wordsInRam  <= wordsInRam - 1'b1;
	      ramHasData  <= ( wordsInRam > 1 );
	   end
	   2'b10: begin
	      wordsInRam  <= wordsInRam + 1'b1;
	      ramHasData  <= 1'b1;
	   end
	   2'b11: ;        // no change
	 endcase // case( {ramPush, ramPop} )
      end // else: !if( resetCore )
   end // always @ ( posedge clockCore )
   
   assign ramPop        = pop & ramHasData; // always pop when RAM has data
   assign ramReadEnable = ramHasData;

   always @ ( posedge clockCore ) begin
      ramDataValid <= ramPop;
   end

   //============================================================
   // RAM read and write address
   always @ ( posedge clockCore or negedge resetCore ) begin
      if ( !resetCore ) begin
	 wrPtr       <= 0;
	 rdPtr       <= 0;
      end
      else begin
	 if ( push )
	   wrPtr     <= ( wrPtr == DEPTH_M1 ) ? 0 : wrPtr + 1'b1;

	 if ( ramPop || (push & !ramPush) )
	   rdPtr     <= ( rdPtr == DEPTH_M1 ) ? 0 : rdPtr + 1'b1;
      end // else: !if( resetCore )
   end // always @ ( posedge clockCore )

   //===========================================================
   // CPU access
   
   assign ramWriteEnable  = validPush;
   assign ramWriteAddress = wrPtr;
   assign ramWriteData    = dataIn;
   assign ramReadAddress  = cpuReadValid ? cpuReadAddress : rdPtr;
   
   always @ ( posedge clockCore or negedge resetCore ) begin
      if ( !resetCore ) begin
	 cpuReadAck <= 1'b0;
      end
      else begin
	 cpuReadAck <= cpuReadValid & !cpuReadAck;
      end
   end

   assign cpuReadData     = ramReadData;

   // synopsys translate_off
   // assert_overrun :	assert property (@ (posedge clockCore) disable iff (resetCore!=1'd1) !(push & ~pop & fifoFull))
   //                                                             else $fatal(0,"%m %t [FATAL] : Fifo overrun,\t ",$time);	
   
   // assert_underrun : assert property (@ (posedge clockCore) disable iff (resetCore!=1'd1) !(pop & empty))
   //                                                          else $fatal(0,"%m %t [FATAL] : Fifo underrun,\t ",$time);

   // assert_push_unknown : assert property (@ (posedge clockCore) disable iff (resetCore!=1'd1) ((push == 1'd1) | (push == 1'd0)) )
   //                                                              else $fatal(0,"%m %t [FATAL] : push unknown,\t ",$time);	

   // assert_pop_unknown : assert property (@ (posedge clockCore) disable iff (resetCore!=1'd1) ((pop == 1'd1) | (pop == 1'd0)) )
   //                                                             else $fatal(0,"%m %t [FATAL] : pop unknown,\t ",$time);	

   // assert_rwaddr :	assert property (@ (posedge clockCore) disable iff (resetCore!=1'd1) (!((ramWriteAddress==ramReadAddress) && ramWriteEnable && ramReadEnable)) )
   //                                                             else $fatal(0,"%m %t [FATAL] : r/w address are the same @ raddr=0x%h, waddr=0x%h,\t ",$time, ramReadAddress, ramWriteAddress);	

   // `ifdef FIFO_ANALYSIS                                                                                                               
   // //FIFO_ANALYSIS                                                                                                                    
   // int    maxFifoDepth;                                                                                                               
   // real    usage;                                                                                                                     
                                                                                                                                      
   // always @(fifoDepth) begin                                                                                                          
   //     if(fifoDepth > maxFifoDepth) begin                                                                                             
   //         maxFifoDepth = fifoDepth;                                                                                                  
   //     end                                                                                                                            
   // end                                                                                                                                
                                                                                                                                      
   // final begin : FIFO_ANALYSIS                                                                                                        
   //     usage = maxFifoDepth * 100.0 / DEPTH;                                                                                     
   //     if (usage > 80 ) begin                                                                                                         
   //         $display ("%m  Fifo Depth %3d, maxFifoDepth %3d, UsageHigh %3.2f%s" , DEPTH, maxFifoDepth, usage, "%");             
   //     end else if (usage < 20) begin                                                                                                 
   //         $display ("%m  Fifo Depth %3d, maxFifoDepth %3d, UsageLow %3.2f%s" , DEPTH, maxFifoDepth, usage, "%");              
   //     end else begin                                                                                                                 
   //         $display ("%m  Fifo Depth %3d, maxFifoDepth %3d, Usage %3.2f%s" , DEPTH, maxFifoDepth, usage, "%");                 
   //     end                                                                                                                            
   // end : FIFO_ANALYSIS                                                                                                                
                                                                                                                                      
   // // `endif         
   
   // synopsys translate_on

endmodule // IP_RamFifoCtrl

