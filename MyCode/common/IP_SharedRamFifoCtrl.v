module IP_SharedRamFifoCtrl (/*autoarg*/
    //Inputs
    clock, reset, push, pushQ, pushData, 
    pop, popQ, almostFullThrd, ramRdData, 

    //Outputs
    popData, qEmpty, almostFull, full, initDone, 
    ramWrEn, ramWrAddr, ramWrData, ramRdEn, 
    ramRdAddr
);

   //------------------------------------------------
   // Parameters Declarations
   //------------------------------------------------
   parameter  QUEUE        = 4,
              DEPTH        = 128,
              DATAWIDTH    = 128;

   parameter  QWIDTH       = ( QUEUE <=2)   ? 1 :
                             ((QUEUE <=4)   ? 2 :
                             ((QUEUE <=8)   ? 3 :
                             ((QUEUE <=16)  ? 4 :
                             ((QUEUE <=32)  ? 5 :
                             ((QUEUE <=64)  ? 6 :
                             ((QUEUE <=128) ? 7 : 8 ))))));
   parameter   ADDRWIDTH   = ( DEPTH <= 2 ) ? 1 :
                             (( DEPTH <= 4 ) ? 2 :
                             (( DEPTH <= 8 ) ? 3 :
                             (( DEPTH <= 16 ) ? 4 :
                             (( DEPTH <= 32 ) ? 5 :
                             (( DEPTH <= 64 ) ? 6 :
                             (( DEPTH <= 128 ) ? 7 :
                             (( DEPTH <= 256 ) ? 8 :
                             (( DEPTH <= 512 ) ? 9 :
                             (( DEPTH <= 1024 ) ? 10 :
                             (( DEPTH <= 2048 ) ? 11 :
                             (( DEPTH <= 4096 ) ? 12 : 
                             (( DEPTH <= 8192 ) ? 13 : 
                             (( DEPTH <= 16384 ) ? 14 : 15 )))))))))))));

   parameter   [ADDRWIDTH-1:0] DEPTH_M1 = DEPTH-1;

   //------------------------------------------------
   // Interface Declarations
   //------------------------------------------------
   // clock & rst
   input                    clock;
   input                    reset;

   // fifo control
   input                    push;
   input  [QWIDTH-1:0]      pushQ;
   input  [DATAWIDTH-1:0]   pushData;
   input                    pop;
   input  [QWIDTH-1:0]      popQ;
   output [DATAWIDTH-1:0]   popData;
   output [QUEUE-1:0]       qEmpty;
   output                   almostFull;
   output                   full;
   output                   initDone;
   input  [ADDRWIDTH:0]     almostFullThrd;

   // ram control
   output                   ramWrEn;
   output  [ADDRWIDTH-1:0]  ramWrAddr;
   output  [DATAWIDTH-1:0]  ramWrData;
   output                   ramRdEn;
   output  [ADDRWIDTH-1:0]  ramRdAddr;
   input   [DATAWIDTH-1:0]  ramRdData;

   //------------------------------------------------
   // Output Declarations
   //------------------------------------------------
   wire    [DATAWIDTH-1:0]  popData;
   wire    [QUEUE-1:0]      qEmpty;
   wire                     almostFull;
   wire                     full;
   wire                     ramWrEn;
   wire    [ADDRWIDTH-1:0]  ramWrAddr;
   wire    [DATAWIDTH-1:0]  ramWrData;
   wire                     ramRdEn;
   wire    [ADDRWIDTH-1:0]  ramRdAddr;

   //------------------------------------------------
   // Local Declarations
   //------------------------------------------------
   // PtrArray
   reg   [ADDRWIDTH-1:0]    linkListArray[0:DEPTH-1];
   
   reg   [ADDRWIDTH-1:0]    headPtrArray[0:QUEUE-1];
   reg   [ADDRWIDTH-1:0]    tailPtrArray[0:QUEUE-1];
   reg   [QUEUE-1:0]        qEmptyArray;

   // control
   wire                     wrQEmpty;
   wire                     enqValid;
   wire                     deqValid;
   wire                     sameQ;

   // Queue
   wire  [ADDRWIDTH-1:0]    pushQHeadPtr;
   wire  [ADDRWIDTH-1:0]    pushQTailPtr;
   wire  [ADDRWIDTH-1:0]    popQHeadPtr;
   wire  [ADDRWIDTH-1:0]    popQTailPtr;

   // linklist control
   // init
   reg                      init;
   wire                     initDone;
   reg   [ADDRWIDTH-1:0]    initCnt;

   // freelist
   wire                     freeListEmpty;
   reg   [ADDRWIDTH:0]      freeListCnt;
   reg   [ADDRWIDTH-1:0]    freeListHead;
   reg   [ADDRWIDTH-1:0]    freeListTail;

   // occupy
   reg   [ADDRWIDTH:0]      bufferCnt;

   //------------------------------------------------
   // Main Function
   //------------------------------------------------
   assign qEmpty       = qEmptyArray;
   assign almostFull   = bufferCnt >= almostFullThrd;
   assign full         = freeListEmpty;
   assign wrQEmpty     = qEmptyArray[pushQ];
   assign rdQEmpty     = qEmptyArray[popQ];
   assign pushQHeadPtr = headPtrArray[pushQ];
   assign pushQTailPtr = tailPtrArray[pushQ];
   assign popQHeadPtr  = headPtrArray[popQ];
   assign popQTailPtr  = tailPtrArray[popQ];
   assign sameQ        = enqValid && deqValid && (pushQ == popQ);
   
   //////////////////////
   // write data
   //////////////////////
   assign enqValid  = push && !freeListEmpty;

   assign ramWrEn   = enqValid;
   assign ramWrAddr = freeListHead;
   assign ramWrData = pushData;

   //////////////////////
   // read data
   //////////////////////
   assign deqValid  = pop && !rdQEmpty;
   
   assign ramRdEn   = deqValid;
   assign ramRdAddr = popQHeadPtr;
   assign popData   = ramRdData;

   //////////////////////
   // Queue
   //////////////////////
   always @(posedge clock) begin
      if(enqValid && (wrQEmpty || ((popQHeadPtr == popQTailPtr) && sameQ))) begin
         headPtrArray[pushQ] <= freeListHead;
      end
      if(deqValid && !(popQHeadPtr == popQTailPtr)) begin
         headPtrArray[popQ]  <= linkListArray[popQHeadPtr];
      end
   end

   always @(posedge clock) begin
      if(enqValid) begin
         tailPtrArray[pushQ] <= freeListHead;
      end
   end

   // Queue Empty
   always @(posedge clock or negedge reset) begin
      if(!reset) begin
         qEmptyArray <= {QUEUE{1'b1}};
      end
      else begin
         if(enqValid && wrQEmpty) begin
            qEmptyArray[pushQ] <= 1'b0;
         end
         if(deqValid && (popQHeadPtr == popQTailPtr) && !sameQ) begin
            qEmptyArray[popQ]  <= 1'b1;
         end
      end
   end

   //////////////////////
   // Link list
   //////////////////////
   // init
   always @(posedge clock or negedge reset) begin
      if(!reset) begin
         init <= 1'b0;
      end
      else begin
         if(initDone) begin
            init <= 1'b0;
         end 
         else begin
            init <= 1'b1;
         end
      end
   end

   always @(posedge clock or negedge reset) begin
      if(!reset) begin
         initCnt <= {ADDRWIDTH{1'b0}};
      end
      else begin
         if(init && !initDone) begin
            initCnt <= initCnt + 1'b1;
         end
      end
   end

   assign initDone = (initCnt == DEPTH_M1);

   always @(posedge clock) begin
      if(init) begin
         linkListArray[initCnt] <= initCnt + 1'b1;
      end
      else begin
         if(enqValid && !wrQEmpty) begin
            linkListArray[pushQTailPtr] <= freeListHead;
         end
         if(deqValid) begin
            linkListArray[freeListTail] <= popQHeadPtr;
         end
      end
   end   

   //////////////////////
   // Free list
   //////////////////////
   always @(posedge clock or negedge reset) begin
      if(!reset) begin
         freeListCnt <= DEPTH;
      end
      else begin
         if(enqValid && !deqValid) begin
            freeListCnt <= freeListCnt - 1'b1;
         end
         else if(!enqValid && deqValid) begin
            freeListCnt <= freeListCnt + 1'b1;
         end
      end
   end   

   assign freeListEmpty = ~(|freeListCnt);

   always @(posedge clock or negedge reset) begin
      if(!reset) begin
         freeListHead <= {ADDRWIDTH{1'b0}};
      end
      else begin
         if(deqValid && freeListEmpty) begin
            freeListHead <= popQHeadPtr;
         end
         else if(enqValid) begin
            freeListHead <= linkListArray[freeListHead];
         end
      end
   end

   always @(posedge clock or negedge reset) begin
      if(!reset) begin
         freeListTail <= DEPTH_M1;
      end
      else begin
         if(deqValid) begin
            freeListTail <= popQHeadPtr;
         end
      end
   end

   //////////////////////
   // Occupy
   //////////////////////
   always @(posedge clock or negedge reset) begin
      if(!reset) begin
         bufferCnt <= {ADDRWIDTH+1{1'b0}};
      end
      else begin
         if(enqValid && !deqValid) begin
            bufferCnt <= bufferCnt + 1'b1;
         end
         else if(!enqValid && deqValid) begin
            bufferCnt <= bufferCnt - 1'b1;
         end
      end
   end

   //------------------------------------------------
   // For Verification
   //------------------------------------------------
   // synopsys translate_off
   
   assert_overrun  : assert property (@ (posedge clock) disable iff (reset!=1'd1) !(push & full))
   				                     else $fatal(0,"%m %t [FATAL] : Fifo overrun! ",$time);
   assert_underrun : assert property (@ (posedge clock) disable iff (reset!=1'd1) !(pop & qEmpty[popQ]))
   				                     else $fatal(0,"%m %t [FATAL] : Fifo underrun! ",$time);
   assert_push_unkown : assert property (@ (posedge clock) disable iff (reset!=1'd1) ((push == 1'd1) | (push == 1'd0) | !(push && $isunknown(pushQ))))
   							else $fatal(0,"%m %t [FATAL] : push unknown!",$time);
   assert_pop_unkown  : assert property (@ (posedge clock) disable iff (reset!=1'd1) ((pop == 1'd1) | (pop == 1'd0) | !(pop && $isunknown(popQ))))
   							else $fatal(0,"%m %t [FATAL] : pop unknown!",$time);
   assert_init : assert property (@ (posedge clock) disable iff (reset!=1'd1) !((push | pop) & !initDone))
   							else $fatal(0,"%m %t [FATAL] : Please Wait Init DONE! ",$time);
   
   reg [ADDRWIDTH-1:0] addr;
   
   final begin: FINAL_CHECK
      if(freeListCnt != DEPTH) begin
         $fatal(0,"%m %t [FATAL] : Free List Leak! FreeListCnt == %d.",$time,freeListCnt);
      end
      if(qEmpty != {QUEUE{1'b1}}) begin
         $fatal(0,"%m %t [FATAL] : FIFO NOT Emtpy! qEmpty == %h.",$time,qEmpty);
      end
   
      // check link list
      addr = freeListHead;
      for(int i=0;i<DEPTH-1;i++) begin
         // $display("[Free List][%d] addr = %d, content = %d",i,addr,linkListArray[addr]);
         addr = linkListArray[addr];
      end
      if(addr != freeListTail) begin
         $fatal(0,"%m %t [FATAL] : Free List Error! FreeListHead = %h, FreeListTail = %h",$time,freeListHead,freeListTail);
      end
   end : FINAL_CHECK
   
   // synopsys translate_on

endmodule

