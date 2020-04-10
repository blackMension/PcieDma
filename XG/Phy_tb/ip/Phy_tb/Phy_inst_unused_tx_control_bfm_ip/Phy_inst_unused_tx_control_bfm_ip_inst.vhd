	component Phy_inst_unused_tx_control_bfm_ip is
		port (
			sig_unused_tx_control : out std_logic_vector(8 downto 0)   -- unused_tx_control
		);
	end component Phy_inst_unused_tx_control_bfm_ip;

	u0 : component Phy_inst_unused_tx_control_bfm_ip
		port map (
			sig_unused_tx_control => CONNECTED_TO_sig_unused_tx_control  -- conduit.unused_tx_control
		);

