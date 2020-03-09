module IP_Stats(/*AUTOARG*/
   // Outputs
   stats,
   // Inputs
   clock, reset, valid, incValue
   );
parameter   INC_WIDTH   = 8;
parameter   STATS_WIDTH = 8;

input   clock;
input   reset;
input   valid;
input   [INC_WIDTH-1:0]         incValue;
output  [STATS_WIDTH-1:0]       stats;

wire    [STATS_WIDTH-1:0]       stats;
reg     [INC_WIDTH-1:0]         statsTmp; 

wire    [INC_WIDTH-1:0]         statsInt;

assign  statsInt = valid ? statsTmp + incValue : statsTmp;

always@(posedge clock or negedge reset)begin
   if(~reset)begin
      statsTmp <= {INC_WIDTH{1'd0}};
   end
   else begin
      statsTmp <= statsInt;
   end
end

assign   stats = statsTmp[STATS_WIDTH-1:0];

endmodule
