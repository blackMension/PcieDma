	component Phy_inst_rx_control_bfm_ip is
		port (
			sig_rx_control : in std_logic_vector(7 downto 0) := (others => 'X')  -- rx_control
		);
	end component Phy_inst_rx_control_bfm_ip;

	u0 : component Phy_inst_rx_control_bfm_ip
		port map (
			sig_rx_control => CONNECTED_TO_sig_rx_control  -- conduit.rx_control
		);

