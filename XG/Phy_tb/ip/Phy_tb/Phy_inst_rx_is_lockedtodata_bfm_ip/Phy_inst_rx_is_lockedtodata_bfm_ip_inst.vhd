	component Phy_inst_rx_is_lockedtodata_bfm_ip is
		port (
			sig_rx_is_lockedtodata : in std_logic_vector(0 downto 0) := (others => 'X')  -- rx_is_lockedtodata
		);
	end component Phy_inst_rx_is_lockedtodata_bfm_ip;

	u0 : component Phy_inst_rx_is_lockedtodata_bfm_ip
		port map (
			sig_rx_is_lockedtodata => CONNECTED_TO_sig_rx_is_lockedtodata  -- conduit.rx_is_lockedtodata
		);

