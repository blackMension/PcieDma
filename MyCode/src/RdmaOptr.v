// Generate the RDMA Operation
module RdmaOptr(
    /*AUTOARG*/
   // Outputs
   SqPop, RqPop, SqDmaFifoData, SqDmaFifoEmpty, SqDmaFifoDepth,
   SqDmaFifoFull, RqDmaFifoData, RqDmaFifoEmpty, RqDmaFifoDepth,
   RqDmaFifoFull, ackFifoFull, offloadFifoFull, wrDoneFifoFull,
   rdmaControl, rdmaWR, infoValid,
   // Inputs
   clock, reset, SqData, SqEmpty, SqFifoDepth, SqFull, RqData,
   RqEmpty, RqFifoDepth, RqFull, SqDmaFifoPop, RqDmaFifoPop,
   ackFifoPush, ackFifoDataIn, offloadFifoPush, offloadFifoDataIn,
   wrDoneFifoPush, wrDoneFifoDataIn,rdDmaDone,wrDmaDone
   );
// global
    input            clock;
    input            reset;
// QP to RO
    output          SqPop;
    input  [115:0]  SqData;
    input           SqEmpty;
    input           SqFifoDepth;
    input           SqFull;

    output          RqPop;
    input  [115:0]  RqData;
    input           RqEmpty;
    input           RqFifoDepth;
    input           RqFull;      

// PrefetchFifo to RT
    input           SqDmaFifoPop;
    output [115:0]  SqDmaFifoData;
    output          SqDmaFifoEmpty;
    output [4:0]    SqDmaFifoDepth;
    output          SqDmaFifoFull;

    input           RqDmaFifoPop;
    output [115:0]  RqDmaFifoData;
    output          RqDmaFifoEmpty;
    output [4:0]    RqDmaFifoDepth;
    output          RqDmaFifoFull;      
//  Ack Fifo 
    input           ackFifoPush;
    input  [27:0]   ackFifoDataIn;
    output          ackFifoFull;

// Recv Fifo
    input           offloadFifoPush;
    input  [7:0]    offloadFifoDataIn;
    output          offloadFifoFull;

// WrDone Fifo
    input           wrDoneFifoPush;
    input  [7:0]    wrDoneFifoDataIn;
    output          wrDoneFifoFull;
// TO HeaderGen
    output [15:0]   rdmaControl;
    output [51:0]   rdmaWR;
    output          infoValid;
    
// dma done
    input           rdDmaDone;
    input           wrDmaDone;

    parameter       RV = 2'b00;
    parameter       SEND_OPCODE = 4'b0000;
    parameter       RCV_OPCODE  = 4'b0001;
    parameter       REQ_OPCODE  = 4'b0011;
    parameter       ACK_OPCODE  = 4'b0111;
    parameter       IDLE = 3'd0,
                    GEN_REQ  = 3'd1,
                    GEN_ACK  = 3'd2,
                    GEN_SEND = 3'd3,
                    GEN_DMA_WRITE = 3'd4;

    wire          SqPrePop;
    wire          SqPrePush;
    wire [115:0]  SqPreData;
    wire          SqPreEmpty;
    wire [4:0]    SqPreFifoDepth;
    wire          SqPreFull;
    wire [115:0]  SqPreFifoDataIn;

    wire          RqPrePop;
    wire          RqPrePush;
    wire [115:0]  RqPreData;
    wire          RqPreEmpty;
    wire [4:0]    RqPreFifoDepth;
    wire          RqPreFull;      
    wire [115:0]  RqPreFifoDataIn;

    wire [115:0]  SqDmaFifoDataIn;
    wire          SqDmaFifoPush;
    wire [115:0]  RqDmaFifoDataIn;
    wire          RqDmaFifoPush;
//  Ack Fifo 
    wire          ackFifoPop;
    wire [27:0]   ackFifoData;
    wire          ackFifoEmpty;

// Recv Fifo
    wire          offloadFifoPop;
    wire [7:0]    offloadFifoData;
    wire          offloadFifoEmpty;
  
