// XG_inst_avalon_st_pause_bfm_ip.v

// Generated using ACDS version 17.1.2 304

`timescale 1 ps / 1 ps
module XG_inst_avalon_st_pause_bfm_ip #(
		parameter USE_PACKET       = 0,
		parameter USE_CHANNEL      = 0,
		parameter USE_ERROR        = 0,
		parameter USE_READY        = 0,
		parameter USE_VALID        = 0,
		parameter USE_EMPTY        = 0,
		parameter ST_SYMBOL_W      = 2,
		parameter ST_NUMSYMBOLS    = 1,
		parameter ST_CHANNEL_W     = 1,
		parameter ST_ERROR_W       = 1,
		parameter ST_EMPTY_W       = 1,
		parameter ST_READY_LATENCY = 0,
		parameter ST_BEATSPERCYCLE = 1,
		parameter ST_MAX_CHANNELS  = 0,
		parameter VHDL_ID          = 0
	) (
		input  wire       clk,      //       clk.clk
		input  wire       reset,    // clk_reset.reset
		output wire [1:0] src_data  //       src.data
	);

	altera_avalon_st_source_bfm #(
		.USE_PACKET       (USE_PACKET),
		.USE_CHANNEL      (USE_CHANNEL),
		.USE_ERROR        (USE_ERROR),
		.USE_READY        (USE_READY),
		.USE_VALID        (USE_VALID),
		.USE_EMPTY        (USE_EMPTY),
		.ST_SYMBOL_W      (ST_SYMBOL_W),
		.ST_NUMSYMBOLS    (ST_NUMSYMBOLS),
		.ST_CHANNEL_W     (ST_CHANNEL_W),
		.ST_ERROR_W       (ST_ERROR_W),
		.ST_EMPTY_W       (ST_EMPTY_W),
		.ST_READY_LATENCY (ST_READY_LATENCY),
		.ST_BEATSPERCYCLE (ST_BEATSPERCYCLE),
		.ST_MAX_CHANNELS  (ST_MAX_CHANNELS),
		.VHDL_ID          (VHDL_ID)
	) xg_inst_avalon_st_pause_bfm (
		.clk               (clk),      //   input,  width = 1,       clk.clk
		.reset             (reset),    //   input,  width = 1, clk_reset.reset
		.src_data          (src_data), //  output,  width = 2,       src.data
		.src_valid         (),         // (terminated),                       
		.src_ready         (1'b1),     // (terminated),                       
		.src_startofpacket (),         // (terminated),                       
		.src_endofpacket   (),         // (terminated),                       
		.src_empty         (),         // (terminated),                       
		.src_channel       (),         // (terminated),                       
		.src_error         ()          // (terminated),                       
	);

endmodule
