	address_decode_clk_csr u0 (
		.clk_out     (_connected_to_clk_out_),     //  output,  width = 1,          clk.clk
		.in_clk      (_connected_to_in_clk_),      //   input,  width = 1,       clk_in.clk
		.reset_n     (_connected_to_reset_n_),     //   input,  width = 1, clk_in_reset.reset_n
		.reset_n_out (_connected_to_reset_n_out_)  //  output,  width = 1,    clk_reset.reset_n
	);

