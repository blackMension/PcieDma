module SendBufferV2(
    /*AUTOARG*/
   // Outputs
   readdata, dataOut, ready, emptyArray,
   // Inputs
   clock, reset, address, clken, chipselect, write, writedata,
   byteenable, dataPop
);

// global
input clock;
input reset;
// To PCIe (data In)
input  [9:0]    address;
input           clken;
input           chipselect;
input           write;
output [255:0]  readdata;
input  [255:0]  writedata;
input  [31:0]   byteenable;
// To Rdma (data out)
output [255:0]  dataOut;
input           dataPop;
output          ready;
output [3:0]    emptyArray;

assign readdata = 256'd0;
reg [2:0] wPtr;
reg [2:0] rPtr;
wire [2:0] wPtrInt;
wire [2:0] rPtrInt;
reg       chipselectF1;
wire      nEdgeSelect;

wire [7:0] subReady;
wire [7:0] subWrite;
wire [7:0] subChipSelect;
wire [255:0] subDataOut[8];
wire [7:0]   subDataPop;
wire [3:0]   subEmptyArray[8];

assign  nEdgeSelect = chipselectF1 & ~chipselect;
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        chipselectF1 <= 1'd0;
    end
    else begin
        chipselectF1 <= chipselect;
    end
end
assign wPtrInt = (chipselect & address == 10'd0) ? wPtr + 3'd1 : wPtr;
always @(posedge clock or negedge reset) begin
    if(!reset) begin
        wPtr <= 3'd0;
    end
    else begin
        wPtr <= wPtrInt;
    end
end

assign rPtr = subReady[0] ? 3'd0 :
              subReady[1] ? 3'd1 :
              subReady[2] ? 3'd2 :
              subReady[3] ? 3'd3 :
              subReady[4] ? 3'd4 :
              subReady[5] ? 3'd5 :
              subReady[6] ? 3'd6 :
              subReady[7] ? 3'd7 : 3'd0;
genvar i;
for (i=0;i<8;i=i+1) begin
    assign subChipSelect[i] = (wPtrInt == i) & chipselect;
    assign subWrite[i] = subChipSelect[i] & write;
    SendBuffer uSendBuffer(
        // global
        .clock             (clock),   
        .reset             (reset),   
        // To PCIe (data In)
        .address           (address),     
        .clken             (clken),   
        .chipselect        (subChipSelect[i]),        
        .write             (subWrite[i]),   
        .readdata          (),      
        .writedata         (writedata),       
        .byteenable        (byteenable),        
        // To Rdma (data out)
        .dataPop           (subDataPop[i]),  
        .dataOut           (subDataOut[i]),      
        .ready             (subReady[i]),
        .emptyArray        (subEmptyArray[i])
    );
    assign subDataPop[i] = (rPtr == i) & dataPop;
end
assign emptyArray = subEmptyArray[rPtr];
assign dataOut    = subDataOut[rPtr];
assign ready      = subReady[rPtr];
endmodule // SendBufferV2