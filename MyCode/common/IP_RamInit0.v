/*
 *  Attention! This IP only for init all data to initValue.
*/
module IP_RamInit0(
   //input 
   clockCore,
   resetCore,
	initValue,
   //output 
   initDone,
   initEnWr,
   initWrAddr,
   initWrData );
parameter DEPTH      = 32,
          DATAWIDTH  = 32;
parameter TYPE       = 0;
parameter ADDRWIDTH  = ( DEPTH <= 2 ) ? 1 :
                      (( DEPTH <= 4 ) ? 2 :
                      (( DEPTH <= 8 ) ? 3 :
                      (( DEPTH <= 16) ? 4 :
                      (( DEPTH <= 32) ? 5 :
                      (( DEPTH <= 64) ? 6 :
                      (( DEPTH <= 128) ? 7 :
                      (( DEPTH <= 256) ? 8 :
                      (( DEPTH <= 512) ? 9 :
                      (( DEPTH <= 1024) ? 10 :
                      (( DEPTH <= 2048) ? 11 :
                      (( DEPTH <= 4096) ? 12 :
                      (( DEPTH <= 8192) ? 13 :
                      (( DEPTH <= 16384) ? 14: 
                      (( DEPTH <= 32768) ? 15:
                      (( DEPTH <= 65536) ? 16:
                      (( DEPTH <= 131072) ? 17:
                      (( DEPTH <= 262144) ? 18:
                      (( DEPTH <= 524288) ? 19:
                      (( DEPTH <= 1048576) ? 20 : 21)))))))))))))))))));

input      clockCore;
input      resetCore;
output     initDone;
output     initEnWr;
output [ADDRWIDTH-1: 0] initWrAddr;
output [DATAWIDTH-1: 0] initWrData;
input  [DATAWIDTH-1: 0] initValue;

reg        initDone;
reg        initEnWr;
reg [ADDRWIDTH-1: 0] initWrAddr;
reg [DATAWIDTH-1: 0] initWrData;

wire   initDoneInt;
assign initDoneInt = initDone | (initWrAddr >= DEPTH-1);
always @(posedge clockCore or negedge resetCore)begin
   if(~resetCore)begin
      initDone <= 1'b0;
   end
   else begin
      initDone <= initDoneInt;
   end
end

wire[ADDRWIDTH-1:0] initWrAddrInt;
assign initWrAddrInt  = initDoneInt ? {ADDRWIDTH{1'd0}} : initEnWr ? initWrAddr + 1'd1 : {ADDRWIDTH{1'd0}};
always@(posedge clockCore or negedge resetCore)begin
   if(~resetCore)begin 
      initWrAddr <= {ADDRWIDTH{1'd0}};
   end
   else begin 
      initWrAddr <= initWrAddrInt; 
   end
end

wire initEnWrInt;
assign initEnWrInt = ~initDoneInt;
always@(posedge clockCore or negedge resetCore)begin
   if(~resetCore)begin
      initEnWr <= 1'b0;
   end 
   else begin
      initEnWr <= initEnWrInt;
   end
end

wire [DATAWIDTH-1:0] initWrDataInt;
assign  initWrDataInt = initDoneInt ? {DATAWIDTH{1'd0}} : initValue;
always@(posedge clockCore or negedge resetCore)begin
   if(~resetCore)begin
      initWrData <= {DATAWIDTH{1'd0}};
   end
   else begin
      initWrData <= initWrDataInt;
   end
end
endmodule
