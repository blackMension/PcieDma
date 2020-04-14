	component Phy_inst_tx_analogreset_bfm_ip is
		port (
			sig_tx_analogreset : out std_logic_vector(0 downto 0)   -- tx_analogreset
		);
	end component Phy_inst_tx_analogreset_bfm_ip;

	u0 : component Phy_inst_tx_analogreset_bfm_ip
		port map (
			sig_tx_analogreset => CONNECTED_TO_sig_tx_analogreset  -- conduit.tx_analogreset
		);

