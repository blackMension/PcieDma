	component Phy_inst_tx_cal_busy_bfm_ip is
		port (
			sig_tx_cal_busy : in std_logic_vector(0 downto 0) := (others => 'X')  -- tx_cal_busy
		);
	end component Phy_inst_tx_cal_busy_bfm_ip;

	u0 : component Phy_inst_tx_cal_busy_bfm_ip
		port map (
			sig_tx_cal_busy => CONNECTED_TO_sig_tx_cal_busy  -- conduit.tx_cal_busy
		);

