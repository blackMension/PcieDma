module DUT_pcie_tb_ip #(
		parameter lane_mask_hwtcl                      = "x8",
		parameter pll_refclk_freq_hwtcl                = "100 MHz",
		parameter serial_sim_hwtcl                     = 1,
		parameter deemphasis_enable_hwtcl              = "false",
		parameter pld_clk_MHz                          = 125,
		parameter millisecond_cycle_count_hwtcl        = 124250,
		parameter use_crc_forwarding_hwtcl             = 0,
		parameter ecrc_check_capable_hwtcl             = 0,
		parameter ecrc_gen_capable_hwtcl               = 0,
		parameter bfm_drive_interface_clk_hwtcl        = 1,
		parameter bfm_drive_interface_npor_hwtcl       = 1,
		parameter bfm_drive_interface_pipe_hwtcl       = 1,
		parameter bfm_drive_interface_control_hwtcl    = 1,
		parameter enable_pipe32_phyip_ser_driver_hwtcl = 0
	) (
		output wire [31:0] test_in,          //   hip_ctrl.test_in
		output wire        simu_mode_pipe,   //           .simu_mode_pipe
		output wire        sim_pipe_pclk_in, //   hip_pipe.sim_pipe_pclk_in
		input  wire [1:0]  sim_pipe_rate,    //           .sim_pipe_rate
		input  wire [4:0]  sim_ltssmstate,   //           .sim_ltssmstate
		input  wire [2:0]  eidleinfersel0,   //           .eidleinfersel0
		input  wire [2:0]  eidleinfersel1,   //           .eidleinfersel1
		input  wire [2:0]  eidleinfersel2,   //           .eidleinfersel2
		input  wire [2:0]  eidleinfersel3,   //           .eidleinfersel3
		input  wire [2:0]  eidleinfersel4,   //           .eidleinfersel4
		input  wire [2:0]  eidleinfersel5,   //           .eidleinfersel5
		input  wire [2:0]  eidleinfersel6,   //           .eidleinfersel6
		input  wire [2:0]  eidleinfersel7,   //           .eidleinfersel7
		input  wire [1:0]  powerdown0,       //           .powerdown0
		input  wire [1:0]  powerdown1,       //           .powerdown1
		input  wire [1:0]  powerdown2,       //           .powerdown2
		input  wire [1:0]  powerdown3,       //           .powerdown3
		input  wire [1:0]  powerdown4,       //           .powerdown4
		input  wire [1:0]  powerdown5,       //           .powerdown5
		input  wire [1:0]  powerdown6,       //           .powerdown6
		input  wire [1:0]  powerdown7,       //           .powerdown7
		input  wire        rxpolarity0,      //           .rxpolarity0
		input  wire        rxpolarity1,      //           .rxpolarity1
		input  wire        rxpolarity2,      //           .rxpolarity2
		input  wire        rxpolarity3,      //           .rxpolarity3
		input  wire        rxpolarity4,      //           .rxpolarity4
		input  wire        rxpolarity5,      //           .rxpolarity5
		input  wire        rxpolarity6,      //           .rxpolarity6
		input  wire        rxpolarity7,      //           .rxpolarity7
		input  wire        txcompl0,         //           .txcompl0
		input  wire        txcompl1,         //           .txcompl1
		input  wire        txcompl2,         //           .txcompl2
		input  wire        txcompl3,         //           .txcompl3
		input  wire        txcompl4,         //           .txcompl4
		input  wire        txcompl5,         //           .txcompl5
		input  wire        txcompl6,         //           .txcompl6
		input  wire        txcompl7,         //           .txcompl7
		input  wire [31:0] txdata0,          //           .txdata0
		input  wire [31:0] txdata1,          //           .txdata1
		input  wire [31:0] txdata2,          //           .txdata2
		input  wire [31:0] txdata3,          //           .txdata3
		input  wire [31:0] txdata4,          //           .txdata4
		input  wire [31:0] txdata5,          //           .txdata5
		input  wire [31:0] txdata6,          //           .txdata6
		input  wire [31:0] txdata7,          //           .txdata7
		input  wire [3:0]  txdatak0,         //           .txdatak0
		input  wire [3:0]  txdatak1,         //           .txdatak1
		input  wire [3:0]  txdatak2,         //           .txdatak2
		input  wire [3:0]  txdatak3,         //           .txdatak3
		input  wire [3:0]  txdatak4,         //           .txdatak4
		input  wire [3:0]  txdatak5,         //           .txdatak5
		input  wire [3:0]  txdatak6,         //           .txdatak6
		input  wire [3:0]  txdatak7,         //           .txdatak7
		input  wire        txdetectrx0,      //           .txdetectrx0
		input  wire        txdetectrx1,      //           .txdetectrx1
		input  wire        txdetectrx2,      //           .txdetectrx2
		input  wire        txdetectrx3,      //           .txdetectrx3
		input  wire        txdetectrx4,      //           .txdetectrx4
		input  wire        txdetectrx5,      //           .txdetectrx5
		input  wire        txdetectrx6,      //           .txdetectrx6
		input  wire        txdetectrx7,      //           .txdetectrx7
		input  wire        txelecidle0,      //           .txelecidle0
		input  wire        txelecidle1,      //           .txelecidle1
		input  wire        txelecidle2,      //           .txelecidle2
		input  wire        txelecidle3,      //           .txelecidle3
		input  wire        txelecidle4,      //           .txelecidle4
		input  wire        txelecidle5,      //           .txelecidle5
		input  wire        txelecidle6,      //           .txelecidle6
		input  wire        txelecidle7,      //           .txelecidle7
		input  wire        txdeemph0,        //           .txdeemph0
		input  wire        txdeemph1,        //           .txdeemph1
		input  wire        txdeemph2,        //           .txdeemph2
		input  wire        txdeemph3,        //           .txdeemph3
		input  wire        txdeemph4,        //           .txdeemph4
		input  wire        txdeemph5,        //           .txdeemph5
		input  wire        txdeemph6,        //           .txdeemph6
		input  wire        txdeemph7,        //           .txdeemph7
		input  wire [2:0]  txmargin0,        //           .txmargin0
		input  wire [2:0]  txmargin1,        //           .txmargin1
		input  wire [2:0]  txmargin2,        //           .txmargin2
		input  wire [2:0]  txmargin3,        //           .txmargin3
		input  wire [2:0]  txmargin4,        //           .txmargin4
		input  wire [2:0]  txmargin5,        //           .txmargin5
		input  wire [2:0]  txmargin6,        //           .txmargin6
		input  wire [2:0]  txmargin7,        //           .txmargin7
		input  wire        txswing0,         //           .txswing0
		input  wire        txswing1,         //           .txswing1
		input  wire        txswing2,         //           .txswing2
		input  wire        txswing3,         //           .txswing3
		input  wire        txswing4,         //           .txswing4
		input  wire        txswing5,         //           .txswing5
		input  wire        txswing6,         //           .txswing6
		input  wire        txswing7,         //           .txswing7
		output wire        phystatus0,       //           .phystatus0
		output wire        phystatus1,       //           .phystatus1
		output wire        phystatus2,       //           .phystatus2
		output wire        phystatus3,       //           .phystatus3
		output wire        phystatus4,       //           .phystatus4
		output wire        phystatus5,       //           .phystatus5
		output wire        phystatus6,       //           .phystatus6
		output wire        phystatus7,       //           .phystatus7
		output wire [31:0] rxdata0,          //           .rxdata0
		output wire [31:0] rxdata1,          //           .rxdata1
		output wire [31:0] rxdata2,          //           .rxdata2
		output wire [31:0] rxdata3,          //           .rxdata3
		output wire [31:0] rxdata4,          //           .rxdata4
		output wire [31:0] rxdata5,          //           .rxdata5
		output wire [31:0] rxdata6,          //           .rxdata6
		output wire [31:0] rxdata7,          //           .rxdata7
		output wire [3:0]  rxdatak0,         //           .rxdatak0
		output wire [3:0]  rxdatak1,         //           .rxdatak1
		output wire [3:0]  rxdatak2,         //           .rxdatak2
		output wire [3:0]  rxdatak3,         //           .rxdatak3
		output wire [3:0]  rxdatak4,         //           .rxdatak4
		output wire [3:0]  rxdatak5,         //           .rxdatak5
		output wire [3:0]  rxdatak6,         //           .rxdatak6
		output wire [3:0]  rxdatak7,         //           .rxdatak7
		output wire        rxelecidle0,      //           .rxelecidle0
		output wire        rxelecidle1,      //           .rxelecidle1
		output wire        rxelecidle2,      //           .rxelecidle2
		output wire        rxelecidle3,      //           .rxelecidle3
		output wire        rxelecidle4,      //           .rxelecidle4
		output wire        rxelecidle5,      //           .rxelecidle5
		output wire        rxelecidle6,      //           .rxelecidle6
		output wire        rxelecidle7,      //           .rxelecidle7
		output wire [2:0]  rxstatus0,        //           .rxstatus0
		output wire [2:0]  rxstatus1,        //           .rxstatus1
		output wire [2:0]  rxstatus2,        //           .rxstatus2
		output wire [2:0]  rxstatus3,        //           .rxstatus3
		output wire [2:0]  rxstatus4,        //           .rxstatus4
		output wire [2:0]  rxstatus5,        //           .rxstatus5
		output wire [2:0]  rxstatus6,        //           .rxstatus6
		output wire [2:0]  rxstatus7,        //           .rxstatus7
		output wire        rxvalid0,         //           .rxvalid0
		output wire        rxvalid1,         //           .rxvalid1
		output wire        rxvalid2,         //           .rxvalid2
		output wire        rxvalid3,         //           .rxvalid3
		output wire        rxvalid4,         //           .rxvalid4
		output wire        rxvalid5,         //           .rxvalid5
		output wire        rxvalid6,         //           .rxvalid6
		output wire        rxvalid7,         //           .rxvalid7
		output wire        rxdataskip0,      //           .rxdataskip0
		output wire        rxdataskip1,      //           .rxdataskip1
		output wire        rxdataskip2,      //           .rxdataskip2
		output wire        rxdataskip3,      //           .rxdataskip3
		output wire        rxdataskip4,      //           .rxdataskip4
		output wire        rxdataskip5,      //           .rxdataskip5
		output wire        rxdataskip6,      //           .rxdataskip6
		output wire        rxdataskip7,      //           .rxdataskip7
		output wire        rxblkst0,         //           .rxblkst0
		output wire        rxblkst1,         //           .rxblkst1
		output wire        rxblkst2,         //           .rxblkst2
		output wire        rxblkst3,         //           .rxblkst3
		output wire        rxblkst4,         //           .rxblkst4
		output wire        rxblkst5,         //           .rxblkst5
		output wire        rxblkst6,         //           .rxblkst6
		output wire        rxblkst7,         //           .rxblkst7
		output wire [1:0]  rxsynchd0,        //           .rxsynchd0
		output wire [1:0]  rxsynchd1,        //           .rxsynchd1
		output wire [1:0]  rxsynchd2,        //           .rxsynchd2
		output wire [1:0]  rxsynchd3,        //           .rxsynchd3
		output wire [1:0]  rxsynchd4,        //           .rxsynchd4
		output wire [1:0]  rxsynchd5,        //           .rxsynchd5
		output wire [1:0]  rxsynchd6,        //           .rxsynchd6
		output wire [1:0]  rxsynchd7,        //           .rxsynchd7
		input  wire [17:0] currentcoeff0,    //           .currentcoeff0
		input  wire [17:0] currentcoeff1,    //           .currentcoeff1
		input  wire [17:0] currentcoeff2,    //           .currentcoeff2
		input  wire [17:0] currentcoeff3,    //           .currentcoeff3
		input  wire [17:0] currentcoeff4,    //           .currentcoeff4
		input  wire [17:0] currentcoeff5,    //           .currentcoeff5
		input  wire [17:0] currentcoeff6,    //           .currentcoeff6
		input  wire [17:0] currentcoeff7,    //           .currentcoeff7
		input  wire [2:0]  currentrxpreset0, //           .currentrxpreset0
		input  wire [2:0]  currentrxpreset1, //           .currentrxpreset1
		input  wire [2:0]  currentrxpreset2, //           .currentrxpreset2
		input  wire [2:0]  currentrxpreset3, //           .currentrxpreset3
		input  wire [2:0]  currentrxpreset4, //           .currentrxpreset4
		input  wire [2:0]  currentrxpreset5, //           .currentrxpreset5
		input  wire [2:0]  currentrxpreset6, //           .currentrxpreset6
		input  wire [2:0]  currentrxpreset7, //           .currentrxpreset7
		input  wire [1:0]  txsynchd0,        //           .txsynchd0
		input  wire [1:0]  txsynchd1,        //           .txsynchd1
		input  wire [1:0]  txsynchd2,        //           .txsynchd2
		input  wire [1:0]  txsynchd3,        //           .txsynchd3
		input  wire [1:0]  txsynchd4,        //           .txsynchd4
		input  wire [1:0]  txsynchd5,        //           .txsynchd5
		input  wire [1:0]  txsynchd6,        //           .txsynchd6
		input  wire [1:0]  txsynchd7,        //           .txsynchd7
		input  wire        txblkst0,         //           .txblkst0
		input  wire        txblkst1,         //           .txblkst1
		input  wire        txblkst2,         //           .txblkst2
		input  wire        txblkst3,         //           .txblkst3
		input  wire        txblkst4,         //           .txblkst4
		input  wire        txblkst5,         //           .txblkst5
		input  wire        txblkst6,         //           .txblkst6
		input  wire        txblkst7,         //           .txblkst7
		input  wire        txdataskip0,      //           .txdataskip0
		input  wire        txdataskip1,      //           .txdataskip1
		input  wire        txdataskip2,      //           .txdataskip2
		input  wire        txdataskip3,      //           .txdataskip3
		input  wire        txdataskip4,      //           .txdataskip4
		input  wire        txdataskip5,      //           .txdataskip5
		input  wire        txdataskip6,      //           .txdataskip6
		input  wire        txdataskip7,      //           .txdataskip7
		input  wire [1:0]  rate0,            //           .rate0
		input  wire [1:0]  rate1,            //           .rate1
		input  wire [1:0]  rate2,            //           .rate2
		input  wire [1:0]  rate3,            //           .rate3
		input  wire [1:0]  rate4,            //           .rate4
		input  wire [1:0]  rate5,            //           .rate5
		input  wire [1:0]  rate6,            //           .rate6
		input  wire [1:0]  rate7,            //           .rate7
		output wire        rx_in0,           // hip_serial.rx_in0
		output wire        rx_in1,           //           .rx_in1
		output wire        rx_in2,           //           .rx_in2
		output wire        rx_in3,           //           .rx_in3
		output wire        rx_in4,           //           .rx_in4
		output wire        rx_in5,           //           .rx_in5
		output wire        rx_in6,           //           .rx_in6
		output wire        rx_in7,           //           .rx_in7
		input  wire        tx_out0,          //           .tx_out0
		input  wire        tx_out1,          //           .tx_out1
		input  wire        tx_out2,          //           .tx_out2
		input  wire        tx_out3,          //           .tx_out3
		input  wire        tx_out4,          //           .tx_out4
		input  wire        tx_out5,          //           .tx_out5
		input  wire        tx_out6,          //           .tx_out6
		input  wire        tx_out7,          //           .tx_out7
		output wire        npor,             //       npor.npor
		output wire        pin_perst,        //           .pin_perst
		output wire        refclk            //     refclk.clk
	);
endmodule

