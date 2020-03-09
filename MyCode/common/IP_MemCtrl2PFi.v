// generic dual port flop in memory controller with logic read & write and cpu read & write with coherence logic
// cpu is lower priority
module IP_MemCtrl2PFi (/*autoarg*/
    //Inputs
    clockCore, resetCore, ctrlMemWr, ctrlMemWrAddr, 
    ctrlMemWrData, ctrlMemRd, ctrlMemRdAddr, 
    cpuMemReq, cpuMemRd, cpuMemAddr, cpuMemWrData, 
    rdData, 

    //Outputs
    ctrlMemRdData, cpuMemAck, cpuMemRdData, 
    enRd, rdAddr, enWr, wrAddr, wrData
);
    // synopsys template
    parameter ADDR_WIDTH = 8, 
              DATA_WIDTH = 16;

    input                       clockCore;
    input                       resetCore;
    
    input          		ctrlMemWr;
    input  [ADDR_WIDTH-1:0]     ctrlMemWrAddr;
    input  [DATA_WIDTH-1:0]     ctrlMemWrData;
    
    input          		ctrlMemRd;
    input  [ADDR_WIDTH-1:0]     ctrlMemRdAddr;
    output [DATA_WIDTH-1:0]  	ctrlMemRdData;
    
    input       		cpuMemReq;
    input       		cpuMemRd;
    input  [ADDR_WIDTH-1:0]     cpuMemAddr;
    input  [DATA_WIDTH-1:0]     cpuMemWrData;

    output      		cpuMemAck;
    output [DATA_WIDTH-1:0] 	cpuMemRdData;

    // I/F with MEMORY
    output                      enRd;
    output [ADDR_WIDTH-1:0]     rdAddr;
    output                      enWr;
    output [ADDR_WIDTH-1:0]     wrAddr;
    output [DATA_WIDTH-1:0]     wrData;

    input  [DATA_WIDTH-1:0]     rdData;
    
    /////////////////////////////////////////////
    // internal signals
    /////////////////////////////////////////////
    // cohence logic
    wire                        realCtrlMemRd;
    reg                         ctrlMemRdF1;
    reg [ADDR_WIDTH-1:0]        ctrlMemRdAddrF1;
    reg                         ctrlMemRdF2;
    reg [ADDR_WIDTH-1:0]        ctrlMemRdAddrF2;
    reg                         ctrlMemWrF1;
    reg [ADDR_WIDTH-1:0]        ctrlMemWrAddrF1;
    reg [DATA_WIDTH-1:0]        ctrlMemWrDataF1;
    reg                         ctrlMemWrF2;
    reg [ADDR_WIDTH-1:0]        ctrlMemWrAddrF2;
    reg [DATA_WIDTH-1:0]        ctrlMemWrDataF2;

    wire                        ctrlMemReq;

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
    //===========================================================
    always @ (posedge clockCore or negedge resetCore) begin
       if (!resetCore) begin
           cpuMemReqKeepInt <= 1'b0;
       end else if (cpuReqAcceptInt) begin
           cpuMemReqKeepInt <= 1'b0;
       end else if (cpuMemReqVld) begin
           cpuMemReqKeepInt <= 1'b1;
       end
    end
    
    //===========================================================
    // coherence logic
    //===========================================================
    always @ (posedge clockCore or negedge resetCore) begin
       if (!resetCore) begin
          ctrlMemRdF1 <= 1'b0;
          ctrlMemRdF2 <= 1'b0;
          ctrlMemWrF1 <= 1'b0;
          ctrlMemWrF2 <= 1'b0;
       end
       else begin
          ctrlMemRdF1 <= ctrlMemRd;
          ctrlMemRdF2 <= ctrlMemRdF1;
          ctrlMemWrF1 <= ctrlMemWr;
          ctrlMemWrF2 <= ctrlMemWrF1;
       end
   end

   always @(posedge clockCore) begin
      ctrlMemRdAddrF1 <= ctrlMemRdAddr;
      ctrlMemRdAddrF2 <= ctrlMemRdAddrF1;
      ctrlMemWrAddrF1 <= ctrlMemWrAddr;
      ctrlMemWrAddrF2 <= ctrlMemWrAddrF1;
      ctrlMemWrDataF1 <= ctrlMemWrData;
      ctrlMemWrDataF2 <= ctrlMemWrDataF1;
   end


    assign realCtrlMemRd   = ~(ctrlMemWr & ctrlMemRd & (ctrlMemWrAddr == ctrlMemRdAddr)) & ctrlMemRd;

    assign ctrlMemReq      = ctrlMemWr | realCtrlMemRd;
    assign cpuReqAcceptInt = cpuMemReqKeepInt & ~ctrlMemReq;
    assign cpuMemRdInt     = cpuReqAcceptInt & cpuMemRdDly1;
    assign cpuMemWrInt     = cpuReqAcceptInt & ~cpuMemRdDly1;

    //==================================================================
    // generate r/w signals for Mem
    //==================================================================
    assign enWr   = ctrlMemWr | cpuMemWrInt;
    assign wrAddr = ctrlMemWr ? ctrlMemWrAddr : cpuMemAddrDly1;
    assign wrData = ctrlMemWr ? ctrlMemWrData : cpuMemWrData;

    assign enRd   = realCtrlMemRd | cpuMemRdInt;
    assign rdAddr = realCtrlMemRd ? ctrlMemRdAddr : cpuMemAddrDly1;


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
    // ctrl read data with coherence
    //==================================================================
    assign ctrlMemRdData = (ctrlMemRdF2 & ctrlMemWrF1 & (ctrlMemRdAddrF2 == ctrlMemWrAddrF1)) ? ctrlMemWrDataF1 : 
                           (ctrlMemRdF2 & ctrlMemWrF2 & (ctrlMemRdAddrF2 == ctrlMemWrAddrF2)) ? ctrlMemWrDataF2 : rdData;
    
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
    rw_error : assert property (@ (posedge clockCore) disable iff (resetCore!=1'd1) !(enRd & enWr & (rdAddr == wrAddr)))
                                                      else $fatal(0,"%m %t [FATAL] : Read & Write the same addr! ",$time);
    // synopsys translate_on
	
endmodule
