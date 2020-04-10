	component Phy_inst_tx_enh_data_valid_bfm_ip is
		port (
			sig_tx_enh_data_valid : out std_logic_vector(0 downto 0)   -- tx_enh_data_valid
		);
	end component Phy_inst_tx_enh_data_valid_bfm_ip;

	u0 : component Phy_inst_tx_enh_data_valid_bfm_ip
		port map (
			sig_tx_enh_data_valid => CONNECTED_TO_sig_tx_enh_data_valid  -- conduit.tx_enh_data_valid
		);

