module RequestTraffic(
    /*AUTOARG*/
   // Outputs
   SqPop, RqPop, RdDCSChipSelect, RdDCSWrite, RdDCSAddress,
   RdDCSWriteData, RdDCSByteEnable, RdDCSRead, WrDCSChipSelect,
   WrDCSWrite, WrDCSAddress, WrDCSWriteData, WrDCSByteEnable,
   WrDCSRead,
   // Inputs
   clock, reset, SqData, SqEmpty, SqFifoDepth, Sqfull, RqData,
   RqEmpty, RqFifoDepth, Rqfull, RdDCSWaitRequest, RdDCSReadData,
   WrDCSWaitRequest, WrDCSReadData
   );
// global
    input            clock;
    input            reset;
// QP to RT
    output          SqPop;
    input  [111:0]  SqData;
    input           SqEmpty;
    input           SqFifoDepth;
    input           Sqfull;

    output          RqPop;
    input  [111:0]  RqData;
    input           RqEmpty;
    input           RqFifoDepth;
    input           Rqfull;      
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
wire  [2:0]  sqDataNumberM1 = SqData[107:105] - 3'd1;
wire  [2:0]  rqDataNumberM1 = RqData[107:105] - 3'd1;
wire  [159:0]   wrDescriptor = {wr_dma_status_addr[31:0],wr_dma_status_addr[63:32],SqData[31:0],SqData[63:32],29'd0,sqDataNumberM1};
wire  [159:0]   rdDescriptor = {rd_dma_status_addr[31:0],rd_dma_status_addr[63:32],RqData[31:0],RqData[63:32],29'd0,rqDataNumberM1};

wire  [2:0] wrCounterInt;
reg   [2:0] wrCounter;
wire  [2:0] rdCounterInt;
reg   [2:0] rdCounter;

assign wrCounterInt = (~SqEmpty & (wrCounter == 3'd5)) ? 3'd0 : ( ~SqEmpty & ~WrDCSWaitRequest) ? wrCounterInt + 3'd1 : wrCounter ;
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        wrCounter <= 3'd5;
    end
    else begin
        wrCounter <= wrCounterInt;
    end
end
assign SqPop           = wrCounter == 3'd4;
assign WrDCSWrite      = (wrCounter != 3'd5);
assign WrDCSChipSelect = WrDCSWrite;
assign WrDCSAddress    = {3'd0,wrCounter,2'd0};
assign WrDCSWriteData  = (wrCounter == 3'd0) ? wrDescriptor[31:0]   :
                         (wrCounter == 3'd1) ? wrDescriptor[63:32]  :
                         (wrCounter == 3'd2) ? wrDescriptor[95:64]  :
                         (wrCounter == 3'd3) ? wrDescriptor[127:96] : wrDescriptor[159:128];
                         
assign rdCounterInt = (~RqEmpty & (rdCounter == 3'd5)) ? 3'd0 : ( ~RqEmpty & ~RdDCSWaitRequest) ? rdCounterInt + 3'd1 : rdCounter;
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        rdCounter <= 3'd5;
    end
    else begin
        rdCounter <= rdCounterInt;
    end
end
assign RqPop           = rdCounter == 3'd4;
assign RdDCSWrite      = (rdCounter != 3'd5);
assign RdDCSChipSelect = RdDCSWrite;
assign RdDCSAddress    = {3'd0,rdCounter,2'd0};
assign RdDCSWriteData  = (rdCounter == 3'd0) ? rdDescriptor[31:0]   :
                         (rdCounter == 3'd1) ? rdDescriptor[63:32]  :
                         (rdCounter == 3'd2) ? rdDescriptor[95:64]  :
                         (rdCounter == 3'd3) ? rdDescriptor[127:96] : rdDescriptor[159:128];
endmodule // RequestTraffic
// GenRamFifo16D112W SqPrefetch(
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
