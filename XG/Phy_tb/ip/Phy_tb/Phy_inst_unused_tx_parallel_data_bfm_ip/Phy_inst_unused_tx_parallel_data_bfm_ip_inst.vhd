	component Phy_inst_unused_tx_parallel_data_bfm_ip is
		port (
			sig_unused_tx_parallel_data : out std_logic_vector(63 downto 0)   -- unused_tx_parallel_data
		);
	end component Phy_inst_unused_tx_parallel_data_bfm_ip;

	u0 : component Phy_inst_unused_tx_parallel_data_bfm_ip
		port map (
			sig_unused_tx_parallel_data => CONNECTED_TO_sig_unused_tx_parallel_data  -- conduit.unused_tx_parallel_data
		);

