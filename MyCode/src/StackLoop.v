
`timescale 1ns/100ps
module StackLoop(
    /*AUTOARG*/
   // Outputs
   clockMac, resetNMac, tx_ready, rx_valid, rx_eop, rx_sop, rx_error,
   rx_data, rx_empty,
   // Inputs
   tx_eop, tx_sop, tx_error, tx_data, tx_empty, tx_valid, rx_ready
   );
output        clockMac;
output        resetNMac;
// MAC TX
output        tx_ready;
input         tx_eop;
input         tx_sop;
input         tx_error;
input [63:0]  tx_data;
input [2:0]   tx_empty;
input         tx_valid;
// MAC RX
input         rx_ready;
output        rx_valid;
output        rx_eop;
output        rx_sop;
output        rx_error;
output [63:0] rx_data;
output [2:0]  rx_empty;

reg clockMac;
reg resetNMac;

assign rx_eop    = tx_eop;                      
assign rx_sop    = tx_sop;                      
assign rx_error  = tx_error;                      
assign rx_data   = tx_data;                      
assign rx_empty  = tx_empty;                      
assign rx_valid  = tx_valid;                      
assign tx_ready  = rx_ready;

initial begin
       clockMac = 1'd0;
    #5 resetNMac = 1'd0;
    #5 resetNMac = 1'd1;
end
always #3.2 clockMac <= ~clockMac;
    
endmodule // StackLoop
