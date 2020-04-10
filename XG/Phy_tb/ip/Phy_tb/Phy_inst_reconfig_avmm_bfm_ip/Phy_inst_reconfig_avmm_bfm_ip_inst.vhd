	component Phy_inst_reconfig_avmm_bfm_ip is
		port (
			sig_address     : out std_logic_vector(9 downto 0);                     -- address
			sig_read        : out std_logic_vector(0 downto 0);                     -- read
			sig_readdata    : in  std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			sig_waitrequest : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- waitrequest
			sig_write       : out std_logic_vector(0 downto 0);                     -- write
			sig_writedata   : out std_logic_vector(31 downto 0)                     -- writedata
		);
	end component Phy_inst_reconfig_avmm_bfm_ip;

	u0 : component Phy_inst_reconfig_avmm_bfm_ip
		port map (
			sig_address     => CONNECTED_TO_sig_address,     -- conduit.address
			sig_read        => CONNECTED_TO_sig_read,        --        .read
			sig_readdata    => CONNECTED_TO_sig_readdata,    --        .readdata
			sig_waitrequest => CONNECTED_TO_sig_waitrequest, --        .waitrequest
			sig_write       => CONNECTED_TO_sig_write,       --        .write
			sig_writedata   => CONNECTED_TO_sig_writedata    --        .writedata
		);

