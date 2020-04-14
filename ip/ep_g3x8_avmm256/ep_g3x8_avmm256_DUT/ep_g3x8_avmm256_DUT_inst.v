	ep_g3x8_avmm256_DUT u0 (
		.app_nreset_status        (_connected_to_app_nreset_status_),        //  output,    width = 1, app_nreset_status.reset_n
		.coreclkout_hip           (_connected_to_coreclkout_hip_),           //  output,    width = 1,    coreclkout_hip.clk
		.cra_chipselect_i         (_connected_to_cra_chipselect_i_),         //   input,    width = 1,               cra.chipselect
		.cra_address_i            (_connected_to_cra_address_i_),            //   input,   width = 14,                  .address
		.cra_byteenable_i         (_connected_to_cra_byteenable_i_),         //   input,    width = 4,                  .byteenable
		.cra_read_i               (_connected_to_cra_read_i_),               //   input,    width = 1,                  .read
		.cra_readdata_o           (_connected_to_cra_readdata_o_),           //  output,   width = 32,                  .readdata
		.cra_write_i              (_connected_to_cra_write_i_),              //   input,    width = 1,                  .write
		.cra_writedata_i          (_connected_to_cra_writedata_i_),          //   input,   width = 32,                  .writedata
		.cra_waitrequest_o        (_connected_to_cra_waitrequest_o_),        //  output,    width = 1,                  .waitrequest
		.rd_dma_address_o         (_connected_to_rd_dma_address_o_),         //  output,   width = 64,     dma_rd_master.address
		.rd_dma_write_o           (_connected_to_rd_dma_write_o_),           //  output,    width = 1,                  .write
		.rd_dma_write_data_o      (_connected_to_rd_dma_write_data_o_),      //  output,  width = 256,                  .writedata
		.rd_dma_wait_request_i    (_connected_to_rd_dma_wait_request_i_),    //   input,    width = 1,                  .waitrequest
		.rd_dma_burst_count_o     (_connected_to_rd_dma_burst_count_o_),     //  output,    width = 5,                  .burstcount
		.rd_dma_byte_enable_o     (_connected_to_rd_dma_byte_enable_o_),     //  output,   width = 32,                  .byteenable
		.wr_dma_address_o         (_connected_to_wr_dma_address_o_),         //  output,   width = 64,     dma_wr_master.address
		.wr_dma_read_o            (_connected_to_wr_dma_read_o_),            //  output,    width = 1,                  .read
		.wr_dma_read_data_i       (_connected_to_wr_dma_read_data_i_),       //   input,  width = 256,                  .readdata
		.wr_dma_wait_request_i    (_connected_to_wr_dma_wait_request_i_),    //   input,    width = 1,                  .waitrequest
		.wr_dma_burst_count_o     (_connected_to_wr_dma_burst_count_o_),     //  output,    width = 5,                  .burstcount
		.wr_dma_read_data_valid_i (_connected_to_wr_dma_read_data_valid_i_), //   input,    width = 1,                  .readdatavalid
		.test_in                  (_connected_to_test_in_),                  //   input,   width = 32,          hip_ctrl.test_in
		.simu_mode_pipe           (_connected_to_simu_mode_pipe_),           //   input,    width = 1,                  .simu_mode_pipe
		.sim_pipe_pclk_in         (_connected_to_sim_pipe_pclk_in_),         //   input,    width = 1,          hip_pipe.sim_pipe_pclk_in
		.sim_pipe_rate            (_connected_to_sim_pipe_rate_),            //  output,    width = 2,                  .sim_pipe_rate
		.sim_ltssmstate           (_connected_to_sim_ltssmstate_),           //  output,    width = 5,                  .sim_ltssmstate
		.eidleinfersel0           (_connected_to_eidleinfersel0_),           //  output,    width = 3,                  .eidleinfersel0
		.eidleinfersel1           (_connected_to_eidleinfersel1_),           //  output,    width = 3,                  .eidleinfersel1
		.eidleinfersel2           (_connected_to_eidleinfersel2_),           //  output,    width = 3,                  .eidleinfersel2
		.eidleinfersel3           (_connected_to_eidleinfersel3_),           //  output,    width = 3,                  .eidleinfersel3
		.eidleinfersel4           (_connected_to_eidleinfersel4_),           //  output,    width = 3,                  .eidleinfersel4
		.eidleinfersel5           (_connected_to_eidleinfersel5_),           //  output,    width = 3,                  .eidleinfersel5
		.eidleinfersel6           (_connected_to_eidleinfersel6_),           //  output,    width = 3,                  .eidleinfersel6
		.eidleinfersel7           (_connected_to_eidleinfersel7_),           //  output,    width = 3,                  .eidleinfersel7
		.powerdown0               (_connected_to_powerdown0_),               //  output,    width = 2,                  .powerdown0
		.powerdown1               (_connected_to_powerdown1_),               //  output,    width = 2,                  .powerdown1
		.powerdown2               (_connected_to_powerdown2_),               //  output,    width = 2,                  .powerdown2
		.powerdown3               (_connected_to_powerdown3_),               //  output,    width = 2,                  .powerdown3
		.powerdown4               (_connected_to_powerdown4_),               //  output,    width = 2,                  .powerdown4
		.powerdown5               (_connected_to_powerdown5_),               //  output,    width = 2,                  .powerdown5
		.powerdown6               (_connected_to_powerdown6_),               //  output,    width = 2,                  .powerdown6
		.powerdown7               (_connected_to_powerdown7_),               //  output,    width = 2,                  .powerdown7
		.rxpolarity0              (_connected_to_rxpolarity0_),              //  output,    width = 1,                  .rxpolarity0
		.rxpolarity1              (_connected_to_rxpolarity1_),              //  output,    width = 1,                  .rxpolarity1
		.rxpolarity2              (_connected_to_rxpolarity2_),              //  output,    width = 1,                  .rxpolarity2
		.rxpolarity3              (_connected_to_rxpolarity3_),              //  output,    width = 1,                  .rxpolarity3
		.rxpolarity4              (_connected_to_rxpolarity4_),              //  output,    width = 1,                  .rxpolarity4
		.rxpolarity5              (_connected_to_rxpolarity5_),              //  output,    width = 1,                  .rxpolarity5
		.rxpolarity6              (_connected_to_rxpolarity6_),              //  output,    width = 1,                  .rxpolarity6
		.rxpolarity7              (_connected_to_rxpolarity7_),              //  output,    width = 1,                  .rxpolarity7
		.txcompl0                 (_connected_to_txcompl0_),                 //  output,    width = 1,                  .txcompl0
		.txcompl1                 (_connected_to_txcompl1_),                 //  output,    width = 1,                  .txcompl1
		.txcompl2                 (_connected_to_txcompl2_),                 //  output,    width = 1,                  .txcompl2
		.txcompl3                 (_connected_to_txcompl3_),                 //  output,    width = 1,                  .txcompl3
		.txcompl4                 (_connected_to_txcompl4_),                 //  output,    width = 1,                  .txcompl4
		.txcompl5                 (_connected_to_txcompl5_),                 //  output,    width = 1,                  .txcompl5
		.txcompl6                 (_connected_to_txcompl6_),                 //  output,    width = 1,                  .txcompl6
		.txcompl7                 (_connected_to_txcompl7_),                 //  output,    width = 1,                  .txcompl7
		.txdata0                  (_connected_to_txdata0_),                  //  output,   width = 32,                  .txdata0
		.txdata1                  (_connected_to_txdata1_),                  //  output,   width = 32,                  .txdata1
		.txdata2                  (_connected_to_txdata2_),                  //  output,   width = 32,                  .txdata2
		.txdata3                  (_connected_to_txdata3_),                  //  output,   width = 32,                  .txdata3
		.txdata4                  (_connected_to_txdata4_),                  //  output,   width = 32,                  .txdata4
		.txdata5                  (_connected_to_txdata5_),                  //  output,   width = 32,                  .txdata5
		.txdata6                  (_connected_to_txdata6_),                  //  output,   width = 32,                  .txdata6
		.txdata7                  (_connected_to_txdata7_),                  //  output,   width = 32,                  .txdata7
		.txdatak0                 (_connected_to_txdatak0_),                 //  output,    width = 4,                  .txdatak0
		.txdatak1                 (_connected_to_txdatak1_),                 //  output,    width = 4,                  .txdatak1
		.txdatak2                 (_connected_to_txdatak2_),                 //  output,    width = 4,                  .txdatak2
		.txdatak3                 (_connected_to_txdatak3_),                 //  output,    width = 4,                  .txdatak3
		.txdatak4                 (_connected_to_txdatak4_),                 //  output,    width = 4,                  .txdatak4
		.txdatak5                 (_connected_to_txdatak5_),                 //  output,    width = 4,                  .txdatak5
		.txdatak6                 (_connected_to_txdatak6_),                 //  output,    width = 4,                  .txdatak6
		.txdatak7                 (_connected_to_txdatak7_),                 //  output,    width = 4,                  .txdatak7
		.txdetectrx0              (_connected_to_txdetectrx0_),              //  output,    width = 1,                  .txdetectrx0
		.txdetectrx1              (_connected_to_txdetectrx1_),              //  output,    width = 1,                  .txdetectrx1
		.txdetectrx2              (_connected_to_txdetectrx2_),              //  output,    width = 1,                  .txdetectrx2
		.txdetectrx3              (_connected_to_txdetectrx3_),              //  output,    width = 1,                  .txdetectrx3
		.txdetectrx4              (_connected_to_txdetectrx4_),              //  output,    width = 1,                  .txdetectrx4
		.txdetectrx5              (_connected_to_txdetectrx5_),              //  output,    width = 1,                  .txdetectrx5
		.txdetectrx6              (_connected_to_txdetectrx6_),              //  output,    width = 1,                  .txdetectrx6
		.txdetectrx7              (_connected_to_txdetectrx7_),              //  output,    width = 1,                  .txdetectrx7
		.txelecidle0              (_connected_to_txelecidle0_),              //  output,    width = 1,                  .txelecidle0
		.txelecidle1              (_connected_to_txelecidle1_),              //  output,    width = 1,                  .txelecidle1
		.txelecidle2              (_connected_to_txelecidle2_),              //  output,    width = 1,                  .txelecidle2
		.txelecidle3              (_connected_to_txelecidle3_),              //  output,    width = 1,                  .txelecidle3
		.txelecidle4              (_connected_to_txelecidle4_),              //  output,    width = 1,                  .txelecidle4
		.txelecidle5              (_connected_to_txelecidle5_),              //  output,    width = 1,                  .txelecidle5
		.txelecidle6              (_connected_to_txelecidle6_),              //  output,    width = 1,                  .txelecidle6
		.txelecidle7              (_connected_to_txelecidle7_),              //  output,    width = 1,                  .txelecidle7
		.txdeemph0                (_connected_to_txdeemph0_),                //  output,    width = 1,                  .txdeemph0
		.txdeemph1                (_connected_to_txdeemph1_),                //  output,    width = 1,                  .txdeemph1
		.txdeemph2                (_connected_to_txdeemph2_),                //  output,    width = 1,                  .txdeemph2
		.txdeemph3                (_connected_to_txdeemph3_),                //  output,    width = 1,                  .txdeemph3
		.txdeemph4                (_connected_to_txdeemph4_),                //  output,    width = 1,                  .txdeemph4
		.txdeemph5                (_connected_to_txdeemph5_),                //  output,    width = 1,                  .txdeemph5
		.txdeemph6                (_connected_to_txdeemph6_),                //  output,    width = 1,                  .txdeemph6
		.txdeemph7                (_connected_to_txdeemph7_),                //  output,    width = 1,                  .txdeemph7
		.txmargin0                (_connected_to_txmargin0_),                //  output,    width = 3,                  .txmargin0
		.txmargin1                (_connected_to_txmargin1_),                //  output,    width = 3,                  .txmargin1
		.txmargin2                (_connected_to_txmargin2_),                //  output,    width = 3,                  .txmargin2
		.txmargin3                (_connected_to_txmargin3_),                //  output,    width = 3,                  .txmargin3
		.txmargin4                (_connected_to_txmargin4_),                //  output,    width = 3,                  .txmargin4
		.txmargin5                (_connected_to_txmargin5_),                //  output,    width = 3,                  .txmargin5
		.txmargin6                (_connected_to_txmargin6_),                //  output,    width = 3,                  .txmargin6
		.txmargin7                (_connected_to_txmargin7_),                //  output,    width = 3,                  .txmargin7
		.txswing0                 (_connected_to_txswing0_),                 //  output,    width = 1,                  .txswing0
		.txswing1                 (_connected_to_txswing1_),                 //  output,    width = 1,                  .txswing1
		.txswing2                 (_connected_to_txswing2_),                 //  output,    width = 1,                  .txswing2
		.txswing3                 (_connected_to_txswing3_),                 //  output,    width = 1,                  .txswing3
		.txswing4                 (_connected_to_txswing4_),                 //  output,    width = 1,                  .txswing4
		.txswing5                 (_connected_to_txswing5_),                 //  output,    width = 1,                  .txswing5
		.txswing6                 (_connected_to_txswing6_),                 //  output,    width = 1,                  .txswing6
		.txswing7                 (_connected_to_txswing7_),                 //  output,    width = 1,                  .txswing7
		.phystatus0               (_connected_to_phystatus0_),               //   input,    width = 1,                  .phystatus0
		.phystatus1               (_connected_to_phystatus1_),               //   input,    width = 1,                  .phystatus1
		.phystatus2               (_connected_to_phystatus2_),               //   input,    width = 1,                  .phystatus2
		.phystatus3               (_connected_to_phystatus3_),               //   input,    width = 1,                  .phystatus3
		.phystatus4               (_connected_to_phystatus4_),               //   input,    width = 1,                  .phystatus4
		.phystatus5               (_connected_to_phystatus5_),               //   input,    width = 1,                  .phystatus5
		.phystatus6               (_connected_to_phystatus6_),               //   input,    width = 1,                  .phystatus6
		.phystatus7               (_connected_to_phystatus7_),               //   input,    width = 1,                  .phystatus7
		.rxdata0                  (_connected_to_rxdata0_),                  //   input,   width = 32,                  .rxdata0
		.rxdata1                  (_connected_to_rxdata1_),                  //   input,   width = 32,                  .rxdata1
		.rxdata2                  (_connected_to_rxdata2_),                  //   input,   width = 32,                  .rxdata2
		.rxdata3                  (_connected_to_rxdata3_),                  //   input,   width = 32,                  .rxdata3
		.rxdata4                  (_connected_to_rxdata4_),                  //   input,   width = 32,                  .rxdata4
		.rxdata5                  (_connected_to_rxdata5_),                  //   input,   width = 32,                  .rxdata5
		.rxdata6                  (_connected_to_rxdata6_),                  //   input,   width = 32,                  .rxdata6
		.rxdata7                  (_connected_to_rxdata7_),                  //   input,   width = 32,                  .rxdata7
		.rxdatak0                 (_connected_to_rxdatak0_),                 //   input,    width = 4,                  .rxdatak0
		.rxdatak1                 (_connected_to_rxdatak1_),                 //   input,    width = 4,                  .rxdatak1
		.rxdatak2                 (_connected_to_rxdatak2_),                 //   input,    width = 4,                  .rxdatak2
		.rxdatak3                 (_connected_to_rxdatak3_),                 //   input,    width = 4,                  .rxdatak3
		.rxdatak4                 (_connected_to_rxdatak4_),                 //   input,    width = 4,                  .rxdatak4
		.rxdatak5                 (_connected_to_rxdatak5_),                 //   input,    width = 4,                  .rxdatak5
		.rxdatak6                 (_connected_to_rxdatak6_),                 //   input,    width = 4,                  .rxdatak6
		.rxdatak7                 (_connected_to_rxdatak7_),                 //   input,    width = 4,                  .rxdatak7
		.rxelecidle0              (_connected_to_rxelecidle0_),              //   input,    width = 1,                  .rxelecidle0
		.rxelecidle1              (_connected_to_rxelecidle1_),              //   input,    width = 1,                  .rxelecidle1
		.rxelecidle2              (_connected_to_rxelecidle2_),              //   input,    width = 1,                  .rxelecidle2
		.rxelecidle3              (_connected_to_rxelecidle3_),              //   input,    width = 1,                  .rxelecidle3
		.rxelecidle4              (_connected_to_rxelecidle4_),              //   input,    width = 1,                  .rxelecidle4
		.rxelecidle5              (_connected_to_rxelecidle5_),              //   input,    width = 1,                  .rxelecidle5
		.rxelecidle6              (_connected_to_rxelecidle6_),              //   input,    width = 1,                  .rxelecidle6
		.rxelecidle7              (_connected_to_rxelecidle7_),              //   input,    width = 1,                  .rxelecidle7
		.rxstatus0                (_connected_to_rxstatus0_),                //   input,    width = 3,                  .rxstatus0
		.rxstatus1                (_connected_to_rxstatus1_),                //   input,    width = 3,                  .rxstatus1
		.rxstatus2                (_connected_to_rxstatus2_),                //   input,    width = 3,                  .rxstatus2
		.rxstatus3                (_connected_to_rxstatus3_),                //   input,    width = 3,                  .rxstatus3
		.rxstatus4                (_connected_to_rxstatus4_),                //   input,    width = 3,                  .rxstatus4
		.rxstatus5                (_connected_to_rxstatus5_),                //   input,    width = 3,                  .rxstatus5
		.rxstatus6                (_connected_to_rxstatus6_),                //   input,    width = 3,                  .rxstatus6
		.rxstatus7                (_connected_to_rxstatus7_),                //   input,    width = 3,                  .rxstatus7
		.rxvalid0                 (_connected_to_rxvalid0_),                 //   input,    width = 1,                  .rxvalid0
		.rxvalid1                 (_connected_to_rxvalid1_),                 //   input,    width = 1,                  .rxvalid1
		.rxvalid2                 (_connected_to_rxvalid2_),                 //   input,    width = 1,                  .rxvalid2
		.rxvalid3                 (_connected_to_rxvalid3_),                 //   input,    width = 1,                  .rxvalid3
		.rxvalid4                 (_connected_to_rxvalid4_),                 //   input,    width = 1,                  .rxvalid4
		.rxvalid5                 (_connected_to_rxvalid5_),                 //   input,    width = 1,                  .rxvalid5
		.rxvalid6                 (_connected_to_rxvalid6_),                 //   input,    width = 1,                  .rxvalid6
		.rxvalid7                 (_connected_to_rxvalid7_),                 //   input,    width = 1,                  .rxvalid7
		.rxdataskip0              (_connected_to_rxdataskip0_),              //   input,    width = 1,                  .rxdataskip0
		.rxdataskip1              (_connected_to_rxdataskip1_),              //   input,    width = 1,                  .rxdataskip1
		.rxdataskip2              (_connected_to_rxdataskip2_),              //   input,    width = 1,                  .rxdataskip2
		.rxdataskip3              (_connected_to_rxdataskip3_),              //   input,    width = 1,                  .rxdataskip3
		.rxdataskip4              (_connected_to_rxdataskip4_),              //   input,    width = 1,                  .rxdataskip4
		.rxdataskip5              (_connected_to_rxdataskip5_),              //   input,    width = 1,                  .rxdataskip5
		.rxdataskip6              (_connected_to_rxdataskip6_),              //   input,    width = 1,                  .rxdataskip6
		.rxdataskip7              (_connected_to_rxdataskip7_),              //   input,    width = 1,                  .rxdataskip7
		.rxblkst0                 (_connected_to_rxblkst0_),                 //   input,    width = 1,                  .rxblkst0
		.rxblkst1                 (_connected_to_rxblkst1_),                 //   input,    width = 1,                  .rxblkst1
		.rxblkst2                 (_connected_to_rxblkst2_),                 //   input,    width = 1,                  .rxblkst2
		.rxblkst3                 (_connected_to_rxblkst3_),                 //   input,    width = 1,                  .rxblkst3
		.rxblkst4                 (_connected_to_rxblkst4_),                 //   input,    width = 1,                  .rxblkst4
		.rxblkst5                 (_connected_to_rxblkst5_),                 //   input,    width = 1,                  .rxblkst5
		.rxblkst6                 (_connected_to_rxblkst6_),                 //   input,    width = 1,                  .rxblkst6
		.rxblkst7                 (_connected_to_rxblkst7_),                 //   input,    width = 1,                  .rxblkst7
		.rxsynchd0                (_connected_to_rxsynchd0_),                //   input,    width = 2,                  .rxsynchd0
		.rxsynchd1                (_connected_to_rxsynchd1_),                //   input,    width = 2,                  .rxsynchd1
		.rxsynchd2                (_connected_to_rxsynchd2_),                //   input,    width = 2,                  .rxsynchd2
		.rxsynchd3                (_connected_to_rxsynchd3_),                //   input,    width = 2,                  .rxsynchd3
		.rxsynchd4                (_connected_to_rxsynchd4_),                //   input,    width = 2,                  .rxsynchd4
		.rxsynchd5                (_connected_to_rxsynchd5_),                //   input,    width = 2,                  .rxsynchd5
		.rxsynchd6                (_connected_to_rxsynchd6_),                //   input,    width = 2,                  .rxsynchd6
		.rxsynchd7                (_connected_to_rxsynchd7_),                //   input,    width = 2,                  .rxsynchd7
		.currentcoeff0            (_connected_to_currentcoeff0_),            //  output,   width = 18,                  .currentcoeff0
		.currentcoeff1            (_connected_to_currentcoeff1_),            //  output,   width = 18,                  .currentcoeff1
		.currentcoeff2            (_connected_to_currentcoeff2_),            //  output,   width = 18,                  .currentcoeff2
		.currentcoeff3            (_connected_to_currentcoeff3_),            //  output,   width = 18,                  .currentcoeff3
		.currentcoeff4            (_connected_to_currentcoeff4_),            //  output,   width = 18,                  .currentcoeff4
		.currentcoeff5            (_connected_to_currentcoeff5_),            //  output,   width = 18,                  .currentcoeff5
		.currentcoeff6            (_connected_to_currentcoeff6_),            //  output,   width = 18,                  .currentcoeff6
		.currentcoeff7            (_connected_to_currentcoeff7_),            //  output,   width = 18,                  .currentcoeff7
		.currentrxpreset0         (_connected_to_currentrxpreset0_),         //  output,    width = 3,                  .currentrxpreset0
		.currentrxpreset1         (_connected_to_currentrxpreset1_),         //  output,    width = 3,                  .currentrxpreset1
		.currentrxpreset2         (_connected_to_currentrxpreset2_),         //  output,    width = 3,                  .currentrxpreset2
		.currentrxpreset3         (_connected_to_currentrxpreset3_),         //  output,    width = 3,                  .currentrxpreset3
		.currentrxpreset4         (_connected_to_currentrxpreset4_),         //  output,    width = 3,                  .currentrxpreset4
		.currentrxpreset5         (_connected_to_currentrxpreset5_),         //  output,    width = 3,                  .currentrxpreset5
		.currentrxpreset6         (_connected_to_currentrxpreset6_),         //  output,    width = 3,                  .currentrxpreset6
		.currentrxpreset7         (_connected_to_currentrxpreset7_),         //  output,    width = 3,                  .currentrxpreset7
		.txsynchd0                (_connected_to_txsynchd0_),                //  output,    width = 2,                  .txsynchd0
		.txsynchd1                (_connected_to_txsynchd1_),                //  output,    width = 2,                  .txsynchd1
		.txsynchd2                (_connected_to_txsynchd2_),                //  output,    width = 2,                  .txsynchd2
		.txsynchd3                (_connected_to_txsynchd3_),                //  output,    width = 2,                  .txsynchd3
		.txsynchd4                (_connected_to_txsynchd4_),                //  output,    width = 2,                  .txsynchd4
		.txsynchd5                (_connected_to_txsynchd5_),                //  output,    width = 2,                  .txsynchd5
		.txsynchd6                (_connected_to_txsynchd6_),                //  output,    width = 2,                  .txsynchd6
		.txsynchd7                (_connected_to_txsynchd7_),                //  output,    width = 2,                  .txsynchd7
		.txblkst0                 (_connected_to_txblkst0_),                 //  output,    width = 1,                  .txblkst0
		.txblkst1                 (_connected_to_txblkst1_),                 //  output,    width = 1,                  .txblkst1
		.txblkst2                 (_connected_to_txblkst2_),                 //  output,    width = 1,                  .txblkst2
		.txblkst3                 (_connected_to_txblkst3_),                 //  output,    width = 1,                  .txblkst3
		.txblkst4                 (_connected_to_txblkst4_),                 //  output,    width = 1,                  .txblkst4
		.txblkst5                 (_connected_to_txblkst5_),                 //  output,    width = 1,                  .txblkst5
		.txblkst6                 (_connected_to_txblkst6_),                 //  output,    width = 1,                  .txblkst6
		.txblkst7                 (_connected_to_txblkst7_),                 //  output,    width = 1,                  .txblkst7
		.txdataskip0              (_connected_to_txdataskip0_),              //  output,    width = 1,                  .txdataskip0
		.txdataskip1              (_connected_to_txdataskip1_),              //  output,    width = 1,                  .txdataskip1
		.txdataskip2              (_connected_to_txdataskip2_),              //  output,    width = 1,                  .txdataskip2
		.txdataskip3              (_connected_to_txdataskip3_),              //  output,    width = 1,                  .txdataskip3
		.txdataskip4              (_connected_to_txdataskip4_),              //  output,    width = 1,                  .txdataskip4
		.txdataskip5              (_connected_to_txdataskip5_),              //  output,    width = 1,                  .txdataskip5
		.txdataskip6              (_connected_to_txdataskip6_),              //  output,    width = 1,                  .txdataskip6
		.txdataskip7              (_connected_to_txdataskip7_),              //  output,    width = 1,                  .txdataskip7
		.rate0                    (_connected_to_rate0_),                    //  output,    width = 2,                  .rate0
		.rate1                    (_connected_to_rate1_),                    //  output,    width = 2,                  .rate1
		.rate2                    (_connected_to_rate2_),                    //  output,    width = 2,                  .rate2
		.rate3                    (_connected_to_rate3_),                    //  output,    width = 2,                  .rate3
		.rate4                    (_connected_to_rate4_),                    //  output,    width = 2,                  .rate4
		.rate5                    (_connected_to_rate5_),                    //  output,    width = 2,                  .rate5
		.rate6                    (_connected_to_rate6_),                    //  output,    width = 2,                  .rate6
		.rate7                    (_connected_to_rate7_),                    //  output,    width = 2,                  .rate7
		.rx_in0                   (_connected_to_rx_in0_),                   //   input,    width = 1,        hip_serial.rx_in0
		.rx_in1                   (_connected_to_rx_in1_),                   //   input,    width = 1,                  .rx_in1
		.rx_in2                   (_connected_to_rx_in2_),                   //   input,    width = 1,                  .rx_in2
		.rx_in3                   (_connected_to_rx_in3_),                   //   input,    width = 1,                  .rx_in3
		.rx_in4                   (_connected_to_rx_in4_),                   //   input,    width = 1,                  .rx_in4
		.rx_in5                   (_connected_to_rx_in5_),                   //   input,    width = 1,                  .rx_in5
		.rx_in6                   (_connected_to_rx_in6_),                   //   input,    width = 1,                  .rx_in6
		.rx_in7                   (_connected_to_rx_in7_),                   //   input,    width = 1,                  .rx_in7
		.tx_out0                  (_connected_to_tx_out0_),                  //  output,    width = 1,                  .tx_out0
		.tx_out1                  (_connected_to_tx_out1_),                  //  output,    width = 1,                  .tx_out1
		.tx_out2                  (_connected_to_tx_out2_),                  //  output,    width = 1,                  .tx_out2
		.tx_out3                  (_connected_to_tx_out3_),                  //  output,    width = 1,                  .tx_out3
		.tx_out4                  (_connected_to_tx_out4_),                  //  output,    width = 1,                  .tx_out4
		.tx_out5                  (_connected_to_tx_out5_),                  //  output,    width = 1,                  .tx_out5
		.tx_out6                  (_connected_to_tx_out6_),                  //  output,    width = 1,                  .tx_out6
		.tx_out7                  (_connected_to_tx_out7_),                  //  output,    width = 1,                  .tx_out7
		.intx_req_i               (_connected_to_intx_req_i_),               //   input,    width = 1,        intx_intfc.intx_req
		.intx_ack_o               (_connected_to_intx_ack_o_),               //  output,    width = 1,                  .intx_ack
		.msi_control_o            (_connected_to_msi_control_o_),            //  output,   width = 16,       msi_control.msi_control
		.msi_intfc_o              (_connected_to_msi_intfc_o_),              //  output,   width = 82,         msi_intfc.msi_intfc
		.msix_intfc_o             (_connected_to_msix_intfc_o_),             //  output,   width = 16,        msix_intfc.msix_intfc
		.npor                     (_connected_to_npor_),                     //   input,    width = 1,              npor.npor
		.pin_perst                (_connected_to_pin_perst_),                //   input,    width = 1,                  .pin_perst
		.rd_ast_rx_valid_i        (_connected_to_rd_ast_rx_valid_i_),        //   input,    width = 1,         rd_ast_rx.valid
		.rd_ast_rx_data_i         (_connected_to_rd_ast_rx_data_i_),         //   input,  width = 160,                  .data
		.rd_ast_rx_ready_o        (_connected_to_rd_ast_rx_ready_o_),        //  output,    width = 1,                  .ready
		.rd_ast_tx_valid_o        (_connected_to_rd_ast_tx_valid_o_),        //  output,    width = 1,         rd_ast_tx.valid
		.rd_ast_tx_data_o         (_connected_to_rd_ast_tx_data_o_),         //  output,   width = 32,                  .data
		.refclk                   (_connected_to_refclk_),                   //   input,    width = 1,            refclk.clk
		.rxm_bar0_address_o       (_connected_to_rxm_bar0_address_o_),       //  output,   width = 64,          rxm_bar0.address
		.rxm_bar0_byteenable_o    (_connected_to_rxm_bar0_byteenable_o_),    //  output,    width = 4,                  .byteenable
		.rxm_bar0_readdata_i      (_connected_to_rxm_bar0_readdata_i_),      //   input,   width = 32,                  .readdata
		.rxm_bar0_writedata_o     (_connected_to_rxm_bar0_writedata_o_),     //  output,   width = 32,                  .writedata
		.rxm_bar0_read_o          (_connected_to_rxm_bar0_read_o_),          //  output,    width = 1,                  .read
		.rxm_bar0_write_o         (_connected_to_rxm_bar0_write_o_),         //  output,    width = 1,                  .write
		.rxm_bar0_readdatavalid_i (_connected_to_rxm_bar0_readdatavalid_i_), //   input,    width = 1,                  .readdatavalid
		.rxm_bar0_waitrequest_i   (_connected_to_rxm_bar0_waitrequest_i_),   //   input,    width = 1,                  .waitrequest
		.rxm_bar4_address_o       (_connected_to_rxm_bar4_address_o_),       //  output,   width = 64,          rxm_bar4.address
		.rxm_bar4_byteenable_o    (_connected_to_rxm_bar4_byteenable_o_),    //  output,    width = 4,                  .byteenable
		.rxm_bar4_readdata_i      (_connected_to_rxm_bar4_readdata_i_),      //   input,   width = 32,                  .readdata
		.rxm_bar4_writedata_o     (_connected_to_rxm_bar4_writedata_o_),     //  output,   width = 32,                  .writedata
		.rxm_bar4_read_o          (_connected_to_rxm_bar4_read_o_),          //  output,    width = 1,                  .read
		.rxm_bar4_write_o         (_connected_to_rxm_bar4_write_o_),         //  output,    width = 1,                  .write
		.rxm_bar4_readdatavalid_i (_connected_to_rxm_bar4_readdatavalid_i_), //   input,    width = 1,                  .readdatavalid
		.rxm_bar4_waitrequest_i   (_connected_to_rxm_bar4_waitrequest_i_),   //   input,    width = 1,                  .waitrequest
		.txs_address_i            (_connected_to_txs_address_i_),            //   input,   width = 32,               txs.address
		.txs_chipselect_i         (_connected_to_txs_chipselect_i_),         //   input,    width = 1,                  .chipselect
		.txs_byteenable_i         (_connected_to_txs_byteenable_i_),         //   input,    width = 4,                  .byteenable
		.txs_readdata_o           (_connected_to_txs_readdata_o_),           //  output,   width = 32,                  .readdata
		.txs_writedata_i          (_connected_to_txs_writedata_i_),          //   input,   width = 32,                  .writedata
		.txs_read_i               (_connected_to_txs_read_i_),               //   input,    width = 1,                  .read
		.txs_write_i              (_connected_to_txs_write_i_),              //   input,    width = 1,                  .write
		.txs_readdatavalid_o      (_connected_to_txs_readdatavalid_o_),      //  output,    width = 1,                  .readdatavalid
		.txs_waitrequest_o        (_connected_to_txs_waitrequest_o_),        //  output,    width = 1,                  .waitrequest
		.wr_ast_rx_valid_i        (_connected_to_wr_ast_rx_valid_i_),        //   input,    width = 1,         wr_ast_rx.valid
		.wr_ast_rx_data_i         (_connected_to_wr_ast_rx_data_i_),         //   input,  width = 160,                  .data
		.wr_ast_rx_ready_o        (_connected_to_wr_ast_rx_ready_o_),        //  output,    width = 1,                  .ready
		.wr_ast_tx_valid_o        (_connected_to_wr_ast_tx_valid_o_),        //  output,    width = 1,         wr_ast_tx.valid
		.wr_ast_tx_data_o         (_connected_to_wr_ast_tx_data_o_)          //  output,   width = 32,                  .data
	);

