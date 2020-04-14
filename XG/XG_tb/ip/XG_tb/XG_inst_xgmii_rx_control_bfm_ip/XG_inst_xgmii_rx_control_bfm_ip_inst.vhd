	component XG_inst_xgmii_rx_control_bfm_ip is
		port (
			sig_export : out std_logic_vector(3 downto 0)   -- export
		);
	end component XG_inst_xgmii_rx_control_bfm_ip;

	u0 : component XG_inst_xgmii_rx_control_bfm_ip
		port map (
			sig_export => CONNECTED_TO_sig_export  -- conduit.export
		);

