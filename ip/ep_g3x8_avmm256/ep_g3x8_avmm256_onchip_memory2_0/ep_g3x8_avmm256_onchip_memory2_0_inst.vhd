	component ep_g3x8_avmm256_onchip_memory2_0 is
		port (
			clk         : in  std_logic                      := 'X';             -- clk
			clk2        : in  std_logic                      := 'X';             -- clk
			reset       : in  std_logic                      := 'X';             -- reset
			reset_req   : in  std_logic                      := 'X';             -- reset_req
			reset2      : in  std_logic                      := 'X';             -- reset
			reset_req2  : in  std_logic                      := 'X';             -- reset_req
			address     : in  std_logic_vector(9 downto 0)   := (others => 'X'); -- address
			clken       : in  std_logic                      := 'X';             -- clken
			chipselect  : in  std_logic                      := 'X';             -- chipselect
			write       : in  std_logic                      := 'X';             -- write
			readdata    : out std_logic_vector(255 downto 0);                    -- readdata
			writedata   : in  std_logic_vector(255 downto 0) := (others => 'X'); -- writedata
			byteenable  : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- byteenable
			address2    : in  std_logic_vector(9 downto 0)   := (others => 'X'); -- address
			chipselect2 : in  std_logic                      := 'X';             -- chipselect
			clken2      : in  std_logic                      := 'X';             -- clken
			write2      : in  std_logic                      := 'X';             -- write
			readdata2   : out std_logic_vector(255 downto 0);                    -- readdata
			writedata2  : in  std_logic_vector(255 downto 0) := (others => 'X'); -- writedata
			byteenable2 : in  std_logic_vector(31 downto 0)  := (others => 'X')  -- byteenable
		);
	end component ep_g3x8_avmm256_onchip_memory2_0;

	u0 : component ep_g3x8_avmm256_onchip_memory2_0
		port map (
			clk         => CONNECTED_TO_clk,         --   clk1.clk
			clk2        => CONNECTED_TO_clk2,        --   clk2.clk
			reset       => CONNECTED_TO_reset,       -- reset1.reset
			reset_req   => CONNECTED_TO_reset_req,   --       .reset_req
			reset2      => CONNECTED_TO_reset2,      -- reset2.reset
			reset_req2  => CONNECTED_TO_reset_req2,  --       .reset_req
			address     => CONNECTED_TO_address,     --     s1.address
			clken       => CONNECTED_TO_clken,       --       .clken
			chipselect  => CONNECTED_TO_chipselect,  --       .chipselect
			write       => CONNECTED_TO_write,       --       .write
			readdata    => CONNECTED_TO_readdata,    --       .readdata
			writedata   => CONNECTED_TO_writedata,   --       .writedata
			byteenable  => CONNECTED_TO_byteenable,  --       .byteenable
			address2    => CONNECTED_TO_address2,    --     s2.address
			chipselect2 => CONNECTED_TO_chipselect2, --       .chipselect
			clken2      => CONNECTED_TO_clken2,      --       .clken
			write2      => CONNECTED_TO_write2,      --       .write
			readdata2   => CONNECTED_TO_readdata2,   --       .readdata
			writedata2  => CONNECTED_TO_writedata2,  --       .writedata
			byteenable2 => CONNECTED_TO_byteenable2  --       .byteenable
		);

