	ep_g3x8_avmm256 u0 (
		.pcie_a10_hip_0_hip_ctrl_test_in          (_connected_to_pcie_a10_hip_0_hip_ctrl_test_in_),          //   input,  width = 32,   pcie_a10_hip_0_hip_ctrl.test_in
		.pcie_a10_hip_0_hip_ctrl_simu_mode_pipe   (_connected_to_pcie_a10_hip_0_hip_ctrl_simu_mode_pipe_),   //   input,   width = 1,                          .simu_mode_pipe
		.pcie_a10_hip_0_hip_pipe_sim_pipe_pclk_in (_connected_to_pcie_a10_hip_0_hip_pipe_sim_pipe_pclk_in_), //   input,   width = 1,   pcie_a10_hip_0_hip_pipe.sim_pipe_pclk_in
		.pcie_a10_hip_0_hip_pipe_sim_pipe_rate    (_connected_to_pcie_a10_hip_0_hip_pipe_sim_pipe_rate_),    //  output,   width = 2,                          .sim_pipe_rate
		.pcie_a10_hip_0_hip_pipe_sim_ltssmstate   (_connected_to_pcie_a10_hip_0_hip_pipe_sim_ltssmstate_),   //  output,   width = 5,                          .sim_ltssmstate
		.pcie_a10_hip_0_hip_pipe_eidleinfersel0   (_connected_to_pcie_a10_hip_0_hip_pipe_eidleinfersel0_),   //  output,   width = 3,                          .eidleinfersel0
		.pcie_a10_hip_0_hip_pipe_eidleinfersel1   (_connected_to_pcie_a10_hip_0_hip_pipe_eidleinfersel1_),   //  output,   width = 3,                          .eidleinfersel1
		.pcie_a10_hip_0_hip_pipe_eidleinfersel2   (_connected_to_pcie_a10_hip_0_hip_pipe_eidleinfersel2_),   //  output,   width = 3,                          .eidleinfersel2
		.pcie_a10_hip_0_hip_pipe_eidleinfersel3   (_connected_to_pcie_a10_hip_0_hip_pipe_eidleinfersel3_),   //  output,   width = 3,                          .eidleinfersel3
		.pcie_a10_hip_0_hip_pipe_eidleinfersel4   (_connected_to_pcie_a10_hip_0_hip_pipe_eidleinfersel4_),   //  output,   width = 3,                          .eidleinfersel4
		.pcie_a10_hip_0_hip_pipe_eidleinfersel5   (_connected_to_pcie_a10_hip_0_hip_pipe_eidleinfersel5_),   //  output,   width = 3,                          .eidleinfersel5
		.pcie_a10_hip_0_hip_pipe_eidleinfersel6   (_connected_to_pcie_a10_hip_0_hip_pipe_eidleinfersel6_),   //  output,   width = 3,                          .eidleinfersel6
		.pcie_a10_hip_0_hip_pipe_eidleinfersel7   (_connected_to_pcie_a10_hip_0_hip_pipe_eidleinfersel7_),   //  output,   width = 3,                          .eidleinfersel7
		.pcie_a10_hip_0_hip_pipe_powerdown0       (_connected_to_pcie_a10_hip_0_hip_pipe_powerdown0_),       //  output,   width = 2,                          .powerdown0
		.pcie_a10_hip_0_hip_pipe_powerdown1       (_connected_to_pcie_a10_hip_0_hip_pipe_powerdown1_),       //  output,   width = 2,                          .powerdown1
		.pcie_a10_hip_0_hip_pipe_powerdown2       (_connected_to_pcie_a10_hip_0_hip_pipe_powerdown2_),       //  output,   width = 2,                          .powerdown2
		.pcie_a10_hip_0_hip_pipe_powerdown3       (_connected_to_pcie_a10_hip_0_hip_pipe_powerdown3_),       //  output,   width = 2,                          .powerdown3
		.pcie_a10_hip_0_hip_pipe_powerdown4       (_connected_to_pcie_a10_hip_0_hip_pipe_powerdown4_),       //  output,   width = 2,                          .powerdown4
		.pcie_a10_hip_0_hip_pipe_powerdown5       (_connected_to_pcie_a10_hip_0_hip_pipe_powerdown5_),       //  output,   width = 2,                          .powerdown5
		.pcie_a10_hip_0_hip_pipe_powerdown6       (_connected_to_pcie_a10_hip_0_hip_pipe_powerdown6_),       //  output,   width = 2,                          .powerdown6
		.pcie_a10_hip_0_hip_pipe_powerdown7       (_connected_to_pcie_a10_hip_0_hip_pipe_powerdown7_),       //  output,   width = 2,                          .powerdown7
		.pcie_a10_hip_0_hip_pipe_rxpolarity0      (_connected_to_pcie_a10_hip_0_hip_pipe_rxpolarity0_),      //  output,   width = 1,                          .rxpolarity0
		.pcie_a10_hip_0_hip_pipe_rxpolarity1      (_connected_to_pcie_a10_hip_0_hip_pipe_rxpolarity1_),      //  output,   width = 1,                          .rxpolarity1
		.pcie_a10_hip_0_hip_pipe_rxpolarity2      (_connected_to_pcie_a10_hip_0_hip_pipe_rxpolarity2_),      //  output,   width = 1,                          .rxpolarity2
		.pcie_a10_hip_0_hip_pipe_rxpolarity3      (_connected_to_pcie_a10_hip_0_hip_pipe_rxpolarity3_),      //  output,   width = 1,                          .rxpolarity3
		.pcie_a10_hip_0_hip_pipe_rxpolarity4      (_connected_to_pcie_a10_hip_0_hip_pipe_rxpolarity4_),      //  output,   width = 1,                          .rxpolarity4
		.pcie_a10_hip_0_hip_pipe_rxpolarity5      (_connected_to_pcie_a10_hip_0_hip_pipe_rxpolarity5_),      //  output,   width = 1,                          .rxpolarity5
		.pcie_a10_hip_0_hip_pipe_rxpolarity6      (_connected_to_pcie_a10_hip_0_hip_pipe_rxpolarity6_),      //  output,   width = 1,                          .rxpolarity6
		.pcie_a10_hip_0_hip_pipe_rxpolarity7      (_connected_to_pcie_a10_hip_0_hip_pipe_rxpolarity7_),      //  output,   width = 1,                          .rxpolarity7
		.pcie_a10_hip_0_hip_pipe_txcompl0         (_connected_to_pcie_a10_hip_0_hip_pipe_txcompl0_),         //  output,   width = 1,                          .txcompl0
		.pcie_a10_hip_0_hip_pipe_txcompl1         (_connected_to_pcie_a10_hip_0_hip_pipe_txcompl1_),         //  output,   width = 1,                          .txcompl1
		.pcie_a10_hip_0_hip_pipe_txcompl2         (_connected_to_pcie_a10_hip_0_hip_pipe_txcompl2_),         //  output,   width = 1,                          .txcompl2
		.pcie_a10_hip_0_hip_pipe_txcompl3         (_connected_to_pcie_a10_hip_0_hip_pipe_txcompl3_),         //  output,   width = 1,                          .txcompl3
		.pcie_a10_hip_0_hip_pipe_txcompl4         (_connected_to_pcie_a10_hip_0_hip_pipe_txcompl4_),         //  output,   width = 1,                          .txcompl4
		.pcie_a10_hip_0_hip_pipe_txcompl5         (_connected_to_pcie_a10_hip_0_hip_pipe_txcompl5_),         //  output,   width = 1,                          .txcompl5
		.pcie_a10_hip_0_hip_pipe_txcompl6         (_connected_to_pcie_a10_hip_0_hip_pipe_txcompl6_),         //  output,   width = 1,                          .txcompl6
		.pcie_a10_hip_0_hip_pipe_txcompl7         (_connected_to_pcie_a10_hip_0_hip_pipe_txcompl7_),         //  output,   width = 1,                          .txcompl7
		.pcie_a10_hip_0_hip_pipe_txdata0          (_connected_to_pcie_a10_hip_0_hip_pipe_txdata0_),          //  output,  width = 32,                          .txdata0
		.pcie_a10_hip_0_hip_pipe_txdata1          (_connected_to_pcie_a10_hip_0_hip_pipe_txdata1_),          //  output,  width = 32,                          .txdata1
		.pcie_a10_hip_0_hip_pipe_txdata2          (_connected_to_pcie_a10_hip_0_hip_pipe_txdata2_),          //  output,  width = 32,                          .txdata2
		.pcie_a10_hip_0_hip_pipe_txdata3          (_connected_to_pcie_a10_hip_0_hip_pipe_txdata3_),          //  output,  width = 32,                          .txdata3
		.pcie_a10_hip_0_hip_pipe_txdata4          (_connected_to_pcie_a10_hip_0_hip_pipe_txdata4_),          //  output,  width = 32,                          .txdata4
		.pcie_a10_hip_0_hip_pipe_txdata5          (_connected_to_pcie_a10_hip_0_hip_pipe_txdata5_),          //  output,  width = 32,                          .txdata5
		.pcie_a10_hip_0_hip_pipe_txdata6          (_connected_to_pcie_a10_hip_0_hip_pipe_txdata6_),          //  output,  width = 32,                          .txdata6
		.pcie_a10_hip_0_hip_pipe_txdata7          (_connected_to_pcie_a10_hip_0_hip_pipe_txdata7_),          //  output,  width = 32,                          .txdata7
		.pcie_a10_hip_0_hip_pipe_txdatak0         (_connected_to_pcie_a10_hip_0_hip_pipe_txdatak0_),         //  output,   width = 4,                          .txdatak0
		.pcie_a10_hip_0_hip_pipe_txdatak1         (_connected_to_pcie_a10_hip_0_hip_pipe_txdatak1_),         //  output,   width = 4,                          .txdatak1
		.pcie_a10_hip_0_hip_pipe_txdatak2         (_connected_to_pcie_a10_hip_0_hip_pipe_txdatak2_),         //  output,   width = 4,                          .txdatak2
		.pcie_a10_hip_0_hip_pipe_txdatak3         (_connected_to_pcie_a10_hip_0_hip_pipe_txdatak3_),         //  output,   width = 4,                          .txdatak3
		.pcie_a10_hip_0_hip_pipe_txdatak4         (_connected_to_pcie_a10_hip_0_hip_pipe_txdatak4_),         //  output,   width = 4,                          .txdatak4
		.pcie_a10_hip_0_hip_pipe_txdatak5         (_connected_to_pcie_a10_hip_0_hip_pipe_txdatak5_),         //  output,   width = 4,                          .txdatak5
		.pcie_a10_hip_0_hip_pipe_txdatak6         (_connected_to_pcie_a10_hip_0_hip_pipe_txdatak6_),         //  output,   width = 4,                          .txdatak6
		.pcie_a10_hip_0_hip_pipe_txdatak7         (_connected_to_pcie_a10_hip_0_hip_pipe_txdatak7_),         //  output,   width = 4,                          .txdatak7
		.pcie_a10_hip_0_hip_pipe_txdetectrx0      (_connected_to_pcie_a10_hip_0_hip_pipe_txdetectrx0_),      //  output,   width = 1,                          .txdetectrx0
		.pcie_a10_hip_0_hip_pipe_txdetectrx1      (_connected_to_pcie_a10_hip_0_hip_pipe_txdetectrx1_),      //  output,   width = 1,                          .txdetectrx1
		.pcie_a10_hip_0_hip_pipe_txdetectrx2      (_connected_to_pcie_a10_hip_0_hip_pipe_txdetectrx2_),      //  output,   width = 1,                          .txdetectrx2
		.pcie_a10_hip_0_hip_pipe_txdetectrx3      (_connected_to_pcie_a10_hip_0_hip_pipe_txdetectrx3_),      //  output,   width = 1,                          .txdetectrx3
		.pcie_a10_hip_0_hip_pipe_txdetectrx4      (_connected_to_pcie_a10_hip_0_hip_pipe_txdetectrx4_),      //  output,   width = 1,                          .txdetectrx4
		.pcie_a10_hip_0_hip_pipe_txdetectrx5      (_connected_to_pcie_a10_hip_0_hip_pipe_txdetectrx5_),      //  output,   width = 1,                          .txdetectrx5
		.pcie_a10_hip_0_hip_pipe_txdetectrx6      (_connected_to_pcie_a10_hip_0_hip_pipe_txdetectrx6_),      //  output,   width = 1,                          .txdetectrx6
		.pcie_a10_hip_0_hip_pipe_txdetectrx7      (_connected_to_pcie_a10_hip_0_hip_pipe_txdetectrx7_),      //  output,   width = 1,                          .txdetectrx7
		.pcie_a10_hip_0_hip_pipe_txelecidle0      (_connected_to_pcie_a10_hip_0_hip_pipe_txelecidle0_),      //  output,   width = 1,                          .txelecidle0
		.pcie_a10_hip_0_hip_pipe_txelecidle1      (_connected_to_pcie_a10_hip_0_hip_pipe_txelecidle1_),      //  output,   width = 1,                          .txelecidle1
		.pcie_a10_hip_0_hip_pipe_txelecidle2      (_connected_to_pcie_a10_hip_0_hip_pipe_txelecidle2_),      //  output,   width = 1,                          .txelecidle2
		.pcie_a10_hip_0_hip_pipe_txelecidle3      (_connected_to_pcie_a10_hip_0_hip_pipe_txelecidle3_),      //  output,   width = 1,                          .txelecidle3
		.pcie_a10_hip_0_hip_pipe_txelecidle4      (_connected_to_pcie_a10_hip_0_hip_pipe_txelecidle4_),      //  output,   width = 1,                          .txelecidle4
		.pcie_a10_hip_0_hip_pipe_txelecidle5      (_connected_to_pcie_a10_hip_0_hip_pipe_txelecidle5_),      //  output,   width = 1,                          .txelecidle5
		.pcie_a10_hip_0_hip_pipe_txelecidle6      (_connected_to_pcie_a10_hip_0_hip_pipe_txelecidle6_),      //  output,   width = 1,                          .txelecidle6
		.pcie_a10_hip_0_hip_pipe_txelecidle7      (_connected_to_pcie_a10_hip_0_hip_pipe_txelecidle7_),      //  output,   width = 1,                          .txelecidle7
		.pcie_a10_hip_0_hip_pipe_txdeemph0        (_connected_to_pcie_a10_hip_0_hip_pipe_txdeemph0_),        //  output,   width = 1,                          .txdeemph0
		.pcie_a10_hip_0_hip_pipe_txdeemph1        (_connected_to_pcie_a10_hip_0_hip_pipe_txdeemph1_),        //  output,   width = 1,                          .txdeemph1
		.pcie_a10_hip_0_hip_pipe_txdeemph2        (_connected_to_pcie_a10_hip_0_hip_pipe_txdeemph2_),        //  output,   width = 1,                          .txdeemph2
		.pcie_a10_hip_0_hip_pipe_txdeemph3        (_connected_to_pcie_a10_hip_0_hip_pipe_txdeemph3_),        //  output,   width = 1,                          .txdeemph3
		.pcie_a10_hip_0_hip_pipe_txdeemph4        (_connected_to_pcie_a10_hip_0_hip_pipe_txdeemph4_),        //  output,   width = 1,                          .txdeemph4
		.pcie_a10_hip_0_hip_pipe_txdeemph5        (_connected_to_pcie_a10_hip_0_hip_pipe_txdeemph5_),        //  output,   width = 1,                          .txdeemph5
		.pcie_a10_hip_0_hip_pipe_txdeemph6        (_connected_to_pcie_a10_hip_0_hip_pipe_txdeemph6_),        //  output,   width = 1,                          .txdeemph6
		.pcie_a10_hip_0_hip_pipe_txdeemph7        (_connected_to_pcie_a10_hip_0_hip_pipe_txdeemph7_),        //  output,   width = 1,                          .txdeemph7
		.pcie_a10_hip_0_hip_pipe_txmargin0        (_connected_to_pcie_a10_hip_0_hip_pipe_txmargin0_),        //  output,   width = 3,                          .txmargin0
		.pcie_a10_hip_0_hip_pipe_txmargin1        (_connected_to_pcie_a10_hip_0_hip_pipe_txmargin1_),        //  output,   width = 3,                          .txmargin1
		.pcie_a10_hip_0_hip_pipe_txmargin2        (_connected_to_pcie_a10_hip_0_hip_pipe_txmargin2_),        //  output,   width = 3,                          .txmargin2
		.pcie_a10_hip_0_hip_pipe_txmargin3        (_connected_to_pcie_a10_hip_0_hip_pipe_txmargin3_),        //  output,   width = 3,                          .txmargin3
		.pcie_a10_hip_0_hip_pipe_txmargin4        (_connected_to_pcie_a10_hip_0_hip_pipe_txmargin4_),        //  output,   width = 3,                          .txmargin4
		.pcie_a10_hip_0_hip_pipe_txmargin5        (_connected_to_pcie_a10_hip_0_hip_pipe_txmargin5_),        //  output,   width = 3,                          .txmargin5
		.pcie_a10_hip_0_hip_pipe_txmargin6        (_connected_to_pcie_a10_hip_0_hip_pipe_txmargin6_),        //  output,   width = 3,                          .txmargin6
		.pcie_a10_hip_0_hip_pipe_txmargin7        (_connected_to_pcie_a10_hip_0_hip_pipe_txmargin7_),        //  output,   width = 3,                          .txmargin7
		.pcie_a10_hip_0_hip_pipe_txswing0         (_connected_to_pcie_a10_hip_0_hip_pipe_txswing0_),         //  output,   width = 1,                          .txswing0
		.pcie_a10_hip_0_hip_pipe_txswing1         (_connected_to_pcie_a10_hip_0_hip_pipe_txswing1_),         //  output,   width = 1,                          .txswing1
		.pcie_a10_hip_0_hip_pipe_txswing2         (_connected_to_pcie_a10_hip_0_hip_pipe_txswing2_),         //  output,   width = 1,                          .txswing2
		.pcie_a10_hip_0_hip_pipe_txswing3         (_connected_to_pcie_a10_hip_0_hip_pipe_txswing3_),         //  output,   width = 1,                          .txswing3
		.pcie_a10_hip_0_hip_pipe_txswing4         (_connected_to_pcie_a10_hip_0_hip_pipe_txswing4_),         //  output,   width = 1,                          .txswing4
		.pcie_a10_hip_0_hip_pipe_txswing5         (_connected_to_pcie_a10_hip_0_hip_pipe_txswing5_),         //  output,   width = 1,                          .txswing5
		.pcie_a10_hip_0_hip_pipe_txswing6         (_connected_to_pcie_a10_hip_0_hip_pipe_txswing6_),         //  output,   width = 1,                          .txswing6
		.pcie_a10_hip_0_hip_pipe_txswing7         (_connected_to_pcie_a10_hip_0_hip_pipe_txswing7_),         //  output,   width = 1,                          .txswing7
		.pcie_a10_hip_0_hip_pipe_phystatus0       (_connected_to_pcie_a10_hip_0_hip_pipe_phystatus0_),       //   input,   width = 1,                          .phystatus0
		.pcie_a10_hip_0_hip_pipe_phystatus1       (_connected_to_pcie_a10_hip_0_hip_pipe_phystatus1_),       //   input,   width = 1,                          .phystatus1
		.pcie_a10_hip_0_hip_pipe_phystatus2       (_connected_to_pcie_a10_hip_0_hip_pipe_phystatus2_),       //   input,   width = 1,                          .phystatus2
		.pcie_a10_hip_0_hip_pipe_phystatus3       (_connected_to_pcie_a10_hip_0_hip_pipe_phystatus3_),       //   input,   width = 1,                          .phystatus3
		.pcie_a10_hip_0_hip_pipe_phystatus4       (_connected_to_pcie_a10_hip_0_hip_pipe_phystatus4_),       //   input,   width = 1,                          .phystatus4
		.pcie_a10_hip_0_hip_pipe_phystatus5       (_connected_to_pcie_a10_hip_0_hip_pipe_phystatus5_),       //   input,   width = 1,                          .phystatus5
		.pcie_a10_hip_0_hip_pipe_phystatus6       (_connected_to_pcie_a10_hip_0_hip_pipe_phystatus6_),       //   input,   width = 1,                          .phystatus6
		.pcie_a10_hip_0_hip_pipe_phystatus7       (_connected_to_pcie_a10_hip_0_hip_pipe_phystatus7_),       //   input,   width = 1,                          .phystatus7
		.pcie_a10_hip_0_hip_pipe_rxdata0          (_connected_to_pcie_a10_hip_0_hip_pipe_rxdata0_),          //   input,  width = 32,                          .rxdata0
		.pcie_a10_hip_0_hip_pipe_rxdata1          (_connected_to_pcie_a10_hip_0_hip_pipe_rxdata1_),          //   input,  width = 32,                          .rxdata1
		.pcie_a10_hip_0_hip_pipe_rxdata2          (_connected_to_pcie_a10_hip_0_hip_pipe_rxdata2_),          //   input,  width = 32,                          .rxdata2
		.pcie_a10_hip_0_hip_pipe_rxdata3          (_connected_to_pcie_a10_hip_0_hip_pipe_rxdata3_),          //   input,  width = 32,                          .rxdata3
		.pcie_a10_hip_0_hip_pipe_rxdata4          (_connected_to_pcie_a10_hip_0_hip_pipe_rxdata4_),          //   input,  width = 32,                          .rxdata4
		.pcie_a10_hip_0_hip_pipe_rxdata5          (_connected_to_pcie_a10_hip_0_hip_pipe_rxdata5_),          //   input,  width = 32,                          .rxdata5
		.pcie_a10_hip_0_hip_pipe_rxdata6          (_connected_to_pcie_a10_hip_0_hip_pipe_rxdata6_),          //   input,  width = 32,                          .rxdata6
		.pcie_a10_hip_0_hip_pipe_rxdata7          (_connected_to_pcie_a10_hip_0_hip_pipe_rxdata7_),          //   input,  width = 32,                          .rxdata7
		.pcie_a10_hip_0_hip_pipe_rxdatak0         (_connected_to_pcie_a10_hip_0_hip_pipe_rxdatak0_),         //   input,   width = 4,                          .rxdatak0
		.pcie_a10_hip_0_hip_pipe_rxdatak1         (_connected_to_pcie_a10_hip_0_hip_pipe_rxdatak1_),         //   input,   width = 4,                          .rxdatak1
		.pcie_a10_hip_0_hip_pipe_rxdatak2         (_connected_to_pcie_a10_hip_0_hip_pipe_rxdatak2_),         //   input,   width = 4,                          .rxdatak2
		.pcie_a10_hip_0_hip_pipe_rxdatak3         (_connected_to_pcie_a10_hip_0_hip_pipe_rxdatak3_),         //   input,   width = 4,                          .rxdatak3
		.pcie_a10_hip_0_hip_pipe_rxdatak4         (_connected_to_pcie_a10_hip_0_hip_pipe_rxdatak4_),         //   input,   width = 4,                          .rxdatak4
		.pcie_a10_hip_0_hip_pipe_rxdatak5         (_connected_to_pcie_a10_hip_0_hip_pipe_rxdatak5_),         //   input,   width = 4,                          .rxdatak5
		.pcie_a10_hip_0_hip_pipe_rxdatak6         (_connected_to_pcie_a10_hip_0_hip_pipe_rxdatak6_),         //   input,   width = 4,                          .rxdatak6
		.pcie_a10_hip_0_hip_pipe_rxdatak7         (_connected_to_pcie_a10_hip_0_hip_pipe_rxdatak7_),         //   input,   width = 4,                          .rxdatak7
		.pcie_a10_hip_0_hip_pipe_rxelecidle0      (_connected_to_pcie_a10_hip_0_hip_pipe_rxelecidle0_),      //   input,   width = 1,                          .rxelecidle0
		.pcie_a10_hip_0_hip_pipe_rxelecidle1      (_connected_to_pcie_a10_hip_0_hip_pipe_rxelecidle1_),      //   input,   width = 1,                          .rxelecidle1
		.pcie_a10_hip_0_hip_pipe_rxelecidle2      (_connected_to_pcie_a10_hip_0_hip_pipe_rxelecidle2_),      //   input,   width = 1,                          .rxelecidle2
		.pcie_a10_hip_0_hip_pipe_rxelecidle3      (_connected_to_pcie_a10_hip_0_hip_pipe_rxelecidle3_),      //   input,   width = 1,                          .rxelecidle3
		.pcie_a10_hip_0_hip_pipe_rxelecidle4      (_connected_to_pcie_a10_hip_0_hip_pipe_rxelecidle4_),      //   input,   width = 1,                          .rxelecidle4
		.pcie_a10_hip_0_hip_pipe_rxelecidle5      (_connected_to_pcie_a10_hip_0_hip_pipe_rxelecidle5_),      //   input,   width = 1,                          .rxelecidle5
		.pcie_a10_hip_0_hip_pipe_rxelecidle6      (_connected_to_pcie_a10_hip_0_hip_pipe_rxelecidle6_),      //   input,   width = 1,                          .rxelecidle6
		.pcie_a10_hip_0_hip_pipe_rxelecidle7      (_connected_to_pcie_a10_hip_0_hip_pipe_rxelecidle7_),      //   input,   width = 1,                          .rxelecidle7
		.pcie_a10_hip_0_hip_pipe_rxstatus0        (_connected_to_pcie_a10_hip_0_hip_pipe_rxstatus0_),        //   input,   width = 3,                          .rxstatus0
		.pcie_a10_hip_0_hip_pipe_rxstatus1        (_connected_to_pcie_a10_hip_0_hip_pipe_rxstatus1_),        //   input,   width = 3,                          .rxstatus1
		.pcie_a10_hip_0_hip_pipe_rxstatus2        (_connected_to_pcie_a10_hip_0_hip_pipe_rxstatus2_),        //   input,   width = 3,                          .rxstatus2
		.pcie_a10_hip_0_hip_pipe_rxstatus3        (_connected_to_pcie_a10_hip_0_hip_pipe_rxstatus3_),        //   input,   width = 3,                          .rxstatus3
		.pcie_a10_hip_0_hip_pipe_rxstatus4        (_connected_to_pcie_a10_hip_0_hip_pipe_rxstatus4_),        //   input,   width = 3,                          .rxstatus4
		.pcie_a10_hip_0_hip_pipe_rxstatus5        (_connected_to_pcie_a10_hip_0_hip_pipe_rxstatus5_),        //   input,   width = 3,                          .rxstatus5
		.pcie_a10_hip_0_hip_pipe_rxstatus6        (_connected_to_pcie_a10_hip_0_hip_pipe_rxstatus6_),        //   input,   width = 3,                          .rxstatus6
		.pcie_a10_hip_0_hip_pipe_rxstatus7        (_connected_to_pcie_a10_hip_0_hip_pipe_rxstatus7_),        //   input,   width = 3,                          .rxstatus7
		.pcie_a10_hip_0_hip_pipe_rxvalid0         (_connected_to_pcie_a10_hip_0_hip_pipe_rxvalid0_),         //   input,   width = 1,                          .rxvalid0
		.pcie_a10_hip_0_hip_pipe_rxvalid1         (_connected_to_pcie_a10_hip_0_hip_pipe_rxvalid1_),         //   input,   width = 1,                          .rxvalid1
		.pcie_a10_hip_0_hip_pipe_rxvalid2         (_connected_to_pcie_a10_hip_0_hip_pipe_rxvalid2_),         //   input,   width = 1,                          .rxvalid2
		.pcie_a10_hip_0_hip_pipe_rxvalid3         (_connected_to_pcie_a10_hip_0_hip_pipe_rxvalid3_),         //   input,   width = 1,                          .rxvalid3
		.pcie_a10_hip_0_hip_pipe_rxvalid4         (_connected_to_pcie_a10_hip_0_hip_pipe_rxvalid4_),         //   input,   width = 1,                          .rxvalid4
		.pcie_a10_hip_0_hip_pipe_rxvalid5         (_connected_to_pcie_a10_hip_0_hip_pipe_rxvalid5_),         //   input,   width = 1,                          .rxvalid5
		.pcie_a10_hip_0_hip_pipe_rxvalid6         (_connected_to_pcie_a10_hip_0_hip_pipe_rxvalid6_),         //   input,   width = 1,                          .rxvalid6
		.pcie_a10_hip_0_hip_pipe_rxvalid7         (_connected_to_pcie_a10_hip_0_hip_pipe_rxvalid7_),         //   input,   width = 1,                          .rxvalid7
		.pcie_a10_hip_0_hip_pipe_rxdataskip0      (_connected_to_pcie_a10_hip_0_hip_pipe_rxdataskip0_),      //   input,   width = 1,                          .rxdataskip0
		.pcie_a10_hip_0_hip_pipe_rxdataskip1      (_connected_to_pcie_a10_hip_0_hip_pipe_rxdataskip1_),      //   input,   width = 1,                          .rxdataskip1
		.pcie_a10_hip_0_hip_pipe_rxdataskip2      (_connected_to_pcie_a10_hip_0_hip_pipe_rxdataskip2_),      //   input,   width = 1,                          .rxdataskip2
		.pcie_a10_hip_0_hip_pipe_rxdataskip3      (_connected_to_pcie_a10_hip_0_hip_pipe_rxdataskip3_),      //   input,   width = 1,                          .rxdataskip3
		.pcie_a10_hip_0_hip_pipe_rxdataskip4      (_connected_to_pcie_a10_hip_0_hip_pipe_rxdataskip4_),      //   input,   width = 1,                          .rxdataskip4
		.pcie_a10_hip_0_hip_pipe_rxdataskip5      (_connected_to_pcie_a10_hip_0_hip_pipe_rxdataskip5_),      //   input,   width = 1,                          .rxdataskip5
		.pcie_a10_hip_0_hip_pipe_rxdataskip6      (_connected_to_pcie_a10_hip_0_hip_pipe_rxdataskip6_),      //   input,   width = 1,                          .rxdataskip6
		.pcie_a10_hip_0_hip_pipe_rxdataskip7      (_connected_to_pcie_a10_hip_0_hip_pipe_rxdataskip7_),      //   input,   width = 1,                          .rxdataskip7
		.pcie_a10_hip_0_hip_pipe_rxblkst0         (_connected_to_pcie_a10_hip_0_hip_pipe_rxblkst0_),         //   input,   width = 1,                          .rxblkst0
		.pcie_a10_hip_0_hip_pipe_rxblkst1         (_connected_to_pcie_a10_hip_0_hip_pipe_rxblkst1_),         //   input,   width = 1,                          .rxblkst1
		.pcie_a10_hip_0_hip_pipe_rxblkst2         (_connected_to_pcie_a10_hip_0_hip_pipe_rxblkst2_),         //   input,   width = 1,                          .rxblkst2
		.pcie_a10_hip_0_hip_pipe_rxblkst3         (_connected_to_pcie_a10_hip_0_hip_pipe_rxblkst3_),         //   input,   width = 1,                          .rxblkst3
		.pcie_a10_hip_0_hip_pipe_rxblkst4         (_connected_to_pcie_a10_hip_0_hip_pipe_rxblkst4_),         //   input,   width = 1,                          .rxblkst4
		.pcie_a10_hip_0_hip_pipe_rxblkst5         (_connected_to_pcie_a10_hip_0_hip_pipe_rxblkst5_),         //   input,   width = 1,                          .rxblkst5
		.pcie_a10_hip_0_hip_pipe_rxblkst6         (_connected_to_pcie_a10_hip_0_hip_pipe_rxblkst6_),         //   input,   width = 1,                          .rxblkst6
		.pcie_a10_hip_0_hip_pipe_rxblkst7         (_connected_to_pcie_a10_hip_0_hip_pipe_rxblkst7_),         //   input,   width = 1,                          .rxblkst7
		.pcie_a10_hip_0_hip_pipe_rxsynchd0        (_connected_to_pcie_a10_hip_0_hip_pipe_rxsynchd0_),        //   input,   width = 2,                          .rxsynchd0
		.pcie_a10_hip_0_hip_pipe_rxsynchd1        (_connected_to_pcie_a10_hip_0_hip_pipe_rxsynchd1_),        //   input,   width = 2,                          .rxsynchd1
		.pcie_a10_hip_0_hip_pipe_rxsynchd2        (_connected_to_pcie_a10_hip_0_hip_pipe_rxsynchd2_),        //   input,   width = 2,                          .rxsynchd2
		.pcie_a10_hip_0_hip_pipe_rxsynchd3        (_connected_to_pcie_a10_hip_0_hip_pipe_rxsynchd3_),        //   input,   width = 2,                          .rxsynchd3
		.pcie_a10_hip_0_hip_pipe_rxsynchd4        (_connected_to_pcie_a10_hip_0_hip_pipe_rxsynchd4_),        //   input,   width = 2,                          .rxsynchd4
		.pcie_a10_hip_0_hip_pipe_rxsynchd5        (_connected_to_pcie_a10_hip_0_hip_pipe_rxsynchd5_),        //   input,   width = 2,                          .rxsynchd5
		.pcie_a10_hip_0_hip_pipe_rxsynchd6        (_connected_to_pcie_a10_hip_0_hip_pipe_rxsynchd6_),        //   input,   width = 2,                          .rxsynchd6
		.pcie_a10_hip_0_hip_pipe_rxsynchd7        (_connected_to_pcie_a10_hip_0_hip_pipe_rxsynchd7_),        //   input,   width = 2,                          .rxsynchd7
		.pcie_a10_hip_0_hip_pipe_currentcoeff0    (_connected_to_pcie_a10_hip_0_hip_pipe_currentcoeff0_),    //  output,  width = 18,                          .currentcoeff0
		.pcie_a10_hip_0_hip_pipe_currentcoeff1    (_connected_to_pcie_a10_hip_0_hip_pipe_currentcoeff1_),    //  output,  width = 18,                          .currentcoeff1
		.pcie_a10_hip_0_hip_pipe_currentcoeff2    (_connected_to_pcie_a10_hip_0_hip_pipe_currentcoeff2_),    //  output,  width = 18,                          .currentcoeff2
		.pcie_a10_hip_0_hip_pipe_currentcoeff3    (_connected_to_pcie_a10_hip_0_hip_pipe_currentcoeff3_),    //  output,  width = 18,                          .currentcoeff3
		.pcie_a10_hip_0_hip_pipe_currentcoeff4    (_connected_to_pcie_a10_hip_0_hip_pipe_currentcoeff4_),    //  output,  width = 18,                          .currentcoeff4
		.pcie_a10_hip_0_hip_pipe_currentcoeff5    (_connected_to_pcie_a10_hip_0_hip_pipe_currentcoeff5_),    //  output,  width = 18,                          .currentcoeff5
		.pcie_a10_hip_0_hip_pipe_currentcoeff6    (_connected_to_pcie_a10_hip_0_hip_pipe_currentcoeff6_),    //  output,  width = 18,                          .currentcoeff6
		.pcie_a10_hip_0_hip_pipe_currentcoeff7    (_connected_to_pcie_a10_hip_0_hip_pipe_currentcoeff7_),    //  output,  width = 18,                          .currentcoeff7
		.pcie_a10_hip_0_hip_pipe_currentrxpreset0 (_connected_to_pcie_a10_hip_0_hip_pipe_currentrxpreset0_), //  output,   width = 3,                          .currentrxpreset0
		.pcie_a10_hip_0_hip_pipe_currentrxpreset1 (_connected_to_pcie_a10_hip_0_hip_pipe_currentrxpreset1_), //  output,   width = 3,                          .currentrxpreset1
		.pcie_a10_hip_0_hip_pipe_currentrxpreset2 (_connected_to_pcie_a10_hip_0_hip_pipe_currentrxpreset2_), //  output,   width = 3,                          .currentrxpreset2
		.pcie_a10_hip_0_hip_pipe_currentrxpreset3 (_connected_to_pcie_a10_hip_0_hip_pipe_currentrxpreset3_), //  output,   width = 3,                          .currentrxpreset3
		.pcie_a10_hip_0_hip_pipe_currentrxpreset4 (_connected_to_pcie_a10_hip_0_hip_pipe_currentrxpreset4_), //  output,   width = 3,                          .currentrxpreset4
		.pcie_a10_hip_0_hip_pipe_currentrxpreset5 (_connected_to_pcie_a10_hip_0_hip_pipe_currentrxpreset5_), //  output,   width = 3,                          .currentrxpreset5
		.pcie_a10_hip_0_hip_pipe_currentrxpreset6 (_connected_to_pcie_a10_hip_0_hip_pipe_currentrxpreset6_), //  output,   width = 3,                          .currentrxpreset6
		.pcie_a10_hip_0_hip_pipe_currentrxpreset7 (_connected_to_pcie_a10_hip_0_hip_pipe_currentrxpreset7_), //  output,   width = 3,                          .currentrxpreset7
		.pcie_a10_hip_0_hip_pipe_txsynchd0        (_connected_to_pcie_a10_hip_0_hip_pipe_txsynchd0_),        //  output,   width = 2,                          .txsynchd0
		.pcie_a10_hip_0_hip_pipe_txsynchd1        (_connected_to_pcie_a10_hip_0_hip_pipe_txsynchd1_),        //  output,   width = 2,                          .txsynchd1
		.pcie_a10_hip_0_hip_pipe_txsynchd2        (_connected_to_pcie_a10_hip_0_hip_pipe_txsynchd2_),        //  output,   width = 2,                          .txsynchd2
		.pcie_a10_hip_0_hip_pipe_txsynchd3        (_connected_to_pcie_a10_hip_0_hip_pipe_txsynchd3_),        //  output,   width = 2,                          .txsynchd3
		.pcie_a10_hip_0_hip_pipe_txsynchd4        (_connected_to_pcie_a10_hip_0_hip_pipe_txsynchd4_),        //  output,   width = 2,                          .txsynchd4
		.pcie_a10_hip_0_hip_pipe_txsynchd5        (_connected_to_pcie_a10_hip_0_hip_pipe_txsynchd5_),        //  output,   width = 2,                          .txsynchd5
		.pcie_a10_hip_0_hip_pipe_txsynchd6        (_connected_to_pcie_a10_hip_0_hip_pipe_txsynchd6_),        //  output,   width = 2,                          .txsynchd6
		.pcie_a10_hip_0_hip_pipe_txsynchd7        (_connected_to_pcie_a10_hip_0_hip_pipe_txsynchd7_),        //  output,   width = 2,                          .txsynchd7
		.pcie_a10_hip_0_hip_pipe_txblkst0         (_connected_to_pcie_a10_hip_0_hip_pipe_txblkst0_),         //  output,   width = 1,                          .txblkst0
		.pcie_a10_hip_0_hip_pipe_txblkst1         (_connected_to_pcie_a10_hip_0_hip_pipe_txblkst1_),         //  output,   width = 1,                          .txblkst1
		.pcie_a10_hip_0_hip_pipe_txblkst2         (_connected_to_pcie_a10_hip_0_hip_pipe_txblkst2_),         //  output,   width = 1,                          .txblkst2
		.pcie_a10_hip_0_hip_pipe_txblkst3         (_connected_to_pcie_a10_hip_0_hip_pipe_txblkst3_),         //  output,   width = 1,                          .txblkst3
		.pcie_a10_hip_0_hip_pipe_txblkst4         (_connected_to_pcie_a10_hip_0_hip_pipe_txblkst4_),         //  output,   width = 1,                          .txblkst4
		.pcie_a10_hip_0_hip_pipe_txblkst5         (_connected_to_pcie_a10_hip_0_hip_pipe_txblkst5_),         //  output,   width = 1,                          .txblkst5
		.pcie_a10_hip_0_hip_pipe_txblkst6         (_connected_to_pcie_a10_hip_0_hip_pipe_txblkst6_),         //  output,   width = 1,                          .txblkst6
		.pcie_a10_hip_0_hip_pipe_txblkst7         (_connected_to_pcie_a10_hip_0_hip_pipe_txblkst7_),         //  output,   width = 1,                          .txblkst7
		.pcie_a10_hip_0_hip_pipe_txdataskip0      (_connected_to_pcie_a10_hip_0_hip_pipe_txdataskip0_),      //  output,   width = 1,                          .txdataskip0
		.pcie_a10_hip_0_hip_pipe_txdataskip1      (_connected_to_pcie_a10_hip_0_hip_pipe_txdataskip1_),      //  output,   width = 1,                          .txdataskip1
		.pcie_a10_hip_0_hip_pipe_txdataskip2      (_connected_to_pcie_a10_hip_0_hip_pipe_txdataskip2_),      //  output,   width = 1,                          .txdataskip2
		.pcie_a10_hip_0_hip_pipe_txdataskip3      (_connected_to_pcie_a10_hip_0_hip_pipe_txdataskip3_),      //  output,   width = 1,                          .txdataskip3
		.pcie_a10_hip_0_hip_pipe_txdataskip4      (_connected_to_pcie_a10_hip_0_hip_pipe_txdataskip4_),      //  output,   width = 1,                          .txdataskip4
		.pcie_a10_hip_0_hip_pipe_txdataskip5      (_connected_to_pcie_a10_hip_0_hip_pipe_txdataskip5_),      //  output,   width = 1,                          .txdataskip5
		.pcie_a10_hip_0_hip_pipe_txdataskip6      (_connected_to_pcie_a10_hip_0_hip_pipe_txdataskip6_),      //  output,   width = 1,                          .txdataskip6
		.pcie_a10_hip_0_hip_pipe_txdataskip7      (_connected_to_pcie_a10_hip_0_hip_pipe_txdataskip7_),      //  output,   width = 1,                          .txdataskip7
		.pcie_a10_hip_0_hip_pipe_rate0            (_connected_to_pcie_a10_hip_0_hip_pipe_rate0_),            //  output,   width = 2,                          .rate0
		.pcie_a10_hip_0_hip_pipe_rate1            (_connected_to_pcie_a10_hip_0_hip_pipe_rate1_),            //  output,   width = 2,                          .rate1
		.pcie_a10_hip_0_hip_pipe_rate2            (_connected_to_pcie_a10_hip_0_hip_pipe_rate2_),            //  output,   width = 2,                          .rate2
		.pcie_a10_hip_0_hip_pipe_rate3            (_connected_to_pcie_a10_hip_0_hip_pipe_rate3_),            //  output,   width = 2,                          .rate3
		.pcie_a10_hip_0_hip_pipe_rate4            (_connected_to_pcie_a10_hip_0_hip_pipe_rate4_),            //  output,   width = 2,                          .rate4
		.pcie_a10_hip_0_hip_pipe_rate5            (_connected_to_pcie_a10_hip_0_hip_pipe_rate5_),            //  output,   width = 2,                          .rate5
		.pcie_a10_hip_0_hip_pipe_rate6            (_connected_to_pcie_a10_hip_0_hip_pipe_rate6_),            //  output,   width = 2,                          .rate6
		.pcie_a10_hip_0_hip_pipe_rate7            (_connected_to_pcie_a10_hip_0_hip_pipe_rate7_),            //  output,   width = 2,                          .rate7
		.pcie_a10_hip_0_hip_serial_rx_in0         (_connected_to_pcie_a10_hip_0_hip_serial_rx_in0_),         //   input,   width = 1, pcie_a10_hip_0_hip_serial.rx_in0
		.pcie_a10_hip_0_hip_serial_rx_in1         (_connected_to_pcie_a10_hip_0_hip_serial_rx_in1_),         //   input,   width = 1,                          .rx_in1
		.pcie_a10_hip_0_hip_serial_rx_in2         (_connected_to_pcie_a10_hip_0_hip_serial_rx_in2_),         //   input,   width = 1,                          .rx_in2
		.pcie_a10_hip_0_hip_serial_rx_in3         (_connected_to_pcie_a10_hip_0_hip_serial_rx_in3_),         //   input,   width = 1,                          .rx_in3
		.pcie_a10_hip_0_hip_serial_rx_in4         (_connected_to_pcie_a10_hip_0_hip_serial_rx_in4_),         //   input,   width = 1,                          .rx_in4
		.pcie_a10_hip_0_hip_serial_rx_in5         (_connected_to_pcie_a10_hip_0_hip_serial_rx_in5_),         //   input,   width = 1,                          .rx_in5
		.pcie_a10_hip_0_hip_serial_rx_in6         (_connected_to_pcie_a10_hip_0_hip_serial_rx_in6_),         //   input,   width = 1,                          .rx_in6
		.pcie_a10_hip_0_hip_serial_rx_in7         (_connected_to_pcie_a10_hip_0_hip_serial_rx_in7_),         //   input,   width = 1,                          .rx_in7
		.pcie_a10_hip_0_hip_serial_tx_out0        (_connected_to_pcie_a10_hip_0_hip_serial_tx_out0_),        //  output,   width = 1,                          .tx_out0
		.pcie_a10_hip_0_hip_serial_tx_out1        (_connected_to_pcie_a10_hip_0_hip_serial_tx_out1_),        //  output,   width = 1,                          .tx_out1
		.pcie_a10_hip_0_hip_serial_tx_out2        (_connected_to_pcie_a10_hip_0_hip_serial_tx_out2_),        //  output,   width = 1,                          .tx_out2
		.pcie_a10_hip_0_hip_serial_tx_out3        (_connected_to_pcie_a10_hip_0_hip_serial_tx_out3_),        //  output,   width = 1,                          .tx_out3
		.pcie_a10_hip_0_hip_serial_tx_out4        (_connected_to_pcie_a10_hip_0_hip_serial_tx_out4_),        //  output,   width = 1,                          .tx_out4
		.pcie_a10_hip_0_hip_serial_tx_out5        (_connected_to_pcie_a10_hip_0_hip_serial_tx_out5_),        //  output,   width = 1,                          .tx_out5
		.pcie_a10_hip_0_hip_serial_tx_out6        (_connected_to_pcie_a10_hip_0_hip_serial_tx_out6_),        //  output,   width = 1,                          .tx_out6
		.pcie_a10_hip_0_hip_serial_tx_out7        (_connected_to_pcie_a10_hip_0_hip_serial_tx_out7_),        //  output,   width = 1,                          .tx_out7
		.pcie_a10_hip_0_npor_npor                 (_connected_to_pcie_a10_hip_0_npor_npor_),                 //   input,   width = 1,       pcie_a10_hip_0_npor.npor
		.pcie_a10_hip_0_npor_pin_perst            (_connected_to_pcie_a10_hip_0_npor_pin_perst_),            //   input,   width = 1,                          .pin_perst
		.reconfig_xcvr_clk_clk                    (_connected_to_reconfig_xcvr_clk_clk_),                    //   input,   width = 1,         reconfig_xcvr_clk.clk
		.reconfig_xcvr_reset_reset_n              (_connected_to_reconfig_xcvr_reset_reset_n_),              //   input,   width = 1,       reconfig_xcvr_reset.reset_n
		.refclk_clk                               (_connected_to_refclk_clk_)                                //   input,   width = 1,                    refclk.clk
	);

