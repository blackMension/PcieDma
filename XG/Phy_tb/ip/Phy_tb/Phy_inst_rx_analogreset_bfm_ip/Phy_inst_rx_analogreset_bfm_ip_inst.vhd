	component Phy_inst_rx_analogreset_bfm_ip is
		port (
			sig_rx_analogreset : out std_logic_vector(0 downto 0)   -- rx_analogreset
		);
	end component Phy_inst_rx_analogreset_bfm_ip;

	u0 : component Phy_inst_rx_analogreset_bfm_ip
		port map (
			sig_rx_analogreset => CONNECTED_TO_sig_rx_analogreset  -- conduit.rx_analogreset
		);

