module reset_control (
		input  wire       clock,              //              clock.clk
		input  wire [0:0] pll_locked,         //         pll_locked.pll_locked
		output wire [0:0] pll_powerdown,      //      pll_powerdown.pll_powerdown
		input  wire [0:0] pll_select,         //         pll_select.pll_select
		input  wire       reset,              //              reset.reset
		output wire [0:0] rx_analogreset,     //     rx_analogreset.rx_analogreset
		input  wire [0:0] rx_cal_busy,        //        rx_cal_busy.rx_cal_busy
		output wire [0:0] rx_digitalreset,    //    rx_digitalreset.rx_digitalreset
		input  wire [0:0] rx_is_lockedtodata, // rx_is_lockedtodata.rx_is_lockedtodata
		output wire [0:0] rx_ready,           //           rx_ready.rx_ready
		output wire [0:0] tx_analogreset,     //     tx_analogreset.tx_analogreset
		input  wire [0:0] tx_cal_busy,        //        tx_cal_busy.tx_cal_busy
		output wire [0:0] tx_digitalreset,    //    tx_digitalreset.tx_digitalreset
		output wire [0:0] tx_ready            //           tx_ready.tx_ready
	);
endmodule

