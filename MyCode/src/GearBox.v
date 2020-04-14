module GearBox(
    /*AUTOARG*/
   // Outputs
   ddpPktFull, ddpPktDataOut, ddpPktPop, ddpPktDataValid, tx_eop,
   tx_sop, tx_error, tx_data, tx_empty, tx_valid, rx_ready,
   // Inputs
   clock, reset, clockMac, resetNMac, ddpPktDataIn, ddpPktPush,
   ddpPktEmpty, tx_ready, rx_valid, rx_eop, rx_sop, rx_error, rx_data,
   rx_empty
   );
input clock;
input reset;
input clockMac;
input resetNMac;

// From DdpAssmble
input  [266:0]  ddpPktDataIn; // sop : 1 , eop :1 , byteenable : 7, pkt : 256
input           ddpPktPush;
output          ddpPktFull;

// to DdpCut
output [266:0]  ddpPktDataOut; // sop : 1 , eop :1 , byteenable : 7, pkt : 256
input           ddpPktPop;
output          ddpPktDataValid;
output          ddpPktEmpty;
// MAC TX
input          tx_ready;
output         tx_eop;
output         tx_sop;
output         tx_error;
output [63:0]  tx_data;
output [2:0]   tx_empty;
output         tx_valid;
// MAC RX
input           rx_valid;
input           rx_eop;
input           rx_sop;
output          rx_ready;
input           rx_error;
input  [63:0]   rx_data;
input  [2:0]    rx_empty;

wire fifoReset = reset & resetNMac;
reg  resetF1;
reg  realResetN;
always @(posedge clock) begin
    {realResetN,resetF1} <= {resetF1,fifoReset};
end

wire         txFifoPop;
wire         txFifoDataValid;
wire [266:0] txFifoDataOut;
wire         txFifoEmpty;

wire         ddpTxSop;
wire         ddpTxEop;
wire [8:0]   ddpTxByteEnable;
wire [255:0] ddpTxPktData;
assign {ddpTxSop,ddpTxEop,ddpTxByteEnable,ddpTxPktData} = txFifoDataOut;

