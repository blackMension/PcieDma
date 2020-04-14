	component Phy_inst_rx_parallel_data_bfm_ip is
		port (
			sig_rx_parallel_data : in std_logic_vector(63 downto 0) := (others => 'X')  -- rx_parallel_data
		);
	end component Phy_inst_rx_parallel_data_bfm_ip;

	u0 : component Phy_inst_rx_parallel_data_bfm_ip
		port map (
			sig_rx_parallel_data => CONNECTED_TO_sig_rx_parallel_data  -- conduit.rx_parallel_data
		);

