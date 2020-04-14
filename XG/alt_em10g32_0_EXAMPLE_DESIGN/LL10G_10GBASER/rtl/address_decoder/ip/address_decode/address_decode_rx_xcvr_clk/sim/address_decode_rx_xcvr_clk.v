// address_decode_rx_xcvr_clk.v

// Generated using ACDS version 17.1.2 304

`timescale 1 ps / 1 ps
module address_decode_rx_xcvr_clk (
		output wire  clk_out,     //          clk.clk
		input  wire  in_clk,      //       clk_in.clk
		input  wire  reset_n,     // clk_in_reset.reset_n
		output wire  reset_n_out  //    clk_reset.reset_n
	);

	assign clk_out = in_clk;

	assign reset_n_out = reset_n;

endmodule