reg          txDataValidF1;
wire         txDataValid;
reg          txFifoPopF1;
IP_AsyncFifo32#(.FIFO_WIDTH (267))
uTxCross(
   // Outputs
   .dataOut            (txFifoDataOut),
   .dataOutValid       (txFifoDataValid),
   .fifoFull           (ddpPktFull),
   .fifoEmpty          (txFifoEmpty),
   .fifoOccup          (),
   .overTxThreshold    (),
   // Inputs
   .writeClock         (clock),
   .readClock          (clockMac),
   .reset              (realResetN),
   .dataIn             (ddpPktDataIn),
   .push               (ddpPktPush),
   .pop                (txFifoPop),
   .fullThreshold      (6'd30),
   .txThreshold        (6'd30)
   );
always @(posedge clockMac or negedge realResetN) begin
    if(!realResetN) begin
        txDataValidF1 <= 1'd0;
        txFifoPopF1 <= 1'd0;
    end
    else begin
        txDataValidF1 <= txFifoDataValid;
        txFifoPopF1   <= txFifoPop;
    end
end
assign txDataValid = txFifoDataValid & ~txDataValidF1;
wire txOneDone;

wire [63:0] txDataSlice0;
wire [63:0] txDataSlice1;
wire [63:0] txDataSlice2;
wire [63:0] txDataSlice3;

wire [2:0] txDataLenSlice0;
wire [2:0] txDataLenSlice1;
wire [2:0] txDataLenSlice2;
wire [2:0] txDataLenSlice3;

wire       txSopSlice0;

wire       txEopSlice0;
wire       txEopSlice1;
wire       txEopSlice2;
wire       txEopSlice3;

wire       txValidSlice0Int;
wire       txValidSlice1Int;
wire       txValidSlice2Int;
wire       txValidSlice3Int;

wire       txValidSlice0;
reg        txValidSlice0Lock;
reg        txValidSlice1;
reg        txValidSlice2;
reg        txValidSlice3;

wire [3:0] txLastEmptyLen;
wire       txLoadNewData;
wire [2:0] byteCount;

assign  txDataSlice0 = ddpTxPktData[255:192];
assign  txDataSlice1 = ddpTxPktData[191:128];
assign  txDataSlice2 = ddpTxPktData[127:64];
assign  txDataSlice3 = ddpTxPktData[63:0];


assign  byteCount        = ddpTxByteEnable[5:3] + {2'd0,|ddpTxByteEnable[2:0]};
assign  txLoadNewData    =  txDataValid | txFifoPopF1 & txFifoDataValid;
assign  txFifoPop        =  (tx_eop & tx_valid | (~txValidSlice0 & ~txValidSlice1 & ~txValidSlice2 & txValidSlice3 & tx_valid)) & txFifoDataValid;
assign  txValidSlice0Int =  txLoadNewData;
assign  txValidSlice1Int =  ((|byteCount[2:1]) & txLoadNewData) | txValidSlice1 & txValidSlice0 & tx_ready;
assign  txValidSlice2Int =  ((&byteCount[1:0] | byteCount[2]) & txLoadNewData) | txValidSlice2 & txValidSlice1 & tx_ready;
assign  txValidSlice3Int =  ((byteCount[2]) & txLoadNewData) | txValidSlice3 & txValidSlice2 & tx_ready;
always @(posedge clockMac or negedge realResetN) begin
    if(!realResetN) begin
        txValidSlice0Lock <= 1'd0;
    end
    else begin
        if(tx_ready) txValidSlice0Lock <= 1'd0;
        else if(txLoadNewData) txValidSlice0Lock <= 1'd1;
        else txValidSlice0Lock <= txValidSlice0Lock;
    end
end
assign txValidSlice0 = txValidSlice0Int | txValidSlice0Lock;
always @(posedge clockMac or negedge realResetN) begin
    if(!realResetN) begin
        txValidSlice1 <= 1'd0;
        txValidSlice2 <= 1'd0;
        txValidSlice3 <= 1'd0;
    end
    else begin
        txValidSlice1 <= txValidSlice1Int;
        txValidSlice2 <= txValidSlice2Int;
        txValidSlice3 <= txValidSlice3Int;
    end
end

assign txSopSlice0 = ddpTxSop;
assign txEopSlice0 = (byteCount == 3'd1) & ddpTxEop;
assign txEopSlice1 = (byteCount == 3'd2) & ddpTxEop;
assign txEopSlice2 = (byteCount == 3'd3) & ddpTxEop;
assign txEopSlice3 = (byteCount == 3'd4) & ddpTxEop;

assign  txLastEmptyLen  = 5'd8 - {2'd0,ddpTxByteEnable[2:0]};
assign  txDataLenSlice0 = txEopSlice0 ? txLastEmptyLen[2:0] : 3'd0;
assign  txDataLenSlice1 = txEopSlice1 ? txLastEmptyLen[2:0] : 3'd0;
assign  txDataLenSlice2 = txEopSlice2 ? txLastEmptyLen[2:0] : 3'd0;
assign  txDataLenSlice3 = txLastEmptyLen[2:0] ;

assign tx_sop = txValidSlice0 & txSopSlice0;
assign tx_eop = txValidSlice0 ? txEopSlice0 :
                txValidSlice1 ? txEopSlice1 :
                txValidSlice2 ? txEopSlice2 : txEopSlice3;

assign tx_empty = txValidSlice0 ? txDataLenSlice0 :
                  txValidSlice1 ? txDataLenSlice1 :
                  txValidSlice2 ? txDataLenSlice2 : txDataLenSlice3;
assign tx_data  = txValidSlice0 ? txDataSlice0 :
                  txValidSlice1 ? txDataSlice1 :
                  txValidSlice2 ? txDataSlice2 : txDataSlice3;
assign tx_valid = txValidSlice0 | txValidSlice1 | txValidSlice2 | txValidSlice3;
assign tx_error = 1'd0;
//===========================
//         RX
wire         rxFifoPush;
wire [266:0] rxFifoDataIn;
wire         rxFifoFull;

IP_AsyncFifo32#(.FIFO_WIDTH (267))
uRxCross(
   // Outputs
   .dataOut            (ddpPktDataOut),
   .dataOutValid       (ddpPktDataValid),
   .fifoFull           (rxFifoFull),
   .fifoEmpty          (ddpPktEmpty),
   .fifoOccup          (),
   .overTxThreshold    (),
   // Inputs
   .writeClock         (clockMac),
   .readClock          (clock),
   .reset              (realResetN),
   .dataIn             (rxFifoDataIn),
   .push               (rxFifoPush),
   .pop                (ddpPktPop),
   .fullThreshold      (6'd30),
   .txThreshold        (6'd30)
   );
wire [1:0] ptrInt; // 2'd3 : async Fifo
reg  [1:0] ptr;

reg [63:0] rxDataSlice0;
reg [63:0] rxDataSlice1;
reg [63:0] rxDataSlice2;

wire       rxSopSliceInt;
wire       rxEopSliceInt;
reg        rxSopSlice;
reg        rxEopSlice;

wire [2:0] rxDataEmptySlice0;
reg  [2:0] rxDataEmptySlice1;
reg  [2:0] rxDataEmptySlice2;
wire [2:0] rxDataEmptySlice3;

wire [8:0] rxCurDataLen;
wire [8:0] rxCmbaDataLenInt;
reg  [8:0] rxCmbaDataLen;
wire [8:0] rxCmbaDataLenDone;
wire       pushDirect;

wire         combineDone;
wire [266:0] dataDirect;
wire [8:0]   dataLenDirect;
assign pushDirect    = rx_valid & rx_sop & rx_eop;
assign dataLenDirect = 9'd8 - {6'd0,rx_empty};
assign dataDirect    = {1'd1,1'd1,dataLenDirect,{rx_data,192'd0}};

assign ptrInt =  combineDone ? 2'd0 :
                 (rx_valid & ~pushDirect) ? ptr + 2'd1 : ptr;
always @(posedge clockMac or negedge realResetN) begin
    if(!realResetN) begin
        ptr <= 2'd0;
    end
    else begin
        ptr <= ptrInt;
    end
end
always @(posedge clockMac ) begin
    if(rx_valid & ~pushDirect & (ptr == 2'd0)) begin
        rxDataSlice0 <= rx_data;
    end
end
always @(posedge clockMac or negedge realResetN ) begin
    if(!realResetN) begin
        rxDataEmptySlice1 <= 3'd0;
        rxDataSlice1      <= 64'd0;
    end
    else begin
        if(rx_valid & ~pushDirect &  ~rx_eop & (ptr == 2'd1)) begin
            rxDataSlice1       <= rx_data;
            rxDataEmptySlice1  <= rx_empty;
        end
    end
end
always @(posedge clockMac or negedge realResetN) begin
    if(!realResetN) begin
        rxDataEmptySlice2 <= 3'd0;
        rxDataSlice2      <= 64'd0;
    end
    else begin
        if(rx_valid & ~pushDirect & ~rx_eop & (ptr == 2'd2)) begin
            rxDataSlice2 <= rx_data;
            rxDataEmptySlice2  <= rx_empty;
        end
    end
end
assign rxCurDataLen    = 9'd8 - {6'd0,rx_empty};
assign rxDataEmptySlice3 = combineDone ? rx_empty : 3'd0;
assign rxCmbaDataLenInt  = combineDone ? 9'd0 : (rx_valid & ~pushDirect) ? rxCmbaDataLenDone : rxCmbaDataLen;
assign rxCmbaDataLenDone = rxCmbaDataLen + rxCurDataLen;
always @(posedge clockMac or negedge realResetN) begin
    if(!realResetN) begin
        rxCmbaDataLen <= 9'd0;
    end
    else begin
        rxCmbaDataLen <= rxCmbaDataLenInt;
    end
end
assign combineDone = (ptr == 2'd3) | rx_valid & rx_eop & ~rx_sop;
assign rxSopSliceInt = ~combineDone & (rx_sop & ~pushDirect & rx_valid| rxSopSlice);
assign rxEopSliceInt = ~combineDone & (rx_eop & ~pushDirect & rx_valid| rxEopSlice);
always @(posedge clockMac or negedge realResetN) begin
    if(!realResetN) begin
        rxSopSlice <= 1'd0;
        rxEopSlice <= 1'd0;
    end
    else begin
        rxSopSlice <= rxSopSliceInt;
        rxEopSlice <= rxEopSliceInt;
    end
end
wire [63:0] rxDataSlice0Real;
wire [63:0] rxDataSlice1Real;
wire [63:0] rxDataSlice2Real;
assign rxDataSlice0Real = (ptr == 3'd0) & rx_eop ? rx_data : rxDataSlice0;
assign rxDataSlice1Real = (ptr == 3'd1) & rx_eop ? rx_data : rxDataSlice1;
assign rxDataSlice2Real = (ptr == 3'd2) & rx_eop ? rx_data : rxDataSlice2;
assign rxFifoDataIn = pushDirect ? dataDirect : 
                      {rxSopSlice | rx_sop ,rxEopSlice | rx_eop,rxCmbaDataLenDone,rxDataSlice0Real,rxDataSlice1Real,rxDataSlice2Real,rx_data};
assign rxFifoPush   = (pushDirect | combineDone) & ~rxFifoFull;
assign rx_ready     = ~rxFifoFull;


// synopsys translate_off
// for debug
integer txdFile;
integer rxdFile;
initial begin
    txdFile = $fopen("txData.txt");
    rxdFile = $fopen("rxData.txt");
end
always@(posedge clock) begin
    if(ddpPktPush) $fwrite(txdFile,$sformatf("sop= %h, eop= %h,byteenable= %h,data= %h, \n",ddpPktDataIn[266],ddpPktDataIn[265],ddpPktDataIn[264:256],ddpPktDataIn[255:0]));
    if(ddpPktPop)  $fwrite(rxdFile,$sformatf("sop= %h, eop= %h,byteenable= %h,data= %h, \n",ddpPktDataOut[266],ddpPktDataOut[265],ddpPktDataOut[264:256],ddpPktDataOut[255:0]));
end
// synopsys translate_on
endmodule // GearBox
