	component Phy_inst_rx_enh_fifo_del_bfm_ip is
		port (
			sig_rx_enh_fifo_del : in std_logic_vector(0 downto 0) := (others => 'X')  -- rx_enh_fifo_del
		);
	end component Phy_inst_rx_enh_fifo_del_bfm_ip;

	u0 : component Phy_inst_rx_enh_fifo_del_bfm_ip
		port map (
			sig_rx_enh_fifo_del => CONNECTED_TO_sig_rx_enh_fifo_del  -- conduit.rx_enh_fifo_del
		);

