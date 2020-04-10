	Phy_inst_reconfig_avmm_bfm_ip u0 (
		.sig_address     (_connected_to_sig_address_),     //  output,  width = 10, conduit.address
		.sig_read        (_connected_to_sig_read_),        //  output,   width = 1,        .read
		.sig_readdata    (_connected_to_sig_readdata_),    //   input,  width = 32,        .readdata
		.sig_waitrequest (_connected_to_sig_waitrequest_), //   input,   width = 1,        .waitrequest
		.sig_write       (_connected_to_sig_write_),       //  output,   width = 1,        .write
		.sig_writedata   (_connected_to_sig_writedata_)    //  output,  width = 32,        .writedata
	);

