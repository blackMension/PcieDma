	component Phy_inst_rx_enh_fifo_full_bfm_ip is
		port (
			sig_rx_enh_fifo_full : in std_logic_vector(0 downto 0) := (others => 'X')  -- rx_enh_fifo_full
		);
	end component Phy_inst_rx_enh_fifo_full_bfm_ip;

	u0 : component Phy_inst_rx_enh_fifo_full_bfm_ip
		port map (
			sig_rx_enh_fifo_full => CONNECTED_TO_sig_rx_enh_fifo_full  -- conduit.rx_enh_fifo_full
		);

