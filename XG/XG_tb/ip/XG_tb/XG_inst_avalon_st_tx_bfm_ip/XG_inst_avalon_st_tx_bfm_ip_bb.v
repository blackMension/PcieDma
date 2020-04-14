module XG_inst_avalon_st_tx_bfm_ip #(
		parameter USE_PACKET       = 1,
		parameter USE_CHANNEL      = 0,
		parameter USE_ERROR        = 1,
		parameter USE_READY        = 1,
		parameter USE_VALID        = 1,
		parameter USE_EMPTY        = 1,
		parameter ST_SYMBOL_W      = 8,
		parameter ST_NUMSYMBOLS    = 8,
		parameter ST_CHANNEL_W     = 1,
		parameter ST_ERROR_W       = 1,
		parameter ST_EMPTY_W       = 3,
		parameter ST_READY_LATENCY = 0,
		parameter ST_BEATSPERCYCLE = 1,
		parameter ST_MAX_CHANNELS  = 0,
		parameter VHDL_ID          = 1
	) (
		input  wire        clk,               //       clk.clk
		input  wire        reset,             // clk_reset.reset
		output wire [63:0] src_data,          //       src.data
		output wire [0:0]  src_valid,         //          .valid
		input  wire        src_ready,         //          .ready
		output wire [0:0]  src_startofpacket, //          .startofpacket
		output wire [0:0]  src_endofpacket,   //          .endofpacket
		output wire [2:0]  src_empty,         //          .empty
		output wire [0:0]  src_error          //          .error
	);
endmodule

