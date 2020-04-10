	component Phy_inst_rx_serial_data_bfm_ip is
		port (
			sig_rx_serial_data : out std_logic_vector(0 downto 0)   -- rx_serial_data
		);
	end component Phy_inst_rx_serial_data_bfm_ip;

	u0 : component Phy_inst_rx_serial_data_bfm_ip
		port map (
			sig_rx_serial_data => CONNECTED_TO_sig_rx_serial_data  -- conduit.rx_serial_data
		);

