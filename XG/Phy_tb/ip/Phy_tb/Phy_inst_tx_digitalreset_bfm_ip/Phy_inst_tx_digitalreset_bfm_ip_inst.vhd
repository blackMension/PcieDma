	component Phy_inst_tx_digitalreset_bfm_ip is
		port (
			sig_tx_digitalreset : out std_logic_vector(0 downto 0)   -- tx_digitalreset
		);
	end component Phy_inst_tx_digitalreset_bfm_ip;

	u0 : component Phy_inst_tx_digitalreset_bfm_ip
		port map (
			sig_tx_digitalreset => CONNECTED_TO_sig_tx_digitalreset  -- conduit.tx_digitalreset
		);

