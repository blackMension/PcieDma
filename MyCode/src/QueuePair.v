module QueuePair(
    /*AUTOARG*/
   // Outputs
   SQWaitRequest_o, SQReadData_o, RQWaitRequest_o, RQReadData_o,
   SqData, SqEmpty, SqFifoDepth, SqFull, RqData, RqEmpty, RqFifoDepth,
   RqFull,
   // Inputs
   clock, reset, SQChipSelect_i, SQWrite_i, SQAddress_i,
   SQWriteData_i, SQByteEnable_i, SQRead_i, RQChipSelect_i, RQWrite_i,
   RQAddress_i, RQWriteData_i, RQByteEnable_i, RQRead_i, SqPop, RqPop
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
        output  [111:0]  SqData;
        output           SqEmpty;
        output           SqFifoDepth;
        output           SqFull;

        input            RqPop;
        output  [111:0]  RqData;
        output           RqEmpty;
        output  [4:0]    RqFifoDepth;
        output           RqFull;      

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
            .fifoPop          (RqPop        ),
            .data             (RqData       ),
            .empty            (RqEmpty      ),
            .fifoDepth        (RqFifoDepth  ),
            .full             (Rqfull       )
        );
     
endmodule

module WorkQueue(
    /*AUTOARG*/
   // Outputs
   waitRequest, rdData, data, empty, fifoDepth, full,
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
        output  [111:0]  data;
        output           empty;
        output           fifoDepth;
        output           full;


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
reg [7:0] dataLen0;
reg [7:0] dataLen1;
reg [7:0] dataLen2;
reg [7:0] dataLen3;
reg [7:0] TID;
reg [15:0] descTableAddrHi;
reg [31:0] descTableAddrMe;
// reg [7:0]  TID;
wire [15:0] descTableAddrLo;
always @(posedge clock or negedge reset) begin
    if(slot0) begin
        opcode   <= wrData[31:27];
        dataNum  <= wrData[26:24];
        TID      <= wrData[23:16];
        dataLen0 <= wrData[15:8];
        dataLen1 <= wrData[7:0];
    end
end
always @(posedge clock or negedge reset) begin
    if(slot1) begin
        dataLen2  <= wrData[31:24];
        dataLen3  <= wrData[24:16];
        descTableAddrHi <= wrData[15:0];
    end
end
always @(posedge clock or negedge reset) begin
    if(slot2) begin
        descTableAddrMe <= wrData;
    end
end
assign descTableAddrLo = wrData[31:16];
wire         fifoPush;
wire [111:0] fifoDataIn;
assign fifoPush = slot3;
assign fifoDataIn = {opcode,dataNum,TID,dataLen0,dataLen1,dataLen2,dataLen3,descTableAddrHi,descTableAddrMe,descTableAddrLo};
GenRamFifo16D112W WorkFifo(
    // Outputs;
    .dataOut                            (data),
    .full                               (full),
    .empty                              (empty)  ,
    .almostFullFlag                     ()           ,
    .almostEmptyFlag                    ()            ,
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
    .almostFullThreshold                (5'd16)                ,
    .almostEmptyThreshold               (5'd0)                 ,
    .cpuReadValid                       (1'd0)         ,
    .cpuReadAddress                     (4'd0)
    );

    assign readdata = 32'd0;
    assign waitRequest = 1'd0;
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
