	component ep_g3x8_avmm256_inst_reconfig_xcvr_reset_bfm_ip is
		generic (
			ASSERT_HIGH_RESET    : integer := 1;
			INITIAL_RESET_CYCLES : integer := 0
		);
		port (
			clk   : in  std_logic := 'X'; -- clk
			reset : out std_logic         -- reset_n
		);
	end component ep_g3x8_avmm256_inst_reconfig_xcvr_reset_bfm_ip;

	u0 : component ep_g3x8_avmm256_inst_reconfig_xcvr_reset_bfm_ip
		generic map (
			ASSERT_HIGH_RESET    => INTEGER_VALUE_FOR_ASSERT_HIGH_RESET,
			INITIAL_RESET_CYCLES => INTEGER_VALUE_FOR_INITIAL_RESET_CYCLES
		)
		port map (
			clk   => CONNECTED_TO_clk,   --   clk.clk
			reset => CONNECTED_TO_reset  -- reset.reset_n
		);

