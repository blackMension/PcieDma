	component Phy_inst_rx_pma_div_clkout_bfm_ip is
		port (
			sig_clk : in std_logic_vector(0 downto 0) := (others => 'X')  -- clk
		);
	end component Phy_inst_rx_pma_div_clkout_bfm_ip;

	u0 : component Phy_inst_rx_pma_div_clkout_bfm_ip
		port map (
			sig_clk => CONNECTED_TO_sig_clk  -- conduit.clk
		);

