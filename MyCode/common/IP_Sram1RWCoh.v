module IP_Sram1RWCoh ( /*autoarg*/
    //Inputs
    resetCore, clockCore, rdEn0, rdAddr0, 
    wrEn0, wrAddr0, wrData0, rdEn1, rdAddr1, 
    wrEn1, wrAddr1, wrData1, rdEn2, rdAddr2, 
    wrEn2, wrAddr2, wrData2, rdEn3, rdAddr3, 
    wrEn3, wrAddr3, wrData3, rdEn4, rdAddr4, 
    wrEn4, wrAddr4, wrData4, rdEn5, rdAddr5, 
    wrEn5, wrAddr5, wrData5, readData, 

    //Outputs
    rdData0, rdData1, rdData2, rdData3, rdData4, 
    rdData5, enableRam, address, enableWrite, 
    writeData
);

/////////////////////////////////////////////////////////////////////////////
// parameter declaration
/////////////////////////////////////////////////////////////////////////////
// synopsys template 
parameter RAM_DEPTH  = 16;
parameter RAM_WIDTH  = 32;

parameter ADDR_WIDTH = ( RAM_DEPTH <= 2 ) ? 1 :
                       (( RAM_DEPTH <= 4 ) ? 2 :
                       (( RAM_DEPTH <= 8 ) ? 3 :
                       (( RAM_DEPTH <= 16 ) ? 4 :
                       (( RAM_DEPTH <= 32 ) ? 5 :
                       (( RAM_DEPTH <= 64 ) ? 6 :
                       (( RAM_DEPTH <= 128 ) ? 7 :
                       (( RAM_DEPTH <= 256 ) ? 8 :
                       (( RAM_DEPTH <= 512 ) ? 9 :
                       (( RAM_DEPTH <= 1024 ) ? 10 :
                       (( RAM_DEPTH <= 2048 ) ? 11 :
                       (( RAM_DEPTH <= 4096 ) ? 12 :
                       (( RAM_DEPTH <= 8192 ) ? 13 : 14 ))))))))))));

/////////////////////////////////////////////////////////////////////////////
// input/output declaration
/////////////////////////////////////////////////////////////////////////////
input                     resetCore;
input                     clockCore;

/////////////////////////////////////////////////////////////////////////////
input                     rdEn0;
input   [ADDR_WIDTH-1:0]  rdAddr0;
input                     wrEn0;
input   [ADDR_WIDTH-1:0]  wrAddr0;
input   [RAM_WIDTH-1:0]   wrData0;

output  [RAM_WIDTH-1:0]   rdData0;

/////////////////////////////////////////////////////////////////////////////
input                     rdEn1;
input   [ADDR_WIDTH-1:0]  rdAddr1;
input                     wrEn1;
input   [ADDR_WIDTH-1:0]  wrAddr1;
input   [RAM_WIDTH-1:0]   wrData1;

output  [RAM_WIDTH-1:0]   rdData1;

/////////////////////////////////////////////////////////////////////////////
input                     rdEn2;
input   [ADDR_WIDTH-1:0]  rdAddr2;
input                     wrEn2;
input   [ADDR_WIDTH-1:0]  wrAddr2;
input   [RAM_WIDTH-1:0]   wrData2;

output  [RAM_WIDTH-1:0]   rdData2;

/////////////////////////////////////////////////////////////////////////////
input                     rdEn3;
input   [ADDR_WIDTH-1:0]  rdAddr3;
input                     wrEn3;
input   [ADDR_WIDTH-1:0]  wrAddr3;
input   [RAM_WIDTH-1:0]   wrData3;

output  [RAM_WIDTH-1:0]   rdData3;

/////////////////////////////////////////////////////////////////////////////
input                     rdEn4;
input   [ADDR_WIDTH-1:0]  rdAddr4;
input                     wrEn4;
input   [ADDR_WIDTH-1:0]  wrAddr4;
input   [RAM_WIDTH-1:0]   wrData4;

output  [RAM_WIDTH-1:0]   rdData4;

/////////////////////////////////////////////////////////////////////////////
input                     rdEn5;
input   [ADDR_WIDTH-1:0]  rdAddr5;
input                     wrEn5;
input   [ADDR_WIDTH-1:0]  wrAddr5;
input   [RAM_WIDTH-1:0]   wrData5;

output  [RAM_WIDTH-1:0]   rdData5;

/////////////////////////////////////////////////////////////////////////////
output                    enableRam;
output  [ADDR_WIDTH-1:0]  address;
output                    enableWrite;
output  [RAM_WIDTH-1:0]   writeData;
                          
input   [RAM_WIDTH-1:0]   readData;

/////////////////////////////////////////////////////////////////////////////
// input/output wire/reg declaration
/////////////////////////////////////////////////////////////////////////////
wire                      resetCore;
wire                      clockCore;

/////////////////////////////////////////////////////////////////////////////
wire                      rdEn0;
wire   [ADDR_WIDTH-1:0]   rdAddr0;
wire                      wrEn0;
wire   [ADDR_WIDTH-1:0]   wrAddr0;
wire   [RAM_WIDTH-1:0]    wrData0;

wire   [RAM_WIDTH-1:0]    rdData0;

/////////////////////////////////////////////////////////////////////////////
wire                      rdEn1;
wire   [ADDR_WIDTH-1:0]   rdAddr1;
wire                      wrEn1;
wire   [ADDR_WIDTH-1:0]   wrAddr1;
wire   [RAM_WIDTH-1:0]    wrData1;

