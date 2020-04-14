	component Phy_inst_tx_enh_fifo_empty_bfm_ip is
		port (
			sig_tx_enh_fifo_empty : in std_logic_vector(0 downto 0) := (others => 'X')  -- tx_enh_fifo_empty
		);
	end component Phy_inst_tx_enh_fifo_empty_bfm_ip;

	u0 : component Phy_inst_tx_enh_fifo_empty_bfm_ip
		port map (
			sig_tx_enh_fifo_empty => CONNECTED_TO_sig_tx_enh_fifo_empty  -- conduit.tx_enh_fifo_empty
		);