// WrDone Fifo
    wire          wrDoneFifoPop;
    wire [7:0]    wrDoneFifoData;
    wire          wrDoneFifoEmpty;

    wire reqArb  = ~SqEmpty & ~SqPreFull;
    wire ackArb  = ~RqEmpty & ~RqPreFull;
    wire sendArb = ~SqPreEmpty & ~ackFifoEmpty;    // store ack pkt info from remote
    wire recvArb = ~RqPreEmpty & ~offloadFifoEmpty; // store remote's Send-Packet-Header {TID,DataNum} field 

    reg  [2:0]   CS,NS;
    always @(posedge clock or negedge reset) begin
        if(!reset) begin
            CS <= IDLE;
        end
        else begin
            CS <= NS;
        end
    end
    always @(*) begin
        case(CS) 
            IDLE : NS = reqArb ? GEN_REQ : 
                        ackArb ? GEN_ACK :
                        sendArb ? GEN_SEND:
                        recvArb ? GEN_DMA_WRITE : IDLE;
            default : NS = IDLE;
        endcase
    end
    reg wrCredit;
    reg rdCredit;
    always @(posedge clock or negedge reset) begin
        if(!reset) begin
            wrCredit <= 1'd0;
            rdCredit <= 1'd0;
        end
        else begin
            if(SqDmaFifoPop)       rdCredit <= 1'd1;
            else if(rdDmaDone) rdCredit <= 1'd0;
            if(RqDmaFifoPop)       wrCredit <= 1'd1;
            else if(wrDmaDone) wrCredit <= 1'd0;
        end
    end
    assign SqPop = ( CS == GEN_REQ) & ~SqEmpty;
    assign SqPrePush = SqPop & ~SqPreFull;
    assign SqPreFifoDataIn = SqData; 

    assign RqPop = ( CS == GEN_ACK) & ~RqEmpty;
    assign RqPrePush = RqPop & ~RqPreFull;
    assign RqPreFifoDataIn = RqData; 

    assign SqPrePop =  (CS == GEN_SEND) & ~SqPreEmpty & ~ackFifoEmpty ;
    assign SqDmaFifoPush = SqPrePop & ~SqDmaFifoFull;
    assign ackFifoPop = SqDmaFifoPush;
    assign SqDmaFifoDataIn = SqPreData;

    assign RqPrePop =  (CS == GEN_DMA_WRITE) & ~RqPreEmpty & ~offloadFifoEmpty ;
    assign RqDmaFifoPush = RqPrePop & ~RqDmaFifoFull;
    assign offloadFifoPop = RqDmaFifoPush;
    assign RqDmaFifoDataIn = RqPreData;

    assign infoValid = (CS == GEN_REQ) || 
                       (CS == GEN_ACK) ||
                       (CS == GEN_SEND);
    assign rdmaWR = (CS == GEN_REQ) ? SqData[115:64] :
                    (CS == GEN_ACK) ? RqData[115:64] : SqPreData[115:64];
    assign rdmaControl = (CS == GEN_REQ) ? {RV,2'b0,REQ_OPCODE} :
                         (CS == GEN_ACK) ? {RV,2'b0,ACK_OPCODE} : {RV,2'b0,SEND_OPCODE};
GenRamFifo16D116W uSqPrefetch( // Waiting For Ack
    // Outputs;
    .dataOut                            (SqPreData),
    .full                               (SqPreFull),
    .empty                              (SqPreEmpty),
    .almostFullFlag                     (),
    .almostEmptyFlag                    (),
    .fifoDepth                          (SqPreFifoDepth),
    .overrun                            (),
    .underrun                           (),
    .cpuReadAck                         (),
    .cpuReadData                        (),
    // Inputs
    .clockCore                          (clock),
    .resetCore                          (reset),
    .push                               (SqPrePush),
    .dataIn                             (SqPreFifoDataIn),
    .pop                                (SqPrePop),
    .almostFullThreshold                (5'd16),
    .almostEmptyThreshold               (5'd0),
    .cpuReadValid                       (1'd0),
    .cpuReadAddress                     (4'd0)
    );
GenRamFifo16D116W uRqPrefetch(
    // Outputs;
    .dataOut                            (RqPreData),
    .full                               (RqPreFull),
    .empty                              (RqPreEmpty)  ,
    .almostFullFlag                     (),
    .almostEmptyFlag                    (),
    .fifoDepth                          (RqPreFifoDepth),
    .overrun                            (),
    .underrun                           (),
    .cpuReadAck                         (),
    .cpuReadData                        (),
    // Inputs
    .clockCore                          (clock),
    .resetCore                          (reset),
    .push                               (RqPrePush) ,
    .dataIn                             (RqPreFifoDataIn)   ,
    .pop                                (RqPrePop),
    .almostFullThreshold                (5'd16),
    .almostEmptyThreshold               (5'd0) ,
    .cpuReadValid                       (1'd0) ,
    .cpuReadAddress                     (4'd0)
    );
wire          SqDmaFifoEmptyInt;
wire          RqDmaFifoEmptyInt;
assign SqDmaFifoEmpty = SqDmaFifoEmptyInt | rdCredit;
assign RqDmaFifoEmpty = RqDmaFifoEmptyInt | wrCredit;
// to gen dma request
GenRamFifo16D116W uSqDmaFifo( 
    // Outputs;
    .dataOut                            (SqDmaFifoData),
    .full                               (SqDmaFifoFull),
    .empty                              (SqDmaFifoEmptyInt),
    .almostFullFlag                     (),
    .almostEmptyFlag                    (),
    .fifoDepth                          (SqDmaFifoDepth),
    .overrun                            (),
    .underrun                           (),
    .cpuReadAck                         (),
    .cpuReadData                        (),
    // Inputs
    .clockCore                          (clock),
    .resetCore                          (reset),
    .push                               (SqDmaFifoPush),
    .dataIn                             (SqDmaFifoDataIn),
    .pop                                (SqDmaFifoPop),
    .almostFullThreshold                (5'd16),
    .almostEmptyThreshold               (5'd0),
    .cpuReadValid                       (1'd0),
    .cpuReadAddress                     (4'd0)
    );
GenRamFifo16D116W uRqDmaFifo(
    // Outputs;
    .dataOut                            (RqDmaFifoData),
    .full                               (RqDmaFifoFull),
    .empty                              (RqDmaFifoEmptyInt)  ,
    .almostFullFlag                     (),
    .almostEmptyFlag                    (),
    .fifoDepth                          (RqDmaFifoDepth),
    .overrun                            (),
    .underrun                           (),
    .cpuReadAck                         (),
    .cpuReadData                        (),
    // Inputs
    .clockCore                          (clock),
    .resetCore                          (reset),
    .push                               (RqDmaFifoPush) ,
    .dataIn                             (RqDmaFifoDataIn)   ,
    .pop                                (RqDmaFifoPop),
    .almostFullThreshold                (5'd16),
    .almostEmptyThreshold               (5'd0) ,
    .cpuReadValid                       (1'd0) ,
    .cpuReadAddress                     (4'd0)
    );
    // ACK FIFO
GenRegFifo16D28W uAckFifo(
    // Outputs;
    .dataOut                            (ackFifoData),
    .full                               (ackFifoFull),
    .empty                              (ackFifoEmpty)  ,
    .almostFullFlag                     (),
    .almostEmptyFlag                    (),
    .fifoDepth                          (),
    .overrun                            (),
    .underrun                           (),
    // Inputs
    .clockCore                          (clock),
    .resetCore                          (reset),
    .push                               (ackFifoPush) ,
    .dataIn                             (ackFifoDataIn)   ,
    .pop                                (ackFifoPop),
    .almostFullThreshold                (3'd4),
    .almostEmptyThreshold               (3'd0) 
    );

    // Recv Fifo
GenRegFifo16D8W uOffloadHdrFifo(
    // Outputs;
    .dataOut                            (offloadFifoData),
    .full                               (offloadFifoFull),
    .empty                              (offloadFifoEmpty)  ,
    .almostFullFlag                     (),
    .almostEmptyFlag                    (),
    .fifoDepth                          (),
    .overrun                            (),
    .underrun                           (),
    // Inputs
    .clockCore                          (clock),
    .resetCore                          (reset),
    .push                               (offloadFifoPush ) ,
    .dataIn                             (offloadFifoDataIn)   ,
    .pop                                (offloadFifoPop),
    .almostFullThreshold                (3'd4),
    .almostEmptyThreshold               (3'd0) 
    );
    
GenRegFifo16D8W uWrDoneFifo(
    // Outputs;
    .dataOut                            (wrDoneFifoData),
    .full                               (wrDoneFifoFull),
    .empty                              (wrDoneFifoEmpty)  ,
    .almostFullFlag                     (),
    .almostEmptyFlag                    (),
    .fifoDepth                          (),
    .overrun                            (),
    .underrun                           (),
    // Inputs
    .clockCore                          (clock),
    .resetCore                          (reset),
    .push                               (wrDoneFifoPush ) ,
    .dataIn                             (wrDoneFifoDataIn)   ,
    .pop                                (wrDoneFifoPop),
    .almostFullThreshold                (3'd4),
    .almostEmptyThreshold               (3'd0) 
    );
endmodule // RdmaOptr
