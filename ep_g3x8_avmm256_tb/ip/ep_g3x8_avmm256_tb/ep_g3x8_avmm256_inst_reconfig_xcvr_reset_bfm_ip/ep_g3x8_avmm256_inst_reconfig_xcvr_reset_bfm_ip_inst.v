	ep_g3x8_avmm256_inst_reconfig_xcvr_reset_bfm_ip #(
		.ASSERT_HIGH_RESET    (INTEGER_VALUE_FOR_ASSERT_HIGH_RESET),
		.INITIAL_RESET_CYCLES (INTEGER_VALUE_FOR_INITIAL_RESET_CYCLES)
	) u0 (
		.clk   (_connected_to_clk_),   //   input,  width = 1,   clk.clk
		.reset (_connected_to_reset_)  //  output,  width = 1, reset.reset_n
	);

