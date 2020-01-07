	component ep_g3x8_avmm256_clk_0 is
		port (
			clk_out     : out std_logic;        -- clk
			in_clk      : in  std_logic := 'X'; -- clk
			reset_n     : in  std_logic := 'X'; -- reset_n
			reset_n_out : out std_logic         -- reset_n
		);
	end component ep_g3x8_avmm256_clk_0;

	u0 : component ep_g3x8_avmm256_clk_0
		port map (
			clk_out     => CONNECTED_TO_clk_out,     --          clk.clk
			in_clk      => CONNECTED_TO_in_clk,      --       clk_in.clk
			reset_n     => CONNECTED_TO_reset_n,     -- clk_in_reset.reset_n
			reset_n_out => CONNECTED_TO_reset_n_out  --    clk_reset.reset_n
		);

