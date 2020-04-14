	XG_inst_avalon_st_rxstatus_bfm_ip #(
		.USE_PACKET       (INTEGER_VALUE_FOR_USE_PACKET),
		.USE_CHANNEL      (INTEGER_VALUE_FOR_USE_CHANNEL),
		.USE_ERROR        (INTEGER_VALUE_FOR_USE_ERROR),
		.USE_READY        (INTEGER_VALUE_FOR_USE_READY),
		.USE_VALID        (INTEGER_VALUE_FOR_USE_VALID),
		.USE_EMPTY        (INTEGER_VALUE_FOR_USE_EMPTY),
		.ST_SYMBOL_W      (POSITIVE_VALUE_FOR_ST_SYMBOL_W),
		.ST_NUMSYMBOLS    (POSITIVE_VALUE_FOR_ST_NUMSYMBOLS),
		.ST_CHANNEL_W     (POSITIVE_VALUE_FOR_ST_CHANNEL_W),
		.ST_ERROR_W       (POSITIVE_VALUE_FOR_ST_ERROR_W),
		.ST_EMPTY_W       (POSITIVE_VALUE_FOR_ST_EMPTY_W),
		.ST_READY_LATENCY (INTEGER_VALUE_FOR_ST_READY_LATENCY),
		.ST_BEATSPERCYCLE (INTEGER_VALUE_FOR_ST_BEATSPERCYCLE),
		.ST_MAX_CHANNELS  (INTEGER_VALUE_FOR_ST_MAX_CHANNELS),
		.VHDL_ID          (INTEGER_VALUE_FOR_VHDL_ID)
	) u0 (
		.clk        (_connected_to_clk_),        //   input,   width = 1,       clk.clk
		.reset      (_connected_to_reset_),      //   input,   width = 1, clk_reset.reset
		.sink_data  (_connected_to_sink_data_),  //   input,  width = 40,      sink.data
		.sink_valid (_connected_to_sink_valid_), //   input,   width = 1,          .valid
		.sink_error (_connected_to_sink_error_)  //   input,   width = 7,          .error
	);

