// generic single port flop in & flop out memory controller with 1 requestor and cpu with coherence logic
// cpu is lower priority
module IP_MemCtrl1PFo (/*autoarg*/
    //Inputs
    clockCore, resetCore, ctrlMemAddr, ctrlMemWrData, 
    ctrlMemReq, ctrlMemRd, cpuMemReq, cpuMemRd, 
    cpuMemAddr, cpuMemWrData, rdData, 

    //Outputs
    ctrlMemRdData, cpuMemAck, cpuMemRdData, 
    enable, wr, addr, wrData
);
    // synopsys template
    parameter ADDR_WIDTH = 8, 
              DATA_WIDTH = 16;

    input                       clockCore;
    input                       resetCore;
    
    input  [ADDR_WIDTH-1:0]     ctrlMemAddr;
    input  [DATA_WIDTH-1:0]     ctrlMemWrData;
    
    input          		ctrlMemReq;
    input          		ctrlMemRd;
    output [DATA_WIDTH-1:0]  	ctrlMemRdData;
    
    input       		cpuMemReq;
    input       		cpuMemRd;
    input  [ADDR_WIDTH-1:0]     cpuMemAddr;
    input  [DATA_WIDTH-1:0]     cpuMemWrData;

    output      		cpuMemAck;
    output [DATA_WIDTH-1:0] 	cpuMemRdData;

    // I/F with MEMORY
    output                      enable;
    output                      wr;
    output [ADDR_WIDTH-1:0]     addr;
    output [DATA_WIDTH-1:0]     wrData;
    input  [DATA_WIDTH-1:0]     rdData;
    
    /////////////////////////////////////////////
    // internal signals
    /////////////////////////////////////////////
    // coherence logic
    reg                         ctrlMemReqF1;
    reg                         ctrlMemRdF1;
    reg [ADDR_WIDTH-1:0]        ctrlMemAddrF1;
    reg [DATA_WIDTH-1:0]        ctrlMemWrDataF1;
    reg                         ctrlMemReqF2;
    reg                         ctrlMemRdF2;
    reg [ADDR_WIDTH-1:0]        ctrlMemAddrF2;
    reg [DATA_WIDTH-1:0]        ctrlMemWrDataF2;
  
    reg      			cpuMemAck;
    reg [DATA_WIDTH-1:0] 	cpuMemRdData;
    
    reg                         cpuMemReqKeepInt;
    wire                        cpuMemRdInt;
    wire                        cpuMemWrInt;
    wire                        cpuReqAcceptInt;
    reg                         cpuWrAcceptDly1;
    reg                         cpuRdAcceptDly1;
    reg                         cpuRdAcceptDly2;

    wire                        cpuMemAckInt;

    //===============================================================
    // CPU read the Mem
    //===============================================================
    reg                    cpuMemReqDly1;
    reg                    cpuMemReqDly2;
    reg                    cpuMemRdDly1;
    reg  [ADDR_WIDTH-1:0]  cpuMemAddrDly1;
    
    always @ (posedge clockCore or negedge resetCore) begin
        if (!resetCore) begin
           cpuMemReqDly1 <= 1'b0;
           cpuMemRdDly1  <= 1'b0;
           cpuMemReqDly2 <= 1'b0;
        end else begin
           cpuMemReqDly1 <= cpuMemReq;
           cpuMemRdDly1  <= cpuMemRd;
           cpuMemReqDly2 <= cpuMemReqDly1;
        end
    end

    always @ (posedge clockCore) begin
       cpuMemAddrDly1 <= cpuMemAddr;
    end
    
    wire cpuMemReqVld = cpuMemReqDly1 & ~cpuMemReqDly2;
    
    //===========================================================
    // cpu read assert while cpuReq & cpuRead
    // and de-assert as soon as CPU read is accepted!!
    //==================================================================
    always @ (posedge clockCore or negedge resetCore) begin
        if (!resetCore) begin
            cpuMemReqKeepInt <= 1'b0;
        end else if (cpuReqAcceptInt) begin
            cpuMemReqKeepInt <= 1'b0;
        end else if (cpuMemReqVld) begin
            cpuMemReqKeepInt <= 1'b1;
        end
    end

    assign cpuReqAcceptInt = cpuMemReqKeepInt & ~ctrlMemReq;
    assign cpuMemRdInt     = cpuReqAcceptInt & cpuMemRdDly1;
    assign cpuMemWrInt     = cpuReqAcceptInt & ~cpuMemRdDly1;
    wire   ctrlMemWr       = ctrlMemReq & ~ctrlMemRd;
        
    //==================================================================
    // cohenrence logic
    //==================================================================
    always @(posedge clockCore or negedge resetCore) begin
       if(!resetCore) begin
          ctrlMemReqF1 <= 1'b0;
          ctrlMemReqF2 <= 1'b0;
       end
       else begin
          ctrlMemReqF1 <= ctrlMemReq;
          ctrlMemReqF2 <= ctrlMemReqF1;
       end
    end

    always @(posedge clockCore) begin
       ctrlMemRdF1     <= ctrlMemRd;
       ctrlMemRdF2     <= ctrlMemRdF1;

       ctrlMemAddrF1   <= ctrlMemAddr;
       ctrlMemAddrF2   <= ctrlMemAddrF1;

       ctrlMemWrDataF1 <= ctrlMemWrData;
       ctrlMemWrDataF2 <= ctrlMemWrDataF1;
    end
    //==================================================================
    // generate r/w signals for Mem
    //==================================================================
    assign enable = ctrlMemReq | cpuReqAcceptInt;
    assign wr     = ctrlMemWr | cpuMemWrInt;
    assign addr   = ctrlMemReq ? ctrlMemAddr : cpuMemAddrDly1;
    assign wrData = ctrlMemReq ? ctrlMemWrData : cpuMemWrData;

    always @ (posedge clockCore or negedge resetCore) begin
        if (!resetCore) begin
            cpuWrAcceptDly1 <= 1'b0;
            cpuRdAcceptDly1 <= 1'b0;
            cpuRdAcceptDly2 <= 1'b0;
        end else begin
            cpuWrAcceptDly1 <= cpuMemWrInt;
            cpuRdAcceptDly1 <= cpuMemRdInt;
            cpuRdAcceptDly2 <= cpuRdAcceptDly1;
        end
    end
    
    //==================================================================
    // ctrl read data
    //==================================================================
    assign ctrlMemRdData = (ctrlMemReqF2 & ctrlMemRdF2 & ctrlMemReqF1 & ~ctrlMemRdF1 & (ctrlMemAddrF2 == ctrlMemAddrF1)) ? ctrlMemWrDataF1 : rdData;
    
    //==================================================================
    // cpu read data
    //==================================================================
    assign cpuMemAckInt = cpuWrAcceptDly1 | cpuRdAcceptDly2;
    
    always @ (posedge clockCore or negedge resetCore) begin
        if (!resetCore) begin
            cpuMemAck <= 1'b0;
        end else begin
            cpuMemAck <= cpuMemAckInt;
        end
    end

    always @ (posedge clockCore) begin
       cpuMemRdData <= rdData;
    end

    //==================================================================
    // Assertions
    //==================================================================
    // synopsys translate_off
    rw_error : assert property (@ (posedge clockCore) disable iff (resetCore!=1'd1) !$rose(ctrlMemWr & ctrlMemRd));
    // synopsys translate_on
	
endmodule
