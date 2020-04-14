	component XG_inst_tx_156_25_clk_bfm_ip is
		generic (
			CLOCK_RATE : positive := 10;
			CLOCK_UNIT : positive := 1000000
		);
		port (
			clk : out std_logic   -- clk
		);
	end component XG_inst_tx_156_25_clk_bfm_ip;

	u0 : component XG_inst_tx_156_25_clk_bfm_ip
		generic map (
			CLOCK_RATE => POSITIVE_VALUE_FOR_CLOCK_RATE,
			CLOCK_UNIT => POSITIVE_VALUE_FOR_CLOCK_UNIT
		)
		port map (
			clk => CONNECTED_TO_clk  -- clk.clk
		);

