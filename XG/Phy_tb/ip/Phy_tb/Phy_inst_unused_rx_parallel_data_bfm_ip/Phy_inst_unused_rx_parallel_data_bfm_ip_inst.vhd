	component Phy_inst_unused_rx_parallel_data_bfm_ip is
		port (
			sig_unused_rx_parallel_data : in std_logic_vector(63 downto 0) := (others => 'X')  -- unused_rx_parallel_data
		);
	end component Phy_inst_unused_rx_parallel_data_bfm_ip;

	u0 : component Phy_inst_unused_rx_parallel_data_bfm_ip
		port map (
			sig_unused_rx_parallel_data => CONNECTED_TO_sig_unused_rx_parallel_data  -- conduit.unused_rx_parallel_data
		);

