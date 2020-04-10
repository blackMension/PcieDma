module QueuePair(
    /*AUTOARG*/
   // Outputs
   SQWaitRequest_o, SQReadData_o, RQWaitRequest_o, RQReadData_o,
   SqData, SqEmpty, SqFifoDepth, SqFull, RqData, RqEmpty, RqFifoDepth,
   RqFull, QpChipSelect, QpWrite, QpAddress, QpWriteData,
   QpByteEnable,
   // Inputs
   clock, reset, SQChipSelect_i, SQWrite_i, SQAddress_i,
   SQWriteData_i, SQByteEnable_i, SQRead_i, RQChipSelect_i, RQWrite_i,
   RQAddress_i, RQWriteData_i, RQByteEnable_i, RQRead_i, SqPop, RqPop,
   QpWaitRequest
   );
    // global
        input            clock;
        input            reset;
    // PCIe to QP
        // Send Queue
        input            SQChipSelect_i;    
        input            SQWrite_i;         
        input   [7:0]    SQAddress_i;       
        input   [31:0]   SQWriteData_i;     
        input   [3:0]    SQByteEnable_i;    
        output           SQWaitRequest_o;   
        input            SQRead_i;          
        output  [31:0]   SQReadData_o;      
        // Receive Queue
        input            RQChipSelect_i;    
        input            RQWrite_i;         
        input   [7:0]    RQAddress_i;       
        input   [31:0]   RQWriteData_i;     
        input   [3:0]    RQByteEnable_i;    
        output           RQWaitRequest_o;   
        input            RQRead_i;          
        output  [31:0]   RQReadData_o;      

    // Pop Data
        input            SqPop;
        output  [115:0]  SqData;
        output           SqEmpty;
        output           SqFifoDepth;
        output           SqFull;

        input            RqPop;
        output  [115:0]  RqData;
        output           RqEmpty;
        output  [4:0]    RqFifoDepth;
        output           RqFull;      

// AVMM
output           QpChipSelect;    
output           QpWrite;         
output   [63:0]  QpAddress;       
output   [31:0]  QpWriteData;     
output   [3:0]   QpByteEnable;    
input            QpWaitRequest;   

reg SqEnableWRLock;
reg RqEnableWRLock;
reg SqDisableWRLock;
reg RqDisableWRLock;

wire  SqEnableWR;
wire  RqEnableWR;
wire SqDisableWR;
wire RqDisableWR;

wire  SqEnableWRInt;
wire  RqEnableWRInt;
wire SqDisableWRInt;
wire RqDisableWRInt;
        WorkQueue SQ (
            .clock            (clock),
            .reset            (reset),
            // Push Data
            .select           (SQChipSelect_i    ),        
            .write            (SQWrite_i         ),
            .address          (SQAddress_i       ),
            .wrData           (SQWriteData_i     ),
            .byteEnable       (SQByteEnable_i    ),
            .waitRequest      (SQWaitRequest_o   ),
            .read             (SQRead_i          ),
            .rdData           (SQReadData_o      ),

            // Pop Data
            .enableWR         (SqEnableWRInt   ),
            .disableWR        (SqDisableWRInt  ),
            .fifoPop          (SqPop        ),
            .data             (SqData       ),
            .empty            (SqEmpty      ),
            .fifoDepth        (SqFifoDepth  ),
            .full             (SqFull       )
        );
        WorkQueue RQ (
            .clock            (clock),
            .reset            (reset),
            // Push Data
            .select           (RQChipSelect_i    ),        
            .write            (RQWrite_i         ),
            .address          (RQAddress_i       ),
            .wrData           (RQWriteData_i     ),
            .byteEnable       (RQByteEnable_i    ),
            .waitRequest      (RQWaitRequest_o   ),
            .read             (RQRead_i          ),
            .rdData           (RQReadData_o      ),

            // Pop Data
            .enableWR         (RqEnableWRInt   ),
            .disableWR        (RqDisableWRInt  ),
            .fifoPop          (RqPop        ),
            .data             (RqData       ),
            .empty            (RqEmpty      ),
            .fifoDepth        (RqFifoDepth  ),
            .full             (Rqfull       )
        );
     
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        SqEnableWRLock <= 1'd0;
    end
    else begin
        if(~QpWaitRequest) SqEnableWRLock <= 1'd0;
        else if(SqEnableWRInt) SqEnableWRLock <= 1'd1;
    end
