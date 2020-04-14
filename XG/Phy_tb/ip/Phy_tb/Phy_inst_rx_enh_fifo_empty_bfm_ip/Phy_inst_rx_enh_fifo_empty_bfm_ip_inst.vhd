	component Phy_inst_rx_enh_fifo_empty_bfm_ip is
		port (
			sig_rx_enh_fifo_empty : in std_logic_vector(0 downto 0) := (others => 'X')  -- rx_enh_fifo_empty
		);
	end component Phy_inst_rx_enh_fifo_empty_bfm_ip;

	u0 : component Phy_inst_rx_enh_fifo_empty_bfm_ip
		port map (
			sig_rx_enh_fifo_empty => CONNECTED_TO_sig_rx_enh_fifo_empty  -- conduit.rx_enh_fifo_empty
		);

