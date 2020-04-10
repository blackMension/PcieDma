	component XG_inst_avalon_st_tx_bfm_ip is
		generic (
			USE_PACKET       : integer  := 0;
			USE_CHANNEL      : integer  := 0;
			USE_ERROR        : integer  := 0;
			USE_READY        : integer  := 1;
			USE_VALID        : integer  := 1;
			USE_EMPTY        : integer  := 0;
			ST_SYMBOL_W      : positive := 8;
			ST_NUMSYMBOLS    : positive := 4;
			ST_CHANNEL_W     : positive := 1;
			ST_ERROR_W       : positive := 1;
			ST_EMPTY_W       : positive := 1;
			ST_READY_LATENCY : integer  := 0;
			ST_BEATSPERCYCLE : integer  := 1;
			ST_MAX_CHANNELS  : integer  := 1;
			VHDL_ID          : integer  := 0
		);
		port (
			clk               : in  std_logic                     := 'X'; -- clk
			reset             : in  std_logic                     := 'X'; -- reset
			src_data          : out std_logic_vector(63 downto 0);        -- data
			src_valid         : out std_logic_vector(0 downto 0);         -- valid
			src_ready         : in  std_logic                     := 'X'; -- ready
			src_startofpacket : out std_logic_vector(0 downto 0);         -- startofpacket
			src_endofpacket   : out std_logic_vector(0 downto 0);         -- endofpacket
			src_empty         : out std_logic_vector(2 downto 0);         -- empty
			src_error         : out std_logic_vector(0 downto 0)          -- error
		);
	end component XG_inst_avalon_st_tx_bfm_ip;

	u0 : component XG_inst_avalon_st_tx_bfm_ip
		generic map (
			USE_PACKET       => INTEGER_VALUE_FOR_USE_PACKET,
			USE_CHANNEL      => INTEGER_VALUE_FOR_USE_CHANNEL,
			USE_ERROR        => INTEGER_VALUE_FOR_USE_ERROR,
			USE_READY        => INTEGER_VALUE_FOR_USE_READY,
			USE_VALID        => INTEGER_VALUE_FOR_USE_VALID,
			USE_EMPTY        => INTEGER_VALUE_FOR_USE_EMPTY,
			ST_SYMBOL_W      => POSITIVE_VALUE_FOR_ST_SYMBOL_W,
			ST_NUMSYMBOLS    => POSITIVE_VALUE_FOR_ST_NUMSYMBOLS,
			ST_CHANNEL_W     => POSITIVE_VALUE_FOR_ST_CHANNEL_W,
			ST_ERROR_W       => POSITIVE_VALUE_FOR_ST_ERROR_W,
			ST_EMPTY_W       => POSITIVE_VALUE_FOR_ST_EMPTY_W,
			ST_READY_LATENCY => INTEGER_VALUE_FOR_ST_READY_LATENCY,
			ST_BEATSPERCYCLE => INTEGER_VALUE_FOR_ST_BEATSPERCYCLE,
			ST_MAX_CHANNELS  => INTEGER_VALUE_FOR_ST_MAX_CHANNELS,
			VHDL_ID          => INTEGER_VALUE_FOR_VHDL_ID
		)
		port map (
			clk               => CONNECTED_TO_clk,               --       clk.clk
			reset             => CONNECTED_TO_reset,             -- clk_reset.reset
			src_data          => CONNECTED_TO_src_data,          --       src.data
			src_valid         => CONNECTED_TO_src_valid,         --          .valid
			src_ready         => CONNECTED_TO_src_ready,         --          .ready
			src_startofpacket => CONNECTED_TO_src_startofpacket, --          .startofpacket
			src_endofpacket   => CONNECTED_TO_src_endofpacket,   --          .endofpacket
			src_empty         => CONNECTED_TO_src_empty,         --          .empty
			src_error         => CONNECTED_TO_src_error          --          .error
		);