end
assign SqEnableWR = SqEnableWRInt | SqEnableWRLock;
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        RqEnableWRLock <= 1'd0;
    end
    else begin
        if(~QpWaitRequest) RqEnableWRLock <= 1'd0;
        else if(RqEnableWRInt) RqEnableWRLock <= 1'd1;
    end
end
assign RqEnableWR = RqEnableWRInt | RqEnableWRLock;

always @(posedge clock or negedge reset) begin
    if(!reset) begin
        SqDisableWRLock <= 1'd0;
    end
    else begin
        if(~QpWaitRequest) SqDisableWRLock <= 1'd0;
        else if(SqDisableWRInt) SqDisableWRLock <= 1'd1;
    end
end
assign SqDisableWR = SqDisableWRInt | SqDisableWRLock;
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        RqDisableWRLock <= 1'd0;
    end
    else begin
        if(~QpWaitRequest) RqDisableWRLock <= 1'd0;
        else if(RqDisableWRInt) RqDisableWRLock <= 1'd1;
    end
end
assign RqDisableWR = RqDisableWRInt | RqDisableWRLock;

assign QpChipSelect = RqEnableWR | SqEnableWR | RqDisableWR | SqDisableWR;
assign QpWrite = QpChipSelect;
assign QpAddress = RqEnableWR | RqDisableWR ? 64'h9900 : 64'h9800;
assign QpWriteData = RqEnableWR | SqEnableWR ? 32'd1 : 32'd0; 
assign QpByteEnable = 4'hf;
endmodule

module WorkQueue(
    /*AUTOARG*/
   // Outputs
   waitRequest, rdData, data, empty, fifoDepth, full, disableWR,
   enableWR,
   // Inputs
   clock, reset, select, write, address, wrData, byteEnable, read,
   fifoPop
   );
    // globle
        input            clock;
        input            reset;
    // Push Data
        input            select;        //  WrDCS_slave.chipselect
        input            write;         //             .write
        input   [7:0]    address;       //             .address
        input   [31:0]   wrData;        //             .writedata
        input   [3:0]    byteEnable;    //             .byteenable
        output           waitRequest;   //             .waitrequest
        input            read;          //             .read
        output  [31:0]   rdData;        //             .readdata

    // Pop Data
        input            fifoPop;
        output  [115:0]  data;
        output           empty;
        output           fifoDepth;
        output           full;

        output  disableWR;
        output  enableWR;

wire slot0;
wire slot1;
wire slot2;
wire slot3;


