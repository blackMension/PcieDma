	component XG_inst_xgmii_tx_data_bfm_ip is
		port (
			sig_export : in std_logic_vector(31 downto 0) := (others => 'X')  -- export
		);
	end component XG_inst_xgmii_tx_data_bfm_ip;

	u0 : component XG_inst_xgmii_tx_data_bfm_ip
		port map (
			sig_export => CONNECTED_TO_sig_export  -- conduit.export
		);

