module Loop(
    /*AUTOARG*/
   // Outputs
   ackFifoPush, ackFifoDataIn, recvHdrFifoPush, recvHdrFifoDataIn,
   dataPop, QN, push, pushData, bufRegister, rgstrNum, bufRelease,
   // Inputs
   clock, reset, ackFifoFull, recvHdrFifoFull, rdmaControl, rdmaWR,
   infoValid, dataOut, ready, emptyArray, rgstrPtr, lastNum, poolFull,
   poolEmpty
   );
   input           clock;
   input           reset;
//  Ack Fifo
    output          ackFifoPush;
    output  [15:0]  ackFifoDataIn;
    input           ackFifoFull;

// Recv Fifo
    output           recvHdrFifoPush;
    output  [15:0]   recvHdrFifoDataIn;
    input            recvHdrFifoFull;

// TO HeaderGen
    input [15:0]   rdmaControl;
    input [47:0]   rdmaWR;
    input          infoValid;

//SendBuffer To Rdma (data out)
    input   [255:0]  dataOut;
    output           dataPop;
    input            ready;
    input   [3:0]    emptyArray;
// RecvBuffer To Rdma (data in)
    output  [3:0]    QN;
    output           push;
    output  [255:0]  pushData;
// RecvBuffer register
    output           bufRegister;
    output  [2:0]    rgstrNum;
    output           bufRelease;
    input   [5:0]    rgstrPtr;
    input   [5:0]    lastNum;
    input            poolFull;
    input            poolEmpty;

    parameter       SEND_OPCODE = 4'b0000;
    parameter       RCV_OPCODE  = 4'b0001;
    parameter       REQ_OPCODE  = 4'b0011;
    parameter       ACK_OPCODE  = 4'b0111;

    wire [15:0]     fifoData;
    wire            written;
    reg             readyF1;
    always @(posedge clock or negedge reset) begin
        if(!reset) begin
            readyF1 <= 1'd0;
        end
        else begin
            readyF1 <= ready;
        end
    end
    assign written = readyF1 & ~ready;
    assign  QN = ~emptyArray[0] ? 4'd0 :
                 ~emptyArray[1] ? 4'd1 :
                 ~emptyArray[2] ? 4'd2 : 4'd3;
    assign  pushData = dataOut;
    assign  push    = ready;
    assign  dataPop = push;
    // TODO : Transfer Data From SQ to RQ;
    // Adjust the loop path , push ack and hdr when the data are ready;
    //
    wire   infoFull;
    wire   infoEmpty;
    wire   infoPush;
    wire   infoPop;
    wire [55:0] dataIn;
    wire [55:0] infoDataOut;
    wire [7:0]  rdmaControlOut;
    wire [47:0] rdmaWROut;
    assign infoPush = infoValid & ~infoFull;
    assign dataIn = {rdmaControl,rdmaWR};
    assign {rdmaControlOut,rdmaWROut} = infoDataOut;
    GenRegFifo8D56W uInfoFifo(
        // Outputs;
        .dataOut                            (infoDataOut),
        .full                               (infoFull),
        .empty                              (infoEmpty)  ,
        .almostFullFlag                     (),
        .almostEmptyFlag                    (),
        .fifoDepth                          (),
        .overrun                            (),
        .underrun                           (),
        // Inputs
        .clockCore                          (clock),
        .resetCore                          (reset),
        .push                               (infoPush) ,
        .dataIn                             (dataIn)  ,
        .pop                                (infoPop),
        .almostFullThreshold                (4'd8),
        .almostEmptyThreshold               (4'd0)
    );
    wire  isReq = (rdmaControlOut[7:0] == REQ_OPCODE)& ~infoEmpty;
    wire  isAck = (rdmaControlOut[7:0] == ACK_OPCODE)& ~infoEmpty;
    wire  isRcv = (rdmaControlOut[7:0]  == RCV_OPCODE)& ~infoEmpty;
    wire  isSend = (rdmaControlOut[7:0] == SEND_OPCODE)& ~infoEmpty;


    assign ackFifoDataIn = {rdmaWROut[47:40],rdmaWROut[7:0]};
    assign recvHdrFifoDataIn = {rdmaWROut[47:40],rdmaWROut[7:0]};
    assign ackFifoPush     = isReq  & ~ackFifoFull;
    assign recvHdrFifoPush = isAck  & ~recvHdrFifoFull & (|emptyArray);

    assign infoPop = ackFifoPush | recvHdrFifoPush | (isSend & ~infoEmpty);

    //  buffer register
    reg    isAckF1;
    assign bufRegister = isAck & ~isAckF1 ;
    assign rgstrNum = rdmaWROut[42:40];
    reg releaseF1;
    always @(posedge clock or negedge reset) begin
        if(!reset) begin
            releaseF1 <= 1'd0;
            isAckF1 <= 1'b0;
        end
        else begin
            releaseF1 <= bufRegister;
            isAckF1 <= isAck;
        end
    end
    assign bufRelease = releaseF1;
endmodule // Loop