assign slot0 = select & write & ( address[3:0] == 4'd0 );
assign slot1 = select & write & ( address[3:0] == 4'd4 );
assign slot2 = select & write & ( address[3:0] == 4'd8 );
assign slot3 = select & write & ( address[3:0] == 4'hc );

reg [4:0] opcode;
reg [2:0] dataNum;
reg [8:0] dataLen0;
reg [8:0] dataLen1;
reg [8:0] dataLen2;
reg [8:0] dataLen3;
reg [7:0] TID;
reg [11:0] descTableAddrHi;
reg [31:0] descTableAddrMe;
// reg [7:0]  TID;
wire [19:0] descTableAddrLo;
always @(posedge clock or negedge reset) begin
    if(slot0) begin
        opcode   <= wrData[31:27];
        dataNum  <= wrData[26:24];
        TID      <= wrData[23:16];
        dataLen0 <= wrData[15:7];
        dataLen1[8:2] <= wrData[6:0];
    end
end
always @(posedge clock or negedge reset) begin
    if(slot1) begin
        dataLen1[1:0] <= wrData[31:30];
        dataLen2  <= wrData[29:21];
        dataLen3  <= wrData[20:12];
        descTableAddrHi <= wrData[11:0];
    end
end
always @(posedge clock or negedge reset) begin
    if(slot2) begin
        descTableAddrMe <= wrData;
    end
end
assign descTableAddrLo = wrData[31:12];
wire         fifoPush;
wire [115:0] fifoDataIn;
assign fifoPush = slot3;
assign fifoDataIn = {opcode,dataNum,TID,dataLen0,dataLen1,dataLen2,dataLen3,descTableAddrHi,descTableAddrMe,descTableAddrLo};
wire almostEmptyFlag;
wire almostFullFlag;
reg  credit;
reg  creditF1;
GenRamFifo256D116W WorkFifo(
    // Outputs;
    .dataOut                            (data),
    .full                               (full),
    .empty                              (empty)  ,
    .almostFullFlag                     (almostFullFlag)           ,
    .almostEmptyFlag                    (almostEmptyFlag)            ,
    .fifoDepth                          (fifoDepth)      ,
    .overrun                            ()    ,
    .underrun                           ()     ,
    .cpuReadAck                         ()       ,
    .cpuReadData                        ()        ,
    // Inputs
    .clockCore                          (clock)      ,
    .resetCore                          (reset)      ,
    .push                               (fifoPush) ,
    .dataIn                             (fifoDataIn)   ,
    .pop                                (fifoPop),
    .almostFullThreshold                (9'd200)                ,
    .almostEmptyThreshold               (9'd100)                 ,
    .cpuReadValid                       (1'd0)         ,
    .cpuReadAddress                     (10'd0)
    );

    assign readdata = 32'd0;
    assign waitRequest = 1'd0;

   always @(posedge clock or negedge reset) begin
       if(!reset) begin
           credit <= 1'd0;
       end
       else begin
           if(credit == 1'd0 && almostFullFlag == 1'd1) begin
               credit <= 1'd1;
           end
           else if(credit == 1'd1 && almostEmptyFlag)begin
               credit <= 1'd0;
           end
       end
   end
  always @(posedge clock or negedge reset) begin
      if(!reset) begin
        creditF1 <= 1'd0;
      end
      else begin
          creditF1 <= credit;
      end
  end
    assign disableWR = ~creditF1 & credit;
    assign enableWR = creditF1 & ~credit;
endmodule // WorkQueue

    // // QP to DMA
    //     // PCIe Read
    // 	output           RdDCSChipSelect_o,    //  RdDCS_slave.chipselect
    // 	output           RdDCSWrite_o,         //             .write
    // 	output   [7:0]   RdDCSAddress_o,       //             .address
    // 	output   [31:0]  RdDCSWriteData_o,     //             .writedata
    // 	output   [3:0]   RdDCSByteEnable_o,    //             .byteenable
    // 	input            RdDCSWaitRequest_i,   //             .waitrequest
    // 	output           RdDCSRead_o,          //             .read
    // 	input    [31:0]  RdDCSReadData_i,      //             .readdata
    //     // PCIe Write
    //     output           WrDCSChipSelect_o,    //  WrDCS_slave.chipselect
    // 	output           WrDCSWrite_o,         //             .write
    // 	output   [7:0]   WrDCSAddress_o,       //             .address
    // 	output   [31:0]  WrDCSWriteData_o,     //             .writedata
    // 	output   [3:0]   WrDCSByteEnable_o,    //             .byteenable
    // 	input            WrDCSWaitRequest_i,   //             .waitrequest
    // 	output           WrDCSRead_o,          //             .read
    // 	input    [31:0]  WrDCSReadData_i,      //             .readdata