wire   [RAM_WIDTH-1:0]    rdData1;

/////////////////////////////////////////////////////////////////////////////
wire                      rdEn2;
wire   [ADDR_WIDTH-1:0]   rdAddr2;
wire                      wrEn2;
wire   [ADDR_WIDTH-1:0]   wrAddr2;
wire   [RAM_WIDTH-1:0]    wrData2;

wire   [RAM_WIDTH-1:0]    rdData2;

/////////////////////////////////////////////////////////////////////////////
wire                      rdEn3;
wire   [ADDR_WIDTH-1:0]   rdAddr3;
wire                      wrEn3;
wire   [ADDR_WIDTH-1:0]   wrAddr3;
wire   [RAM_WIDTH-1:0]    wrData3;

wire   [RAM_WIDTH-1:0]    rdData3;

/////////////////////////////////////////////////////////////////////////////
wire                      rdEn4;
wire   [ADDR_WIDTH-1:0]   rdAddr4;
wire                      wrEn4;
wire   [ADDR_WIDTH-1:0]   wrAddr4;
wire   [RAM_WIDTH-1:0]    wrData4;

wire   [RAM_WIDTH-1:0]    rdData4;

/////////////////////////////////////////////////////////////////////////////
wire                      rdEn5;
wire   [ADDR_WIDTH-1:0]   rdAddr5;
wire                      wrEn5;
wire   [ADDR_WIDTH-1:0]   wrAddr5;
wire   [RAM_WIDTH-1:0]    wrData5;

wire   [RAM_WIDTH-1:0]    rdData5;

/////////////////////////////////////////////////////////////////////////////
wire                      enableRam;
wire   [ADDR_WIDTH-1:0]   address;
wire                      enableWrite;
wire   [RAM_WIDTH-1:0]    writeData;
                          
wire   [RAM_WIDTH-1:0]    readData;

/////////////////////////////////////////////////////////////////////////////
// internal wire/reg declaration
/////////////////////////////////////////////////////////////////////////////
wire                      rdEn;
wire   [ADDR_WIDTH-1:0]   rdAddr;
wire                      wrEn;
wire   [ADDR_WIDTH-1:0]   wrAddr;
wire   [RAM_WIDTH-1:0]    wrData;

wire   [RAM_WIDTH-1:0]    rdData;

/////////////////////////////////////////////////////////////////////////////
reg                       rdEnF1;    
reg    [ADDR_WIDTH-1:0]   rdAddrF1;  
reg                       wrEnF1;    
reg    [ADDR_WIDTH-1:0]   wrAddrF1;  
reg    [RAM_WIDTH-1:0]    wrDataF1;  

reg                       rdEnF2;    
reg    [ADDR_WIDTH-1:0]   rdAddrF2;

/////////////////////////////////////////////////////////////////////////////
// requestor input mux
/////////////////////////////////////////////////////////////////////////////
assign rdEn = (rdEn0 | rdEn1 | rdEn2 | rdEn3 | rdEn4 | rdEn5);

assign wrEn = (wrEn0 | wrEn1 | wrEn2 | wrEn3 | wrEn4 | wrEn5);

assign rdAddr = rdEn0 ? rdAddr0 :
                rdEn1 ? rdAddr1 :
                rdEn2 ? rdAddr2 :
                rdEn3 ? rdAddr3 :
                rdEn4 ? rdAddr4 : rdAddr5;

assign wrAddr = wrEn0 ? wrAddr0 :
                wrEn1 ? wrAddr1 :
                wrEn2 ? wrAddr2 :
                wrEn3 ? wrAddr3 :
                wrEn4 ? wrAddr4 : wrAddr5;

assign wrData = wrEn0 ? wrData0 :
                wrEn1 ? wrData1 :
                wrEn2 ? wrData2 :
                wrEn3 ? wrData3 :
                wrEn4 ? wrData4 : wrData5;

/////////////////////////////////////////////////////////////////////////////
// pipe SRAM control signals
/////////////////////////////////////////////////////////////////////////////
always @(posedge clockCore) begin
   rdEnF1   <= rdEn;
   rdEnF2   <= rdEnF1;
               
   wrEnF1   <= wrEn;
   
   rdAddrF1 <= rdAddr;
   rdAddrF2 <= rdAddrF1;

   wrAddrF1 <= wrAddr;

   wrDataF1 <= wrData;
end

/////////////////////////////////////////////////////////////////////////////
// 1-Port SRAM read data coherency handling
/////////////////////////////////////////////////////////////////////////////

assign rdData = ((rdEnF2 & wrEn) & (rdAddrF2 == wrAddr))     ? wrData :
                ((rdEnF2 & wrEnF1) & (rdAddrF2 == wrAddrF1)) ? wrDataF1 :
                                                               readData;

/////////////////////////////////////////////////////////////////////////////
// other 1-Port SRAM signals
/////////////////////////////////////////////////////////////////////////////

assign enableRam   = rdEn | wrEn;
assign address     = rdEn ? rdAddr : wrAddr;
assign enableWrite = wrEn;
assign writeData   = wrData;

/////////////////////////////////////////////////////////////////////////////
// requestor output demux
/////////////////////////////////////////////////////////////////////////////
       
assign rdData0 = rdData;
assign rdData1 = rdData;
assign rdData2 = rdData;
assign rdData3 = rdData;
assign rdData4 = rdData;
assign rdData5 = rdData;
                                                        
endmodule
