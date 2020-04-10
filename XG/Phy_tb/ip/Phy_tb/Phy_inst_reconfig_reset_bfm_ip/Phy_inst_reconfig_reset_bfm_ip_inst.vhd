	component Phy_inst_reconfig_reset_bfm_ip is
		port (
			sig_reset : out std_logic_vector(0 downto 0)   -- reset
		);
	end component Phy_inst_reconfig_reset_bfm_ip;

	u0 : component Phy_inst_reconfig_reset_bfm_ip
		port map (
			sig_reset => CONNECTED_TO_sig_reset  -- conduit.reset
		);

