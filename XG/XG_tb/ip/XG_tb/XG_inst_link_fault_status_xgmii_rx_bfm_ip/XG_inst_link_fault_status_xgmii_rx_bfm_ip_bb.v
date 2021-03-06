module XG_inst_link_fault_status_xgmii_rx_bfm_ip #(
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
		parameter VHDL_ID          = 3
	) (
		input  wire       clk,       //       clk.clk
		input  wire       reset,     // clk_reset.reset
		input  wire [1:0] sink_data  //      sink.data
	);
endmodule

