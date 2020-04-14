	component Phy_inst_rx_enh_blk_lock_bfm_ip is
		port (
			sig_rx_enh_blk_lock : in std_logic_vector(0 downto 0) := (others => 'X')  -- rx_enh_blk_lock
		);
	end component Phy_inst_rx_enh_blk_lock_bfm_ip;

	u0 : component Phy_inst_rx_enh_blk_lock_bfm_ip
		port map (
			sig_rx_enh_blk_lock => CONNECTED_TO_sig_rx_enh_blk_lock  -- conduit.rx_enh_blk_lock
		);

