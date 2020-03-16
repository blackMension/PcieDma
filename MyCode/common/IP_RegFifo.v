module IP_RegFifo ( 
   // Outputs
   dataOut, full, empty, almostFullFlag, almostEmptyFlag, fifoDepth, overrun, underrun,
   // Inputs
   clockCore, resetCore, push, dataIn, pop, 
   almostFullThreshold, almostEmptyThreshold
   );

////////////////
// Parameters //
////////////////

// synopsys template
parameter   DEPTH       = 32,
            DATAWIDTH 	= 32;

parameter   DEPTH_M1    = DEPTH - 1;
parameter   DEPTH_M2    = DEPTH - 2;
parameter   ADDRWIDTH   = (  DEPTH <= 2    ) ? 1 :
                          (( DEPTH <= 4    ) ? 2 :
                          (( DEPTH <= 8    ) ? 3 :
                          (( DEPTH <= 16   ) ? 4 :
                          (( DEPTH <= 32   ) ? 5 :
                          (( DEPTH <= 64   ) ? 6 :
                          (( DEPTH <= 128  ) ? 7 :
                          (( DEPTH <= 256  ) ? 8 :
                          (( DEPTH <= 512  ) ? 9 :
                          (( DEPTH <= 1024 ) ? 10 :
                          (( DEPTH <= 2048 ) ? 11 : 12 ))))))))));

/////////////////////
// I/O Declaration //
/////////////////////

input                	clockCore;
input                  	resetCore;

input                  	push;
input  [DATAWIDTH-1:0] 	dataIn;

input		      	pop;
output [DATAWIDTH-1:0]	dataOut;

input  [ADDRWIDTH:0]	almostFullThreshold;  
input  [ADDRWIDTH:0]	almostEmptyThreshold;  

output			full;
output			empty;
output			almostFullFlag;
output			almostEmptyFlag;
output [ADDRWIDTH:0]	fifoDepth;

output                  overrun;
output                  underrun;

///////////////
// Registers //
///////////////

reg [ADDRWIDTH-1:0]     wrPtr;
reg [ADDRWIDTH-1:0]     rdPtr;
reg [ADDRWIDTH:0]       fifoCnt;
reg [ADDRWIDTH:0]       fifoCntAll;
reg [ADDRWIDTH:0]       nxtFifoCntAddOp;
reg                     empty;
reg                     aEmpty;
reg                     aFull;
reg			fifoFull;
reg			fifoEmpty;
reg                     vld;
reg [DATAWIDTH-1:0]     dataOut;
reg [DATAWIDTH-1:0]     fifoMem[DEPTH_M2:0];

reg		        overrun;
reg		        underrun;

///////////
// Wires //
///////////

wire ffLd                        = pop | ~vld;
wire fifoPush                    = push & vld & ~( pop & fifoEmpty );
wire fifoPop                     = ffLd & ~fifoEmpty;
wire vldFifoPush		 = fifoPush & ~( fifoFull & ~fifoPop );
wire vldFifoPop			 = fifoPop & ~fifoEmpty;
wire full			 = fifoFull;
wire nxtVld 			 = ffLd ? ( ~fifoEmpty | push ) : vld;
wire nxtVldCnt			 = nxtVld ? 1'b1 : 1'b0;
wire [ADDRWIDTH:0] nxtFifoCnt    = fifoCnt + nxtFifoCntAddOp;
wire [ADDRWIDTH:0] nxtFifoCntAll = nxtFifoCnt + nxtVldCnt;
wire [DATAWIDTH-1:0] dataOutMux  = fifoEmpty ? dataIn : fifoMem[rdPtr];


////////////////////
// Update Outputs //
////////////////////

assign almostFullFlag          = aFull;
assign almostEmptyFlag         = aEmpty;
assign fifoDepth	       = fifoCntAll;

/////////////////
// Code starts //
/////////////////

