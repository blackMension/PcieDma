module XG_inst_avalon_st_txstatus_bfm_ip #(
		parameter USE_PACKET       = 0,
		parameter USE_CHANNEL      = 0,
		parameter USE_ERROR        = 1,
		parameter USE_READY        = 0,
		parameter USE_VALID        = 1,
		parameter USE_EMPTY        = 0,
		parameter ST_SYMBOL_W      = 8,
		parameter ST_NUMSYMBOLS    = 5,
		parameter ST_CHANNEL_W     = 1,
		parameter ST_ERROR_W       = 7,
		parameter ST_EMPTY_W       = 3,
		parameter ST_READY_LATENCY = 0,
		parameter ST_BEATSPERCYCLE = 1,
		parameter ST_MAX_CHANNELS  = 0,
		parameter VHDL_ID          = 2
	) (
		input  wire        clk,        //       clk.clk
		input  wire        reset,      // clk_reset.reset
		input  wire [39:0] sink_data,  //      sink.data
		input  wire [0:0]  sink_valid, //          .valid
		input  wire [6:0]  sink_error  //          .error
	);
endmodule

