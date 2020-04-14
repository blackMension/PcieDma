	component Phy_inst_tx_enh_fifo_pempty_bfm_ip is
		port (
			sig_tx_enh_fifo_pempty : in std_logic_vector(0 downto 0) := (others => 'X')  -- tx_enh_fifo_pempty
		);
	end component Phy_inst_tx_enh_fifo_pempty_bfm_ip;

	u0 : component Phy_inst_tx_enh_fifo_pempty_bfm_ip
		port map (
			sig_tx_enh_fifo_pempty => CONNECTED_TO_sig_tx_enh_fifo_pempty  -- conduit.tx_enh_fifo_pempty
		);

