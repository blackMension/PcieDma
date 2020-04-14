	component Phy_inst_tx_control_bfm_ip is
		port (
			sig_tx_control : out std_logic_vector(7 downto 0)   -- tx_control
		);
	end component Phy_inst_tx_control_bfm_ip;

	u0 : component Phy_inst_tx_control_bfm_ip
		port map (
			sig_tx_control => CONNECTED_TO_sig_tx_control  -- conduit.tx_control
		);

