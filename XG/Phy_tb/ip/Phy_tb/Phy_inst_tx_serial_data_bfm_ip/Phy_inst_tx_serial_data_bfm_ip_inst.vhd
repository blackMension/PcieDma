	component Phy_inst_tx_serial_data_bfm_ip is
		port (
			sig_tx_serial_data : in std_logic_vector(0 downto 0) := (others => 'X')  -- tx_serial_data
		);
	end component Phy_inst_tx_serial_data_bfm_ip;

	u0 : component Phy_inst_tx_serial_data_bfm_ip
		port map (
			sig_tx_serial_data => CONNECTED_TO_sig_tx_serial_data  -- conduit.tx_serial_data
		);

