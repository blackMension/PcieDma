// XG_inst_rx_rst_n_bfm_ip.v

// Generated using ACDS version 17.1.2 304

`timescale 1 ps / 1 ps
module XG_inst_rx_rst_n_bfm_ip #(
		parameter ASSERT_HIGH_RESET    = 0,
		parameter INITIAL_RESET_CYCLES = 50
	) (
		input  wire  clk,   //   clk.clk
		output wire  reset  // reset.reset_n
	);

	altera_avalon_reset_source #(
		.ASSERT_HIGH_RESET    (ASSERT_HIGH_RESET),
		.INITIAL_RESET_CYCLES (INITIAL_RESET_CYCLES)
	) xg_inst_rx_rst_n_bfm (
		.reset (reset), //  output,  width = 1, reset.reset_n
		.clk   (clk)    //   input,  width = 1,   clk.clk
	);

endmodule