always @ ( posedge clockCore or negedge resetCore ) begin
   if ( !resetCore ) begin
      overrun <= 1'd0;
   end
   else if (push & ~pop & fifoFull) begin
      overrun <= 1'd1;
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
      wrPtr <= {ADDRWIDTH{1'b0}};
   end  
   else if ( vldFifoPush ) begin
      wrPtr <= ( wrPtr == DEPTH_M2 ) ? {ADDRWIDTH{1'b0}} : (wrPtr + 1'b1);
   end
end

always @ ( posedge clockCore or negedge resetCore ) begin
   if ( !resetCore ) begin
     rdPtr <= {ADDRWIDTH{1'b0}};
   end  
   else if ( vldFifoPop ) begin
     rdPtr <= ( rdPtr == DEPTH_M2 ) ? {ADDRWIDTH{1'b0}} : (rdPtr + 1'b1);
   end
end

always @ ( posedge clockCore or negedge resetCore ) begin
  if ( !resetCore ) begin
    fifoCnt    <= {(ADDRWIDTH+1){1'b0}};
    fifoCntAll <= {(ADDRWIDTH+1){1'b0}};
    fifoEmpty  <= 1'b1;
    fifoFull   <= 1'b0;
    aEmpty     <= 1'b0;
    empty      <= 1'b1;
    aFull      <= 1'b0;
  end
  else begin

    fifoCnt    <= nxtFifoCnt;
    fifoCntAll <= nxtFifoCntAll;
    fifoEmpty  <= ( nxtFifoCnt == {(ADDRWIDTH+1){1'b0}} );
    fifoFull   <= ( nxtFifoCnt == DEPTH_M1 );
    empty      <= ( nxtFifoCntAll == {(ADDRWIDTH+1){1'b0}} );
    aEmpty     <= ( nxtFifoCntAll <= almostEmptyThreshold );
    aFull      <= ( nxtFifoCntAll >= almostFullThreshold );
  end
end

always @ (*) begin
   case ({ vldFifoPush, vldFifoPop })
     2'b10: nxtFifoCntAddOp   = {{ ADDRWIDTH { 1'b0 }}, 1'b1 };
     2'b01: nxtFifoCntAddOp   = { ADDRWIDTH+1 { 1'b1 }};
     default: nxtFifoCntAddOp = { ADDRWIDTH+1 { 1'b0 }};
   endcase 
end

always @ ( posedge clockCore or negedge resetCore ) begin
   if ( !resetCore ) begin
     vld     <= 1'd0;
     dataOut <= {DATAWIDTH{1'b0}};
   end
   else if ( ffLd ) begin
     vld     <= ~fifoEmpty | push;
     dataOut <= dataOutMux;
   end
end

always @ ( posedge clockCore ) begin
   if ( vldFifoPush ) begin
      fifoMem[wrPtr] <= dataIn;
   end
end


// // synopsys translate_off
// assert_overrun : assert property (@ (posedge clockCore) disable iff (resetCore!=1'd1) !(push & ~pop & fifoFull))
//                                                         else $fatal(0,"%m %t [FATAL] : Fifo overrun,\t ",$time);	

// assert_underrun : assert property (@ (posedge clockCore) disable iff (resetCore!=1'd1) !(pop & empty))
//                                                          else $fatal(0,"%m %t [FATAL] : Fifo underrun,\t ",$time);

// assert_push_unknown : assert property (@ (posedge clockCore) disable iff (resetCore!=1'd1) ((push == 1'd1) | (push == 1'd0)) )
//                                                              else $fatal(0,"%m %t [FATAL] : push unknown,\t ",$time);	

// assert_pop_unknown : assert property (@ (posedge clockCore) disable iff (resetCore!=1'd1) ((pop == 1'd1) | (pop == 1'd0)) )
//                                                             else $fatal(0,"%m %t [FATAL] : pop unknown,\t ",$time);	

// `ifdef FIFO_ANALYSIS                                                                                                               
//    //FIFO_ANALYSIS                                                                                                                    
//    int    maxFifoDepth;                                                                                                               
//    real    usage;                                                                                                                     
                                                                                                                                      
//    always @(fifoDepth) begin                                                                                                          
//        if(fifoDepth > maxFifoDepth) begin                                                                                             
//            maxFifoDepth = fifoDepth;                                                                                                  
//        end                                                                                                                            
//    end                                                                                                                                
                                                                                                                                      
//    final begin : FIFO_ANALYSIS                                                                                                        
//        usage = maxFifoDepth * 100.0 / DEPTH;                                                                                     
//        if (usage > 80 ) begin                                                                                                         
//            $display ("%m  Fifo Depth %3d, maxFifoDepth %3d, UsageHigh %3.2f%s" , DEPTH, maxFifoDepth, usage, "%");             
//        end else if (usage < 20) begin                                                                                                 
//            $display ("%m  Fifo Depth %3d, maxFifoDepth %3d, UsageLow %3.2f%s" , DEPTH, maxFifoDepth, usage, "%");              
//        end else begin                                                                                                                 
//            $display ("%m  Fifo Depth %3d, maxFifoDepth %3d, Usage %3.2f%s" , DEPTH, maxFifoDepth, usage, "%");                 
//        end                                                                                                                            
//    end : FIFO_ANALYSIS                                                                                                                
// `endif                                                                                                                             

// synopsys translate_on

endmodule // IP_RegFifo

