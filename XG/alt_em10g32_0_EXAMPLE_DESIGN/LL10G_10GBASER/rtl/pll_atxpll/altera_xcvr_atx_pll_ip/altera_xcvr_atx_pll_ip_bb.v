module altera_xcvr_atx_pll_ip (
		output wire  mcgb_cal_busy, // mcgb_cal_busy.mcgb_cal_busy
		output wire  pll_cal_busy,  //  pll_cal_busy.pll_cal_busy
		output wire  pll_locked,    //    pll_locked.pll_locked
		input  wire  pll_powerdown, // pll_powerdown.pll_powerdown
		input  wire  pll_refclk0,   //   pll_refclk0.clk
		output wire  tx_serial_clk  // tx_serial_clk.clk
	);
endmodule

