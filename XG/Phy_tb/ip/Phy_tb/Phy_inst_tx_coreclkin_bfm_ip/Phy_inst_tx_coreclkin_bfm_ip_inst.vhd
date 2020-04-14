	component Phy_inst_tx_coreclkin_bfm_ip is
		port (
			sig_clk : out std_logic_vector(0 downto 0)   -- clk
		);
	end component Phy_inst_tx_coreclkin_bfm_ip;

	u0 : component Phy_inst_tx_coreclkin_bfm_ip
		port map (
			sig_clk => CONNECTED_TO_sig_clk  -- conduit.clk
		);

