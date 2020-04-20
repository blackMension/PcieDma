module DmaRequest(
    /*AUTOARG*/
   // Outputs
   SqDmaFifoPop, RqDmaFifoPop, RdDCSChipSelect, RdDCSWrite,
   RdDCSAddress, RdDCSWriteData, RdDCSByteEnable, RdDCSRead,
   WrDCSChipSelect, WrDCSWrite, WrDCSAddress, WrDCSWriteData,
   WrDCSByteEnable, WrDCSRead,
   // Inputs
   clock, reset, SqDmaFifoData, SqDmaFifoEmpty, SqDmaFifoDepth,
   SqDmaFifoFull, RqDmaFifoData, RqDmaFifoEmpty, RqDmaFifoDepth,
   RqDmaFifoFull, RdDCSWaitRequest, RdDCSReadData, WrDCSWaitRequest,
   WrDCSReadData
   );
// global
    input            clock;
    input            reset;
// DmaFifoReqFifo to RT
    output          SqDmaFifoPop;
    input  [115:0]  SqDmaFifoData;
    input           SqDmaFifoEmpty;
    input           SqDmaFifoDepth;
    input           SqDmaFifoFull;

    output          RqDmaFifoPop;
    input  [115:0]  RqDmaFifoData;
    input           RqDmaFifoEmpty;
    input           RqDmaFifoDepth;
    input           RqDmaFifoFull;      
// RT to DMA
    // PCIe Read
	output           RdDCSChipSelect;    //  RdDCS_slave.chipselect
	output           RdDCSWrite;         //             .write
	output   [7:0]   RdDCSAddress;       //             .address
	output   [31:0]  RdDCSWriteData;     //             .writedata
	output   [3:0]   RdDCSByteEnable;    //             .byteenable
	input            RdDCSWaitRequest;   //             .waitrequest
	output           RdDCSRead;          //             .read
	input    [31:0]  RdDCSReadData;      //             .readdata
    // PCIe Write
    output           WrDCSChipSelect;    //  WrDCS_slave.chipselect
	output           WrDCSWrite;         //             .write
	output   [7:0]   WrDCSAddress;       //             .address
	output   [31:0]  WrDCSWriteData;     //             .writedata
	output   [3:0]   WrDCSByteEnable;    //             .byteenable
	input            WrDCSWaitRequest;   //             .waitrequest
	output           WrDCSRead;          //             .read
	input    [31:0]  WrDCSReadData;      //             .readdata

    
