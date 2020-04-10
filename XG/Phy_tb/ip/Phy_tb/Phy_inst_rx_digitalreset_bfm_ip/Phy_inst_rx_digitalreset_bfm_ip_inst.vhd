	component Phy_inst_rx_digitalreset_bfm_ip is
		port (
			sig_rx_digitalreset : out std_logic_vector(0 downto 0)   -- rx_digitalreset
		);
	end component Phy_inst_rx_digitalreset_bfm_ip;

	u0 : component Phy_inst_rx_digitalreset_bfm_ip
		port map (
			sig_rx_digitalreset => CONNECTED_TO_sig_rx_digitalreset  -- conduit.rx_digitalreset
		);

