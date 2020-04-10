module Phy_inst_reconfig_avmm_bfm_ip (
		output wire [9:0]  sig_address,     // conduit.address
		output wire [0:0]  sig_read,        //        .read
		input  wire [31:0] sig_readdata,    //        .readdata
		input  wire [0:0]  sig_waitrequest, //        .waitrequest
		output wire [0:0]  sig_write,       //        .write
		output wire [31:0] sig_writedata    //        .writedata
	);
endmodule

