	component Phy_inst_rx_is_lockedtoref_bfm_ip is
		port (
			sig_rx_is_lockedtoref : in std_logic_vector(0 downto 0) := (others => 'X')  -- rx_is_lockedtoref
		);
	end component Phy_inst_rx_is_lockedtoref_bfm_ip;

	u0 : component Phy_inst_rx_is_lockedtoref_bfm_ip
		port map (
			sig_rx_is_lockedtoref => CONNECTED_TO_sig_rx_is_lockedtoref  -- conduit.rx_is_lockedtoref
		);

