	component Phy_inst_rx_cal_busy_bfm_ip is
		port (
			sig_rx_cal_busy : in std_logic_vector(0 downto 0) := (others => 'X')  -- rx_cal_busy
		);
	end component Phy_inst_rx_cal_busy_bfm_ip;

	u0 : component Phy_inst_rx_cal_busy_bfm_ip
		port map (
			sig_rx_cal_busy => CONNECTED_TO_sig_rx_cal_busy  -- conduit.rx_cal_busy
		);

