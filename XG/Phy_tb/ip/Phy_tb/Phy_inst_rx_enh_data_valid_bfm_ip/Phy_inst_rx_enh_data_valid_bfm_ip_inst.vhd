	component Phy_inst_rx_enh_data_valid_bfm_ip is
		port (
			sig_rx_enh_data_valid : in std_logic_vector(0 downto 0) := (others => 'X')  -- rx_enh_data_valid
		);
	end component Phy_inst_rx_enh_data_valid_bfm_ip;

	u0 : component Phy_inst_rx_enh_data_valid_bfm_ip
		port map (
			sig_rx_enh_data_valid => CONNECTED_TO_sig_rx_enh_data_valid  -- conduit.rx_enh_data_valid
		);

