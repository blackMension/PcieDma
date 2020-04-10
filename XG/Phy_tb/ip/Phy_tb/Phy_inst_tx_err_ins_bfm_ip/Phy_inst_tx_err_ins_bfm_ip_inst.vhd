	component Phy_inst_tx_err_ins_bfm_ip is
		port (
			sig_tx_err_ins : out std_logic_vector(0 downto 0)   -- tx_err_ins
		);
	end component Phy_inst_tx_err_ins_bfm_ip;

	u0 : component Phy_inst_tx_err_ins_bfm_ip
		port map (
			sig_tx_err_ins => CONNECTED_TO_sig_tx_err_ins  -- conduit.tx_err_ins
		);

