	component DUT_pcie_tb_ip is
		generic (
			lane_mask_hwtcl                      : string  := "x4";
			pll_refclk_freq_hwtcl                : string  := "100 MHz";
			serial_sim_hwtcl                     : integer := 1;
			deemphasis_enable_hwtcl              : string  := "false";
			pld_clk_MHz                          : integer := 125;
			millisecond_cycle_count_hwtcl        : integer := 124250;
			use_crc_forwarding_hwtcl             : integer := 0;
			ecrc_check_capable_hwtcl             : integer := 0;
			ecrc_gen_capable_hwtcl               : integer := 0;
			bfm_drive_interface_clk_hwtcl        : integer := 1;
			bfm_drive_interface_npor_hwtcl       : integer := 1;
			bfm_drive_interface_pipe_hwtcl       : integer := 1;
			bfm_drive_interface_control_hwtcl    : integer := 1;
			enable_pipe32_phyip_ser_driver_hwtcl : integer := 0
		);
		port (
			test_in          : out std_logic_vector(31 downto 0);                    -- test_in
			simu_mode_pipe   : out std_logic;                                        -- simu_mode_pipe
			sim_pipe_pclk_in : out std_logic;                                        -- sim_pipe_pclk_in
			sim_pipe_rate    : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- sim_pipe_rate
			sim_ltssmstate   : in  std_logic_vector(4 downto 0)  := (others => 'X'); -- sim_ltssmstate
			eidleinfersel0   : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- eidleinfersel0
			eidleinfersel1   : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- eidleinfersel1
			eidleinfersel2   : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- eidleinfersel2
			eidleinfersel3   : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- eidleinfersel3
			eidleinfersel4   : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- eidleinfersel4
			eidleinfersel5   : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- eidleinfersel5
			eidleinfersel6   : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- eidleinfersel6
			eidleinfersel7   : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- eidleinfersel7
			powerdown0       : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- powerdown0
			powerdown1       : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- powerdown1
			powerdown2       : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- powerdown2
			powerdown3       : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- powerdown3
			powerdown4       : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- powerdown4
			powerdown5       : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- powerdown5
			powerdown6       : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- powerdown6
			powerdown7       : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- powerdown7
			rxpolarity0      : in  std_logic                     := 'X';             -- rxpolarity0
			rxpolarity1      : in  std_logic                     := 'X';             -- rxpolarity1
			rxpolarity2      : in  std_logic                     := 'X';             -- rxpolarity2
			rxpolarity3      : in  std_logic                     := 'X';             -- rxpolarity3
			rxpolarity4      : in  std_logic                     := 'X';             -- rxpolarity4
			rxpolarity5      : in  std_logic                     := 'X';             -- rxpolarity5
			rxpolarity6      : in  std_logic                     := 'X';             -- rxpolarity6
			rxpolarity7      : in  std_logic                     := 'X';             -- rxpolarity7
			txcompl0         : in  std_logic                     := 'X';             -- txcompl0
			txcompl1         : in  std_logic                     := 'X';             -- txcompl1
			txcompl2         : in  std_logic                     := 'X';             -- txcompl2
			txcompl3         : in  std_logic                     := 'X';             -- txcompl3
			txcompl4         : in  std_logic                     := 'X';             -- txcompl4
			txcompl5         : in  std_logic                     := 'X';             -- txcompl5
			txcompl6         : in  std_logic                     := 'X';             -- txcompl6
			txcompl7         : in  std_logic                     := 'X';             -- txcompl7
			txdata0          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- txdata0
			txdata1          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- txdata1
			txdata2          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- txdata2
			txdata3          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- txdata3
			txdata4          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- txdata4
			txdata5          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- txdata5
			txdata6          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- txdata6
			txdata7          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- txdata7
			txdatak0         : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- txdatak0
			txdatak1         : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- txdatak1
			txdatak2         : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- txdatak2
			txdatak3         : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- txdatak3
			txdatak4         : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- txdatak4
			txdatak5         : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- txdatak5
			txdatak6         : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- txdatak6
			txdatak7         : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- txdatak7
			txdetectrx0      : in  std_logic                     := 'X';             -- txdetectrx0
			txdetectrx1      : in  std_logic                     := 'X';             -- txdetectrx1
			txdetectrx2      : in  std_logic                     := 'X';             -- txdetectrx2
			txdetectrx3      : in  std_logic                     := 'X';             -- txdetectrx3
			txdetectrx4      : in  std_logic                     := 'X';             -- txdetectrx4
			txdetectrx5      : in  std_logic                     := 'X';             -- txdetectrx5
			txdetectrx6      : in  std_logic                     := 'X';             -- txdetectrx6
			txdetectrx7      : in  std_logic                     := 'X';             -- txdetectrx7
			txelecidle0      : in  std_logic                     := 'X';             -- txelecidle0
			txelecidle1      : in  std_logic                     := 'X';             -- txelecidle1
			txelecidle2      : in  std_logic                     := 'X';             -- txelecidle2
			txelecidle3      : in  std_logic                     := 'X';             -- txelecidle3
			txelecidle4      : in  std_logic                     := 'X';             -- txelecidle4
			txelecidle5      : in  std_logic                     := 'X';             -- txelecidle5
			txelecidle6      : in  std_logic                     := 'X';             -- txelecidle6
			txelecidle7      : in  std_logic                     := 'X';             -- txelecidle7
			txdeemph0        : in  std_logic                     := 'X';             -- txdeemph0
			txdeemph1        : in  std_logic                     := 'X';             -- txdeemph1
			txdeemph2        : in  std_logic                     := 'X';             -- txdeemph2
			txdeemph3        : in  std_logic                     := 'X';             -- txdeemph3
			txdeemph4        : in  std_logic                     := 'X';             -- txdeemph4
			txdeemph5        : in  std_logic                     := 'X';             -- txdeemph5
			txdeemph6        : in  std_logic                     := 'X';             -- txdeemph6
			txdeemph7        : in  std_logic                     := 'X';             -- txdeemph7
			txmargin0        : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- txmargin0
			txmargin1        : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- txmargin1
			txmargin2        : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- txmargin2
			txmargin3        : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- txmargin3
			txmargin4        : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- txmargin4
			txmargin5        : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- txmargin5
			txmargin6        : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- txmargin6
			txmargin7        : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- txmargin7
			txswing0         : in  std_logic                     := 'X';             -- txswing0
			txswing1         : in  std_logic                     := 'X';             -- txswing1
			txswing2         : in  std_logic                     := 'X';             -- txswing2
			txswing3         : in  std_logic                     := 'X';             -- txswing3
			txswing4         : in  std_logic                     := 'X';             -- txswing4
			txswing5         : in  std_logic                     := 'X';             -- txswing5
			txswing6         : in  std_logic                     := 'X';             -- txswing6
			txswing7         : in  std_logic                     := 'X';             -- txswing7
			phystatus0       : out std_logic;                                        -- phystatus0
			phystatus1       : out std_logic;                                        -- phystatus1
			phystatus2       : out std_logic;                                        -- phystatus2
			phystatus3       : out std_logic;                                        -- phystatus3
			phystatus4       : out std_logic;                                        -- phystatus4
			phystatus5       : out std_logic;                                        -- phystatus5
			phystatus6       : out std_logic;                                        -- phystatus6
			phystatus7       : out std_logic;                                        -- phystatus7
			rxdata0          : out std_logic_vector(31 downto 0);                    -- rxdata0
			rxdata1          : out std_logic_vector(31 downto 0);                    -- rxdata1
			rxdata2          : out std_logic_vector(31 downto 0);                    -- rxdata2
			rxdata3          : out std_logic_vector(31 downto 0);                    -- rxdata3
			rxdata4          : out std_logic_vector(31 downto 0);                    -- rxdata4
			rxdata5          : out std_logic_vector(31 downto 0);                    -- rxdata5
			rxdata6          : out std_logic_vector(31 downto 0);                    -- rxdata6
			rxdata7          : out std_logic_vector(31 downto 0);                    -- rxdata7
			rxdatak0         : out std_logic_vector(3 downto 0);                     -- rxdatak0
			rxdatak1         : out std_logic_vector(3 downto 0);                     -- rxdatak1
			rxdatak2         : out std_logic_vector(3 downto 0);                     -- rxdatak2
			rxdatak3         : out std_logic_vector(3 downto 0);                     -- rxdatak3
			rxdatak4         : out std_logic_vector(3 downto 0);                     -- rxdatak4
			rxdatak5         : out std_logic_vector(3 downto 0);                     -- rxdatak5
			rxdatak6         : out std_logic_vector(3 downto 0);                     -- rxdatak6
			rxdatak7         : out std_logic_vector(3 downto 0);                     -- rxdatak7
			rxelecidle0      : out std_logic;                                        -- rxelecidle0
			rxelecidle1      : out std_logic;                                        -- rxelecidle1
			rxelecidle2      : out std_logic;                                        -- rxelecidle2
			rxelecidle3      : out std_logic;                                        -- rxelecidle3
			rxelecidle4      : out std_logic;                                        -- rxelecidle4
			rxelecidle5      : out std_logic;                                        -- rxelecidle5
			rxelecidle6      : out std_logic;                                        -- rxelecidle6
			rxelecidle7      : out std_logic;                                        -- rxelecidle7
			rxstatus0        : out std_logic_vector(2 downto 0);                     -- rxstatus0
			rxstatus1        : out std_logic_vector(2 downto 0);                     -- rxstatus1
			rxstatus2        : out std_logic_vector(2 downto 0);                     -- rxstatus2
			rxstatus3        : out std_logic_vector(2 downto 0);                     -- rxstatus3
			rxstatus4        : out std_logic_vector(2 downto 0);                     -- rxstatus4
			rxstatus5        : out std_logic_vector(2 downto 0);                     -- rxstatus5
			rxstatus6        : out std_logic_vector(2 downto 0);                     -- rxstatus6
			rxstatus7        : out std_logic_vector(2 downto 0);                     -- rxstatus7
			rxvalid0         : out std_logic;                                        -- rxvalid0
			rxvalid1         : out std_logic;                                        -- rxvalid1
			rxvalid2         : out std_logic;                                        -- rxvalid2
			rxvalid3         : out std_logic;                                        -- rxvalid3
			rxvalid4         : out std_logic;                                        -- rxvalid4
			rxvalid5         : out std_logic;                                        -- rxvalid5
			rxvalid6         : out std_logic;                                        -- rxvalid6
			rxvalid7         : out std_logic;                                        -- rxvalid7
			rxdataskip0      : out std_logic;                                        -- rxdataskip0
			rxdataskip1      : out std_logic;                                        -- rxdataskip1
			rxdataskip2      : out std_logic;                                        -- rxdataskip2
			rxdataskip3      : out std_logic;                                        -- rxdataskip3
			rxdataskip4      : out std_logic;                                        -- rxdataskip4
			rxdataskip5      : out std_logic;                                        -- rxdataskip5
			rxdataskip6      : out std_logic;                                        -- rxdataskip6
			rxdataskip7      : out std_logic;                                        -- rxdataskip7
			rxblkst0         : out std_logic;                                        -- rxblkst0
			rxblkst1         : out std_logic;                                        -- rxblkst1
			rxblkst2         : out std_logic;                                        -- rxblkst2
			rxblkst3         : out std_logic;                                        -- rxblkst3
			rxblkst4         : out std_logic;                                        -- rxblkst4
			rxblkst5         : out std_logic;                                        -- rxblkst5
			rxblkst6         : out std_logic;                                        -- rxblkst6
			rxblkst7         : out std_logic;                                        -- rxblkst7
			rxsynchd0        : out std_logic_vector(1 downto 0);                     -- rxsynchd0
			rxsynchd1        : out std_logic_vector(1 downto 0);                     -- rxsynchd1
			rxsynchd2        : out std_logic_vector(1 downto 0);                     -- rxsynchd2
			rxsynchd3        : out std_logic_vector(1 downto 0);                     -- rxsynchd3
			rxsynchd4        : out std_logic_vector(1 downto 0);                     -- rxsynchd4
			rxsynchd5        : out std_logic_vector(1 downto 0);                     -- rxsynchd5
			rxsynchd6        : out std_logic_vector(1 downto 0);                     -- rxsynchd6
			rxsynchd7        : out std_logic_vector(1 downto 0);                     -- rxsynchd7
			currentcoeff0    : in  std_logic_vector(17 downto 0) := (others => 'X'); -- currentcoeff0
			currentcoeff1    : in  std_logic_vector(17 downto 0) := (others => 'X'); -- currentcoeff1
			currentcoeff2    : in  std_logic_vector(17 downto 0) := (others => 'X'); -- currentcoeff2
			currentcoeff3    : in  std_logic_vector(17 downto 0) := (others => 'X'); -- currentcoeff3
			currentcoeff4    : in  std_logic_vector(17 downto 0) := (others => 'X'); -- currentcoeff4
			currentcoeff5    : in  std_logic_vector(17 downto 0) := (others => 'X'); -- currentcoeff5
			currentcoeff6    : in  std_logic_vector(17 downto 0) := (others => 'X'); -- currentcoeff6
			currentcoeff7    : in  std_logic_vector(17 downto 0) := (others => 'X'); -- currentcoeff7
			currentrxpreset0 : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- currentrxpreset0
			currentrxpreset1 : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- currentrxpreset1
			currentrxpreset2 : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- currentrxpreset2
			currentrxpreset3 : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- currentrxpreset3
			currentrxpreset4 : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- currentrxpreset4
			currentrxpreset5 : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- currentrxpreset5
			currentrxpreset6 : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- currentrxpreset6
			currentrxpreset7 : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- currentrxpreset7
			txsynchd0        : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- txsynchd0
			txsynchd1        : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- txsynchd1
			txsynchd2        : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- txsynchd2
			txsynchd3        : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- txsynchd3
			txsynchd4        : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- txsynchd4
			txsynchd5        : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- txsynchd5
			txsynchd6        : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- txsynchd6
			txsynchd7        : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- txsynchd7
			txblkst0         : in  std_logic                     := 'X';             -- txblkst0
			txblkst1         : in  std_logic                     := 'X';             -- txblkst1
			txblkst2         : in  std_logic                     := 'X';             -- txblkst2
			txblkst3         : in  std_logic                     := 'X';             -- txblkst3
			txblkst4         : in  std_logic                     := 'X';             -- txblkst4
			txblkst5         : in  std_logic                     := 'X';             -- txblkst5
			txblkst6         : in  std_logic                     := 'X';             -- txblkst6
			txblkst7         : in  std_logic                     := 'X';             -- txblkst7
			txdataskip0      : in  std_logic                     := 'X';             -- txdataskip0
			txdataskip1      : in  std_logic                     := 'X';             -- txdataskip1
			txdataskip2      : in  std_logic                     := 'X';             -- txdataskip2
			txdataskip3      : in  std_logic                     := 'X';             -- txdataskip3
			txdataskip4      : in  std_logic                     := 'X';             -- txdataskip4
			txdataskip5      : in  std_logic                     := 'X';             -- txdataskip5
			txdataskip6      : in  std_logic                     := 'X';             -- txdataskip6
			txdataskip7      : in  std_logic                     := 'X';             -- txdataskip7
			rate0            : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- rate0
			rate1            : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- rate1
			rate2            : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- rate2
			rate3            : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- rate3
			rate4            : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- rate4
			rate5            : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- rate5
			rate6            : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- rate6
			rate7            : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- rate7
			rx_in0           : out std_logic;                                        -- rx_in0
			rx_in1           : out std_logic;                                        -- rx_in1
			rx_in2           : out std_logic;                                        -- rx_in2
			rx_in3           : out std_logic;                                        -- rx_in3
			rx_in4           : out std_logic;                                        -- rx_in4
			rx_in5           : out std_logic;                                        -- rx_in5
			rx_in6           : out std_logic;                                        -- rx_in6
			rx_in7           : out std_logic;                                        -- rx_in7
			tx_out0          : in  std_logic                     := 'X';             -- tx_out0
			tx_out1          : in  std_logic                     := 'X';             -- tx_out1
			tx_out2          : in  std_logic                     := 'X';             -- tx_out2
			tx_out3          : in  std_logic                     := 'X';             -- tx_out3
			tx_out4          : in  std_logic                     := 'X';             -- tx_out4
			tx_out5          : in  std_logic                     := 'X';             -- tx_out5
			tx_out6          : in  std_logic                     := 'X';             -- tx_out6
			tx_out7          : in  std_logic                     := 'X';             -- tx_out7
			npor             : out std_logic;                                        -- npor
			pin_perst        : out std_logic;                                        -- pin_perst
			refclk           : out std_logic                                         -- clk
		);
	end component DUT_pcie_tb_ip;

	u0 : component DUT_pcie_tb_ip
		generic map (
			lane_mask_hwtcl                      => STRING_VALUE_FOR_lane_mask_hwtcl,
			pll_refclk_freq_hwtcl                => STRING_VALUE_FOR_pll_refclk_freq_hwtcl,
			serial_sim_hwtcl                     => INTEGER_VALUE_FOR_serial_sim_hwtcl,
			deemphasis_enable_hwtcl              => STRING_VALUE_FOR_deemphasis_enable_hwtcl,
			pld_clk_MHz                          => INTEGER_VALUE_FOR_pld_clk_MHz,
			millisecond_cycle_count_hwtcl        => INTEGER_VALUE_FOR_millisecond_cycle_count_hwtcl,
			use_crc_forwarding_hwtcl             => INTEGER_VALUE_FOR_use_crc_forwarding_hwtcl,
			ecrc_check_capable_hwtcl             => INTEGER_VALUE_FOR_ecrc_check_capable_hwtcl,
			ecrc_gen_capable_hwtcl               => INTEGER_VALUE_FOR_ecrc_gen_capable_hwtcl,
			bfm_drive_interface_clk_hwtcl        => INTEGER_VALUE_FOR_bfm_drive_interface_clk_hwtcl,
			bfm_drive_interface_npor_hwtcl       => INTEGER_VALUE_FOR_bfm_drive_interface_npor_hwtcl,
			bfm_drive_interface_pipe_hwtcl       => INTEGER_VALUE_FOR_bfm_drive_interface_pipe_hwtcl,
			bfm_drive_interface_control_hwtcl    => INTEGER_VALUE_FOR_bfm_drive_interface_control_hwtcl,
			enable_pipe32_phyip_ser_driver_hwtcl => INTEGER_VALUE_FOR_enable_pipe32_phyip_ser_driver_hwtcl
		)
		port map (
			test_in          => CONNECTED_TO_test_in,          --   hip_ctrl.test_in
			simu_mode_pipe   => CONNECTED_TO_simu_mode_pipe,   --           .simu_mode_pipe
			sim_pipe_pclk_in => CONNECTED_TO_sim_pipe_pclk_in, --   hip_pipe.sim_pipe_pclk_in
			sim_pipe_rate    => CONNECTED_TO_sim_pipe_rate,    --           .sim_pipe_rate
			sim_ltssmstate   => CONNECTED_TO_sim_ltssmstate,   --           .sim_ltssmstate
			eidleinfersel0   => CONNECTED_TO_eidleinfersel0,   --           .eidleinfersel0
			eidleinfersel1   => CONNECTED_TO_eidleinfersel1,   --           .eidleinfersel1
			eidleinfersel2   => CONNECTED_TO_eidleinfersel2,   --           .eidleinfersel2
			eidleinfersel3   => CONNECTED_TO_eidleinfersel3,   --           .eidleinfersel3
			eidleinfersel4   => CONNECTED_TO_eidleinfersel4,   --           .eidleinfersel4
			eidleinfersel5   => CONNECTED_TO_eidleinfersel5,   --           .eidleinfersel5
			eidleinfersel6   => CONNECTED_TO_eidleinfersel6,   --           .eidleinfersel6
			eidleinfersel7   => CONNECTED_TO_eidleinfersel7,   --           .eidleinfersel7
			powerdown0       => CONNECTED_TO_powerdown0,       --           .powerdown0
			powerdown1       => CONNECTED_TO_powerdown1,       --           .powerdown1
			powerdown2       => CONNECTED_TO_powerdown2,       --           .powerdown2
			powerdown3       => CONNECTED_TO_powerdown3,       --           .powerdown3
			powerdown4       => CONNECTED_TO_powerdown4,       --           .powerdown4
			powerdown5       => CONNECTED_TO_powerdown5,       --           .powerdown5
			powerdown6       => CONNECTED_TO_powerdown6,       --           .powerdown6
			powerdown7       => CONNECTED_TO_powerdown7,       --           .powerdown7
			rxpolarity0      => CONNECTED_TO_rxpolarity0,      --           .rxpolarity0
			rxpolarity1      => CONNECTED_TO_rxpolarity1,      --           .rxpolarity1
			rxpolarity2      => CONNECTED_TO_rxpolarity2,      --           .rxpolarity2
			rxpolarity3      => CONNECTED_TO_rxpolarity3,      --           .rxpolarity3
			rxpolarity4      => CONNECTED_TO_rxpolarity4,      --           .rxpolarity4
			rxpolarity5      => CONNECTED_TO_rxpolarity5,      --           .rxpolarity5
			rxpolarity6      => CONNECTED_TO_rxpolarity6,      --           .rxpolarity6
			rxpolarity7      => CONNECTED_TO_rxpolarity7,      --           .rxpolarity7
			txcompl0         => CONNECTED_TO_txcompl0,         --           .txcompl0
			txcompl1         => CONNECTED_TO_txcompl1,         --           .txcompl1
			txcompl2         => CONNECTED_TO_txcompl2,         --           .txcompl2
			txcompl3         => CONNECTED_TO_txcompl3,         --           .txcompl3
			txcompl4         => CONNECTED_TO_txcompl4,         --           .txcompl4
			txcompl5         => CONNECTED_TO_txcompl5,         --           .txcompl5
			txcompl6         => CONNECTED_TO_txcompl6,         --           .txcompl6
			txcompl7         => CONNECTED_TO_txcompl7,         --           .txcompl7
			txdata0          => CONNECTED_TO_txdata0,          --           .txdata0
			txdata1          => CONNECTED_TO_txdata1,          --           .txdata1
			txdata2          => CONNECTED_TO_txdata2,          --           .txdata2
			txdata3          => CONNECTED_TO_txdata3,          --           .txdata3
			txdata4          => CONNECTED_TO_txdata4,          --           .txdata4
			txdata5          => CONNECTED_TO_txdata5,          --           .txdata5
			txdata6          => CONNECTED_TO_txdata6,          --           .txdata6
			txdata7          => CONNECTED_TO_txdata7,          --           .txdata7
			txdatak0         => CONNECTED_TO_txdatak0,         --           .txdatak0
			txdatak1         => CONNECTED_TO_txdatak1,         --           .txdatak1
			txdatak2         => CONNECTED_TO_txdatak2,         --           .txdatak2
			txdatak3         => CONNECTED_TO_txdatak3,         --           .txdatak3
			txdatak4         => CONNECTED_TO_txdatak4,         --           .txdatak4
			txdatak5         => CONNECTED_TO_txdatak5,         --           .txdatak5
			txdatak6         => CONNECTED_TO_txdatak6,         --           .txdatak6
			txdatak7         => CONNECTED_TO_txdatak7,         --           .txdatak7
			txdetectrx0      => CONNECTED_TO_txdetectrx0,      --           .txdetectrx0
			txdetectrx1      => CONNECTED_TO_txdetectrx1,      --           .txdetectrx1
			txdetectrx2      => CONNECTED_TO_txdetectrx2,      --           .txdetectrx2
			txdetectrx3      => CONNECTED_TO_txdetectrx3,      --           .txdetectrx3
			txdetectrx4      => CONNECTED_TO_txdetectrx4,      --           .txdetectrx4
			txdetectrx5      => CONNECTED_TO_txdetectrx5,      --           .txdetectrx5
			txdetectrx6      => CONNECTED_TO_txdetectrx6,      --           .txdetectrx6
			txdetectrx7      => CONNECTED_TO_txdetectrx7,      --           .txdetectrx7
			txelecidle0      => CONNECTED_TO_txelecidle0,      --           .txelecidle0
			txelecidle1      => CONNECTED_TO_txelecidle1,      --           .txelecidle1
			txelecidle2      => CONNECTED_TO_txelecidle2,      --           .txelecidle2
			txelecidle3      => CONNECTED_TO_txelecidle3,      --           .txelecidle3
			txelecidle4      => CONNECTED_TO_txelecidle4,      --           .txelecidle4
			txelecidle5      => CONNECTED_TO_txelecidle5,      --           .txelecidle5
			txelecidle6      => CONNECTED_TO_txelecidle6,      --           .txelecidle6
			txelecidle7      => CONNECTED_TO_txelecidle7,      --           .txelecidle7
			txdeemph0        => CONNECTED_TO_txdeemph0,        --           .txdeemph0
			txdeemph1        => CONNECTED_TO_txdeemph1,        --           .txdeemph1
			txdeemph2        => CONNECTED_TO_txdeemph2,        --           .txdeemph2
			txdeemph3        => CONNECTED_TO_txdeemph3,        --           .txdeemph3
			txdeemph4        => CONNECTED_TO_txdeemph4,        --           .txdeemph4
			txdeemph5        => CONNECTED_TO_txdeemph5,        --           .txdeemph5
			txdeemph6        => CONNECTED_TO_txdeemph6,        --           .txdeemph6
			txdeemph7        => CONNECTED_TO_txdeemph7,        --           .txdeemph7
			txmargin0        => CONNECTED_TO_txmargin0,        --           .txmargin0
			txmargin1        => CONNECTED_TO_txmargin1,        --           .txmargin1
			txmargin2        => CONNECTED_TO_txmargin2,        --           .txmargin2
			txmargin3        => CONNECTED_TO_txmargin3,        --           .txmargin3
			txmargin4        => CONNECTED_TO_txmargin4,        --           .txmargin4
			txmargin5        => CONNECTED_TO_txmargin5,        --           .txmargin5
			txmargin6        => CONNECTED_TO_txmargin6,        --           .txmargin6
			txmargin7        => CONNECTED_TO_txmargin7,        --           .txmargin7
			txswing0         => CONNECTED_TO_txswing0,         --           .txswing0
			txswing1         => CONNECTED_TO_txswing1,         --           .txswing1
			txswing2         => CONNECTED_TO_txswing2,         --           .txswing2
			txswing3         => CONNECTED_TO_txswing3,         --           .txswing3
			txswing4         => CONNECTED_TO_txswing4,         --           .txswing4
			txswing5         => CONNECTED_TO_txswing5,         --           .txswing5
			txswing6         => CONNECTED_TO_txswing6,         --           .txswing6
			txswing7         => CONNECTED_TO_txswing7,         --           .txswing7
			phystatus0       => CONNECTED_TO_phystatus0,       --           .phystatus0
			phystatus1       => CONNECTED_TO_phystatus1,       --           .phystatus1
			phystatus2       => CONNECTED_TO_phystatus2,       --           .phystatus2
			phystatus3       => CONNECTED_TO_phystatus3,       --           .phystatus3
			phystatus4       => CONNECTED_TO_phystatus4,       --           .phystatus4
			phystatus5       => CONNECTED_TO_phystatus5,       --           .phystatus5
			phystatus6       => CONNECTED_TO_phystatus6,       --           .phystatus6
			phystatus7       => CONNECTED_TO_phystatus7,       --           .phystatus7
			rxdata0          => CONNECTED_TO_rxdata0,          --           .rxdata0
			rxdata1          => CONNECTED_TO_rxdata1,          --           .rxdata1
			rxdata2          => CONNECTED_TO_rxdata2,          --           .rxdata2
			rxdata3          => CONNECTED_TO_rxdata3,          --           .rxdata3
			rxdata4          => CONNECTED_TO_rxdata4,          --           .rxdata4
			rxdata5          => CONNECTED_TO_rxdata5,          --           .rxdata5
			rxdata6          => CONNECTED_TO_rxdata6,          --           .rxdata6
			rxdata7          => CONNECTED_TO_rxdata7,          --           .rxdata7
			rxdatak0         => CONNECTED_TO_rxdatak0,         --           .rxdatak0
			rxdatak1         => CONNECTED_TO_rxdatak1,         --           .rxdatak1
			rxdatak2         => CONNECTED_TO_rxdatak2,         --           .rxdatak2
			rxdatak3         => CONNECTED_TO_rxdatak3,         --           .rxdatak3
			rxdatak4         => CONNECTED_TO_rxdatak4,         --           .rxdatak4
			rxdatak5         => CONNECTED_TO_rxdatak5,         --           .rxdatak5
			rxdatak6         => CONNECTED_TO_rxdatak6,         --           .rxdatak6
			rxdatak7         => CONNECTED_TO_rxdatak7,         --           .rxdatak7
			rxelecidle0      => CONNECTED_TO_rxelecidle0,      --           .rxelecidle0
			rxelecidle1      => CONNECTED_TO_rxelecidle1,      --           .rxelecidle1
			rxelecidle2      => CONNECTED_TO_rxelecidle2,      --           .rxelecidle2
			rxelecidle3      => CONNECTED_TO_rxelecidle3,      --           .rxelecidle3
			rxelecidle4      => CONNECTED_TO_rxelecidle4,      --           .rxelecidle4
			rxelecidle5      => CONNECTED_TO_rxelecidle5,      --           .rxelecidle5
			rxelecidle6      => CONNECTED_TO_rxelecidle6,      --           .rxelecidle6
			rxelecidle7      => CONNECTED_TO_rxelecidle7,      --           .rxelecidle7
			rxstatus0        => CONNECTED_TO_rxstatus0,        --           .rxstatus0
			rxstatus1        => CONNECTED_TO_rxstatus1,        --           .rxstatus1
			rxstatus2        => CONNECTED_TO_rxstatus2,        --           .rxstatus2
			rxstatus3        => CONNECTED_TO_rxstatus3,        --           .rxstatus3
			rxstatus4        => CONNECTED_TO_rxstatus4,        --           .rxstatus4
			rxstatus5        => CONNECTED_TO_rxstatus5,        --           .rxstatus5
			rxstatus6        => CONNECTED_TO_rxstatus6,        --           .rxstatus6
			rxstatus7        => CONNECTED_TO_rxstatus7,        --           .rxstatus7
			rxvalid0         => CONNECTED_TO_rxvalid0,         --           .rxvalid0
			rxvalid1         => CONNECTED_TO_rxvalid1,         --           .rxvalid1
			rxvalid2         => CONNECTED_TO_rxvalid2,         --           .rxvalid2
			rxvalid3         => CONNECTED_TO_rxvalid3,         --           .rxvalid3
			rxvalid4         => CONNECTED_TO_rxvalid4,         --           .rxvalid4
			rxvalid5         => CONNECTED_TO_rxvalid5,         --           .rxvalid5
			rxvalid6         => CONNECTED_TO_rxvalid6,         --           .rxvalid6
			rxvalid7         => CONNECTED_TO_rxvalid7,         --           .rxvalid7
			rxdataskip0      => CONNECTED_TO_rxdataskip0,      --           .rxdataskip0
			rxdataskip1      => CONNECTED_TO_rxdataskip1,      --           .rxdataskip1
			rxdataskip2      => CONNECTED_TO_rxdataskip2,      --           .rxdataskip2
			rxdataskip3      => CONNECTED_TO_rxdataskip3,      --           .rxdataskip3
			rxdataskip4      => CONNECTED_TO_rxdataskip4,      --           .rxdataskip4
			rxdataskip5      => CONNECTED_TO_rxdataskip5,      --           .rxdataskip5
			rxdataskip6      => CONNECTED_TO_rxdataskip6,      --           .rxdataskip6
			rxdataskip7      => CONNECTED_TO_rxdataskip7,      --           .rxdataskip7
			rxblkst0         => CONNECTED_TO_rxblkst0,         --           .rxblkst0
			rxblkst1         => CONNECTED_TO_rxblkst1,         --           .rxblkst1
			rxblkst2         => CONNECTED_TO_rxblkst2,         --           .rxblkst2
			rxblkst3         => CONNECTED_TO_rxblkst3,         --           .rxblkst3
			rxblkst4         => CONNECTED_TO_rxblkst4,         --           .rxblkst4
			rxblkst5         => CONNECTED_TO_rxblkst5,         --           .rxblkst5
			rxblkst6         => CONNECTED_TO_rxblkst6,         --           .rxblkst6
			rxblkst7         => CONNECTED_TO_rxblkst7,         --           .rxblkst7
			rxsynchd0        => CONNECTED_TO_rxsynchd0,        --           .rxsynchd0
			rxsynchd1        => CONNECTED_TO_rxsynchd1,        --           .rxsynchd1
			rxsynchd2        => CONNECTED_TO_rxsynchd2,        --           .rxsynchd2
			rxsynchd3        => CONNECTED_TO_rxsynchd3,        --           .rxsynchd3
			rxsynchd4        => CONNECTED_TO_rxsynchd4,        --           .rxsynchd4
			rxsynchd5        => CONNECTED_TO_rxsynchd5,        --           .rxsynchd5
			rxsynchd6        => CONNECTED_TO_rxsynchd6,        --           .rxsynchd6
			rxsynchd7        => CONNECTED_TO_rxsynchd7,        --           .rxsynchd7
			currentcoeff0    => CONNECTED_TO_currentcoeff0,    --           .currentcoeff0
			currentcoeff1    => CONNECTED_TO_currentcoeff1,    --           .currentcoeff1
			currentcoeff2    => CONNECTED_TO_currentcoeff2,    --           .currentcoeff2
			currentcoeff3    => CONNECTED_TO_currentcoeff3,    --           .currentcoeff3
			currentcoeff4    => CONNECTED_TO_currentcoeff4,    --           .currentcoeff4
			currentcoeff5    => CONNECTED_TO_currentcoeff5,    --           .currentcoeff5
			currentcoeff6    => CONNECTED_TO_currentcoeff6,    --           .currentcoeff6
			currentcoeff7    => CONNECTED_TO_currentcoeff7,    --           .currentcoeff7
			currentrxpreset0 => CONNECTED_TO_currentrxpreset0, --           .currentrxpreset0
			currentrxpreset1 => CONNECTED_TO_currentrxpreset1, --           .currentrxpreset1
			currentrxpreset2 => CONNECTED_TO_currentrxpreset2, --           .currentrxpreset2
			currentrxpreset3 => CONNECTED_TO_currentrxpreset3, --           .currentrxpreset3
			currentrxpreset4 => CONNECTED_TO_currentrxpreset4, --           .currentrxpreset4
			currentrxpreset5 => CONNECTED_TO_currentrxpreset5, --           .currentrxpreset5
			currentrxpreset6 => CONNECTED_TO_currentrxpreset6, --           .currentrxpreset6
			currentrxpreset7 => CONNECTED_TO_currentrxpreset7, --           .currentrxpreset7
			txsynchd0        => CONNECTED_TO_txsynchd0,        --           .txsynchd0
			txsynchd1        => CONNECTED_TO_txsynchd1,        --           .txsynchd1
			txsynchd2        => CONNECTED_TO_txsynchd2,        --           .txsynchd2
			txsynchd3        => CONNECTED_TO_txsynchd3,        --           .txsynchd3
			txsynchd4        => CONNECTED_TO_txsynchd4,        --           .txsynchd4
			txsynchd5        => CONNECTED_TO_txsynchd5,        --           .txsynchd5
			txsynchd6        => CONNECTED_TO_txsynchd6,        --           .txsynchd6
			txsynchd7        => CONNECTED_TO_txsynchd7,        --           .txsynchd7
			txblkst0         => CONNECTED_TO_txblkst0,         --           .txblkst0
			txblkst1         => CONNECTED_TO_txblkst1,         --           .txblkst1
			txblkst2         => CONNECTED_TO_txblkst2,         --           .txblkst2
			txblkst3         => CONNECTED_TO_txblkst3,         --           .txblkst3
			txblkst4         => CONNECTED_TO_txblkst4,         --           .txblkst4
			txblkst5         => CONNECTED_TO_txblkst5,         --           .txblkst5
			txblkst6         => CONNECTED_TO_txblkst6,         --           .txblkst6
			txblkst7         => CONNECTED_TO_txblkst7,         --           .txblkst7
			txdataskip0      => CONNECTED_TO_txdataskip0,      --           .txdataskip0
			txdataskip1      => CONNECTED_TO_txdataskip1,      --           .txdataskip1
			txdataskip2      => CONNECTED_TO_txdataskip2,      --           .txdataskip2
			txdataskip3      => CONNECTED_TO_txdataskip3,      --           .txdataskip3
			txdataskip4      => CONNECTED_TO_txdataskip4,      --           .txdataskip4
			txdataskip5      => CONNECTED_TO_txdataskip5,      --           .txdataskip5
			txdataskip6      => CONNECTED_TO_txdataskip6,      --           .txdataskip6
			txdataskip7      => CONNECTED_TO_txdataskip7,      --           .txdataskip7
			rate0            => CONNECTED_TO_rate0,            --           .rate0
			rate1            => CONNECTED_TO_rate1,            --           .rate1
			rate2            => CONNECTED_TO_rate2,            --           .rate2
			rate3            => CONNECTED_TO_rate3,            --           .rate3
			rate4            => CONNECTED_TO_rate4,            --           .rate4
			rate5            => CONNECTED_TO_rate5,            --           .rate5
			rate6            => CONNECTED_TO_rate6,            --           .rate6
			rate7            => CONNECTED_TO_rate7,            --           .rate7
			rx_in0           => CONNECTED_TO_rx_in0,           -- hip_serial.rx_in0
			rx_in1           => CONNECTED_TO_rx_in1,           --           .rx_in1
			rx_in2           => CONNECTED_TO_rx_in2,           --           .rx_in2
			rx_in3           => CONNECTED_TO_rx_in3,           --           .rx_in3
			rx_in4           => CONNECTED_TO_rx_in4,           --           .rx_in4
			rx_in5           => CONNECTED_TO_rx_in5,           --           .rx_in5
			rx_in6           => CONNECTED_TO_rx_in6,           --           .rx_in6
			rx_in7           => CONNECTED_TO_rx_in7,           --           .rx_in7
			tx_out0          => CONNECTED_TO_tx_out0,          --           .tx_out0
			tx_out1          => CONNECTED_TO_tx_out1,          --           .tx_out1
			tx_out2          => CONNECTED_TO_tx_out2,          --           .tx_out2
			tx_out3          => CONNECTED_TO_tx_out3,          --           .tx_out3
			tx_out4          => CONNECTED_TO_tx_out4,          --           .tx_out4
			tx_out5          => CONNECTED_TO_tx_out5,          --           .tx_out5
			tx_out6          => CONNECTED_TO_tx_out6,          --           .tx_out6
			tx_out7          => CONNECTED_TO_tx_out7,          --           .tx_out7
			npor             => CONNECTED_TO_npor,             --       npor.npor
			pin_perst        => CONNECTED_TO_pin_perst,        --           .pin_perst
			refclk           => CONNECTED_TO_refclk            --     refclk.clk
		);