wire [63:0]  rd_dma_status_addr      = 64'h6000;
wire [63:0]  wr_dma_status_addr      = 64'h7000;
wire  [2:0]  SqDmaFifoDataNumberM1 = SqDmaFifoData[110:108] - 3'd1;
wire  [2:0]  rqDataNumberM1 = RqDmaFifoData[110:108] - 3'd1;
// wire  [159:0]   wrDescriptor = {wr_dma_status_addr[31:0],wr_dma_status_addr[63:32],RqDmaFifoData[31:0],RqDmaFifoData[63:32],6'd0,RqDmaFifoData[107:100],15'd0,rqDataNumberM1};
// wire  [159:0]   rdDescriptor = {rd_dma_status_addr[31:0],rd_dma_status_addr[63:32],SqDmaFifoData[31:0],SqDmaFifoData[63:32],6'd0,SqDmaFifoData[107:100],15'd0,SqDmaFifoDataNumberM1};
wire  [159:0]   wrDescriptor = {wr_dma_status_addr[31:0],wr_dma_status_addr[63:32],RqDmaFifoData[31:0],RqDmaFifoData[63:32],6'd0,8'd0,15'd0,rqDataNumberM1};
wire  [159:0]   rdDescriptor = {rd_dma_status_addr[31:0],rd_dma_status_addr[63:32],SqDmaFifoData[31:0],SqDmaFifoData[63:32],6'd0,8'd0,15'd0,SqDmaFifoDataNumberM1};
wire  [2:0] wrCounterInt;
reg   [2:0] wrCounter;
wire  [2:0] rdCounterInt;
reg   [2:0] rdCounter;

wire  [6:0] WrDCSAddressInt;
wire  [6:0] RdDCSAddressInt;
reg   [6:0] WrDCSAddressReg;
reg   [6:0] RdDCSAddressReg;
assign wrCounterInt = (~RqDmaFifoEmpty & (wrCounter == 3'd5)) ? 3'd0 : ( ~RqDmaFifoEmpty & ~WrDCSWaitRequest) ? wrCounter + 3'd1 : wrCounter ;
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        wrCounter <= 3'd5;
    end
    else begin
        wrCounter <= wrCounterInt;
    end
end
assign RqDmaFifoPop    = (wrCounter == 3'd4) & ~RqDmaFifoEmpty & ~WrDCSWaitRequest;
assign WrDCSWrite      = (wrCounter != 3'd5);
assign WrDCSChipSelect = WrDCSWrite;
assign WrDCSAddress    = {3'd0,wrCounter,2'd0};
assign WrDCSWriteData  = (wrCounter == 3'd4) ? wrDescriptor[31:0]   :
                         (wrCounter == 3'd3) ? wrDescriptor[63:32]  :
                         (wrCounter == 3'd2) ? wrDescriptor[95:64]  :
                         (wrCounter == 3'd1) ? wrDescriptor[127:96] : wrDescriptor[159:128];
                         
wire [3:0] rdBaseAddr;
assign rdCounterInt = (~SqDmaFifoEmpty & (rdCounter == 3'd5)) ? 3'd0 : ( ~SqDmaFifoEmpty & ~RdDCSWaitRequest) ? rdCounter + 3'd1 : rdCounter;
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        rdCounter <= 3'd5;
    end
    else begin
        rdCounter <= rdCounterInt;
    end
end
assign SqDmaFifoPop           = (rdCounter == 3'd4) & ~SqDmaFifoEmpty & ~RdDCSWaitRequest;
assign RdDCSWrite      = (rdCounter != 3'd5);
assign RdDCSChipSelect = RdDCSWrite;
assign RdDCSAddress    = {3'd0,rdCounter,2'd0};
assign RdDCSWriteData  = (rdCounter == 3'd4) ? rdDescriptor[31:0]   :
                         (rdCounter == 3'd3) ? rdDescriptor[63:32]  :
                         (rdCounter == 3'd2) ? rdDescriptor[95:64]  :
                         (rdCounter == 3'd1) ? rdDescriptor[127:96] : rdDescriptor[159:128];

assign RdDCSRead = 1'd0;
assign WrDCSRead = 1'd0;
assign RdDCSByteEnable = 4'hf;
assign WrDCSByteEnable = 4'hf;

wire wrDescValid = wrCounter == 4'd4;
wire rdDescValid = rdCounter == 4'd4;
// assign WrDCSAddressInt = WrDCSWrite & ~WrDCSWaitRequest ? WrDCSAddressReg + 7'd4 : WrDCSAddressReg;
// assign RdDCSAddressInt = RdDCSWrite & ~RdDCSWaitRequest ? RdDCSAddressReg + 7'd4 : RdDCSAddressReg;
// always @(posedge clock or negedge reset) begin
//     if(!reset) begin
//         WrDCSAddressReg <= 7'd0;
//         RdDCSAddressReg <= 7'd0;
//     end
//     else begin
//         WrDCSAddressReg <= WrDCSAddressInt;
//         RdDCSAddressReg <= RdDCSAddressInt;
//     end
// end
// assign WrDCSAddress = {1'd0,WrDCSAddressReg};
// assign RdDCSAddress = {1'd0,RdDCSAddressReg};
endmodule // RequestTraffic

// GenRamFifo16D112W SqDmaFifofetch(
// 	// Outputs;
// 	dataOut                            (data),
// 	full                               (full),
// 	empty                              (empty)  ,
// 	almostFullFlag                     ()           ,
// 	almostEmptyFlag                    ()            ,
// 	fifoDepth                          (fifoDepth)      ,
// 	overrun                            ()    ,
// 	underrun                           ()     ,
// 	cpuReadAck                         ()       ,
// 	cpuReadData                        ()        ,
// 	// Inputs
// 	clockCore                          (clock)      ,
// 	resetCore                          (reset)      ,
// 	push                               (fifoPush) ,
// 	dataIn                             (fifoDataIn)   ,
// 	pop                                (fifoPop),
// 	almostFullThreshold                (5'd16)                ,
// 	almostEmptyThreshold               (5'd0)                 ,
// 	cpuReadValid                       (1'd0)         ,
// 	cpuReadAddress                     (4'd0)
// 	);
