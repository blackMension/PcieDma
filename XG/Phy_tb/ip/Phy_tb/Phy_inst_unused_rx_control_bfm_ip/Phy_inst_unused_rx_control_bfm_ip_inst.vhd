	component Phy_inst_unused_rx_control_bfm_ip is
		port (
			sig_unused_rx_control : in std_logic_vector(11 downto 0) := (others => 'X')  -- unused_rx_control
		);
	end component Phy_inst_unused_rx_control_bfm_ip;

	u0 : component Phy_inst_unused_rx_control_bfm_ip
		port map (
			sig_unused_rx_control => CONNECTED_TO_sig_unused_rx_control  -- conduit.unused_rx_control
		);

