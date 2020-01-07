// (C) 2001-2018 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files from any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel FPGA IP License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

module altpcie_a10_tbed_hwtcl  # (
   parameter pll_refclk_freq_hwtcl                 = "100 MHz",
   parameter gen123_lane_rate_mode_hwtcl           = "gen1",
   parameter lane_mask_hwtcl                       = "x4",
   parameter apps_type_hwtcl                       = 1,// "1:Link training and configuration", "2:Link training, configuration and chaining DMA","3:Link training, configuration and target"
   parameter port_type_hwtcl                       = "Native endpoint",
   parameter serial_sim_hwtcl                      = 1,
   parameter enable_pipe32_sim_hwtcl               = 0,       //DEPRECATED
   parameter enable_pipe32_phyip_ser_driver_hwtcl  = 0,       //DEPRECATED
   parameter deemphasis_enable_hwtcl               = "false", //DEPRECATED
   parameter pld_clk_MHz                           = 125,     //DEPRECATED
   parameter millisecond_cycle_count_hwtcl         = 124250,  // DEPRECATED
   parameter use_crc_forwarding_hwtcl              = 0,       // DEPRECATED
   parameter ecrc_check_capable_hwtcl              = 0,       // DEPRECATED
   parameter ecrc_gen_capable_hwtcl                = 0,       // DEPRECATED
   parameter bfm_drive_interface_clk_hwtcl         = 1,       // DEPRECATED
   parameter bfm_drive_interface_npor_hwtcl        = 1,       // DEPRECATED
   parameter bfm_drive_interface_pipe_hwtcl        = 1,       // DEPRECATED
   parameter bfm_drive_interface_control_hwtcl     = 1        // DEPRECATED
) (
   // Clock
   output                  refclk,
   output                  npor,
   output                  pin_perst,
      // Reset signals
   output                 simu_mode_pipe,
   output  [31 : 0]       test_in,

   // Input PIPE simulation
   input [1:0]            sim_pipe_rate,
   input [4:0]            sim_ltssmstate,
   output                 sim_pipe_pclk_in,

   output                 phystatus0,
   output                 phystatus1,
   output                 phystatus2,
   output                 phystatus3,
   output                 phystatus4,
   output                 phystatus5,
   output                 phystatus6,
   output                 phystatus7,
   output  [31 : 0]       rxdata0,
   output  [31 : 0]       rxdata1,
   output  [31 : 0]       rxdata2,
   output  [31 : 0]       rxdata3,
   output  [31 : 0]       rxdata4,
   output  [31 : 0]       rxdata5,
   output  [31 : 0]       rxdata6,
   output  [31 : 0]       rxdata7,
   output  [3  : 0]       rxdatak0,
   output  [3  : 0]       rxdatak1,
   output  [3  : 0]       rxdatak2,
   output  [3  : 0]       rxdatak3,
   output  [3  : 0]       rxdatak4,
   output  [3  : 0]       rxdatak5,
   output  [3  : 0]       rxdatak6,
   output  [3  : 0]       rxdatak7,
   output                 rxelecidle0,
   output                 rxelecidle1,
   output                 rxelecidle2,
   output                 rxelecidle3,
   output                 rxelecidle4,
   output                 rxelecidle5,
   output                 rxelecidle6,
   output                 rxelecidle7,
   output  [2 : 0]        rxstatus0,
   output  [2 : 0]        rxstatus1,
   output  [2 : 0]        rxstatus2,
   output  [2 : 0]        rxstatus3,
   output  [2 : 0]        rxstatus4,
   output  [2 : 0]        rxstatus5,
   output  [2 : 0]        rxstatus6,
   output  [2 : 0]        rxstatus7,
   output                 rxvalid0,
   output                 rxvalid1,
   output                 rxvalid2,
   output                 rxvalid3,
   output                 rxvalid4,
   output                 rxvalid5,
   output                 rxvalid6,
   output                 rxvalid7,
   output                 rxdataskip0,
   output                 rxdataskip1,
   output                 rxdataskip2,
   output                 rxdataskip3,
   output                 rxdataskip4,
   output                 rxdataskip5,
   output                 rxdataskip6,
   output                 rxdataskip7,
   output                 rxblkst0,
   output                 rxblkst1,
   output                 rxblkst2,
   output                 rxblkst3,
   output                 rxblkst4,
   output                 rxblkst5,
   output                 rxblkst6,
   output                 rxblkst7,
   output  [1 : 0]        rxsynchd0,
   output  [1 : 0]        rxsynchd1,
   output  [1 : 0]        rxsynchd2,
   output  [1 : 0]        rxsynchd3,
   output  [1 : 0]        rxsynchd4,
   output  [1 : 0]        rxsynchd5,
   output  [1 : 0]        rxsynchd6,
   output  [1 : 0]        rxsynchd7,

   // Output Pipe interface
   input [2 : 0]        eidleinfersel0,
   input [2 : 0]        eidleinfersel1,
   input [2 : 0]        eidleinfersel2,
   input [2 : 0]        eidleinfersel3,
   input [2 : 0]        eidleinfersel4,
   input [2 : 0]        eidleinfersel5,
   input [2 : 0]        eidleinfersel6,
   input [2 : 0]        eidleinfersel7,
   input [1 : 0]        powerdown0,
   input [1 : 0]        powerdown1,
   input [1 : 0]        powerdown2,
   input [1 : 0]        powerdown3,
   input [1 : 0]        powerdown4,
   input [1 : 0]        powerdown5,
   input [1 : 0]        powerdown6,
   input [1 : 0]        powerdown7,
   input                rxpolarity0,
   input                rxpolarity1,
   input                rxpolarity2,
   input                rxpolarity3,
   input                rxpolarity4,
   input                rxpolarity5,
   input                rxpolarity6,
   input                rxpolarity7,
   input                txcompl0,
   input                txcompl1,
   input                txcompl2,
   input                txcompl3,
   input                txcompl4,
   input                txcompl5,
   input                txcompl6,
   input                txcompl7,
   input [31 : 0]       txdata0,
   input [31 : 0]       txdata1,
   input [31 : 0]       txdata2,
   input [31 : 0]       txdata3,
   input [31 : 0]       txdata4,
   input [31 : 0]       txdata5,
   input [31 : 0]       txdata6,
   input [31 : 0]       txdata7,
   input [3  : 0]       txdatak0,
   input [3  : 0]       txdatak1,
   input [3  : 0]       txdatak2,
   input [3  : 0]       txdatak3,
   input [3  : 0]       txdatak4,
   input [3  : 0]       txdatak5,
   input [3  : 0]       txdatak6,
   input [3  : 0]       txdatak7,
   input                txdetectrx0,
   input                txdetectrx1,
   input                txdetectrx2,
   input                txdetectrx3,
   input                txdetectrx4,
   input                txdetectrx5,
   input                txdetectrx6,
   input                txdetectrx7,
   input                txelecidle0,
   input                txelecidle1,
   input                txelecidle2,
   input                txelecidle3,
   input                txelecidle4,
   input                txelecidle5,
   input                txelecidle6,
   input                txelecidle7,
   input [2 : 0]        txmargin0,
   input [2 : 0]        txmargin1,
   input [2 : 0]        txmargin2,
   input [2 : 0]        txmargin3,
   input [2 : 0]        txmargin4,
   input [2 : 0]        txmargin5,
   input [2 : 0]        txmargin6,
   input [2 : 0]        txmargin7,
   input                txswing0,
   input                txswing1,
   input                txswing2,
   input                txswing3,
   input                txswing4,
   input                txswing5,
   input                txswing6,
   input                txswing7,
   input                txdeemph0,
   input                txdeemph1,
   input                txdeemph2,
   input                txdeemph3,
   input                txdeemph4,
   input                txdeemph5,
   input                txdeemph6,
   input                txdeemph7,
   input [1:0]          rate0,
   input [1:0]          rate1,
   input [1:0]          rate2,
   input [1:0]          rate3,
   input [1:0]          rate4,
   input [1:0]          rate5,
   input [1:0]          rate6,
   input [1:0]          rate7,
   input                txdataskip0,
   input                txdataskip1,
   input                txdataskip2,
   input                txdataskip3,
   input                txdataskip4,
   input                txdataskip5,
   input                txdataskip6,
   input                txdataskip7,
   input                txblkst0,
   input                txblkst1,
   input                txblkst2,
   input                txblkst3,
   input                txblkst4,
   input                txblkst5,
   input                txblkst6,
   input                txblkst7,
   input [1 : 0]        txsynchd0,
   input [1 : 0]        txsynchd1,
   input [1 : 0]        txsynchd2,
   input [1 : 0]        txsynchd3,
   input [1 : 0]        txsynchd4,
   input [1 : 0]        txsynchd5,
   input [1 : 0]        txsynchd6,
   input [1 : 0]        txsynchd7,
   input [17 : 0]       currentcoeff0,
   input [17 : 0]       currentcoeff1,
   input [17 : 0]       currentcoeff2,
   input [17 : 0]       currentcoeff3,
   input [17 : 0]       currentcoeff4,
   input [17 : 0]       currentcoeff5,
   input [17 : 0]       currentcoeff6,
   input [17 : 0]       currentcoeff7,
   input [2 : 0]        currentrxpreset0,
   input [2 : 0]        currentrxpreset1,
   input [2 : 0]        currentrxpreset2,
   input [2 : 0]        currentrxpreset3,
   input [2 : 0]        currentrxpreset4,
   input [2 : 0]        currentrxpreset5,
   input [2 : 0]        currentrxpreset6,
   input [2 : 0]        currentrxpreset7,

   // serial interface
   output    rx_in0,
   output    rx_in1,
   output    rx_in2,
   output    rx_in3,
   output    rx_in4,
   output    rx_in5,
   output    rx_in6,
   output    rx_in7,

   input     tx_out0,
   input     tx_out1,
   input     tx_out2,
   input     tx_out3,
   input     tx_out4,
   input     tx_out5,
   input     tx_out6,
   input     tx_out7

   );

localparam IS_DUT_ROOTPORT= (port_type_hwtcl == "Root port")?1:0;
localparam LANES=(lane_mask_hwtcl=="x1")?1:(lane_mask_hwtcl=="x2")?2:(lane_mask_hwtcl=="x4")?4:8;

initial begin
      $display("INFO:         altpcie_a10_tbed_hwtcl::---------------------------------------------------------------------------------------------");
   if (serial_sim_hwtcl==1) begin
      $display("INFO:         altpcie_a10_tbed_hwtcl:: Running serial simulation - include PCI Express transceiver model");
   end
   else begin
      $display("INFO:         altpcie_a10_tbed_hwtcl:: Running PIPE simulation - bypass PCI Express transceiver model - use 32-bit pipe interface");
   end
      $display("INFO:         altpcie_a10_tbed_hwtcl::---------------------------------------------------------------------------------------------");
end

wire sim_pipe_clk250_out;
wire sim_pipe_clk500_out;
wire open_locked;
wire open_fbclkout;
wire [7:0] serdes_rx_serial_data;
wire [7:0] serdes_tx_serial_data;
wire rx_in_int0;
wire rx_in_int1;
wire rx_in_int2;
wire rx_in_int3;
wire rx_in_int4;
wire rx_in_int5;
wire rx_in_int6;
wire rx_in_int7;

assign pin_perst = npor;
assign simu_mode_pipe   =  (serial_sim_hwtcl==1)?1'b0:1'b1;

// Clock for for pipe simulation
// sim_pipe_pclk_in
generic_pll #        ( .reference_clock_frequency(pll_refclk_freq_hwtcl), .output_clock_frequency("250.0 MHz") )
  refclk_to_250mhz      ( .refclk(refclk), .outclk(sim_pipe_clk250_out), .locked(open_locked),    .fboutclk(open_fbclkout), .rst(~npor), .fbclk(fbclkout));

generic_pll #        ( .reference_clock_frequency(pll_refclk_freq_hwtcl), .output_clock_frequency("500.0 MHz") )
  pll_100mhz_to_500mhz      ( .refclk(refclk), .outclk(sim_pipe_clk500_out), .locked(open_locked),    .fboutclk(open_fbclkout), .rst(~npor), .fbclk(fbclkout));

generate begin : g_ser_pipen
   if (serial_sim_hwtcl==1'b1) begin : g_sim_ser // Serial simulation
      assign sim_pipe_pclk_in    = 1'b0;
      assign rx_in0              = rx_in_int0;
      assign rx_in1              = rx_in_int1;
      assign rx_in2              = rx_in_int2;
      assign rx_in3              = rx_in_int3;
      assign rx_in4              = rx_in_int4;
      assign rx_in5              = rx_in_int5;
      assign rx_in6              = rx_in_int6;
      assign rx_in7              = rx_in_int7;
   end
   else begin : p_sim_pipe

      altpcietb_pipe32_driver # (
         .LANES(LANES),
         .gen123_lane_rate_mode((gen123_lane_rate_mode_hwtcl=="Gen3 (8.0 Gbps)")?"gen1_gen2_gen3":
                                (gen123_lane_rate_mode_hwtcl=="Gen2 (5.0 Gbps)")?"gen1_gen2":"gen1"),
         .pll_refclk_freq( "100 MHz")
      ) altpcietb_pipe32_driver (
         .refclk(refclk),
         .npor(npor),
         .serdes_rx_serial_data(serdes_rx_serial_data[LANES-1:0]),
         .serdes_tx_serial_data(serdes_tx_serial_data[LANES-1:0])
      );

      assign sim_pipe_pclk_in = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.pipe_pclk;
      assign rx_in0           = 1'b0;
      assign rx_in1           = 1'b0;
      assign rx_in2           = 1'b0;
      assign rx_in3           = 1'b0;
      assign rx_in4           = 1'b0;
      assign rx_in5           = 1'b0;
      assign rx_in6           = 1'b0;
      assign rx_in7           = 1'b0;
      assign serdes_rx_serial_data = { rx_in_int7,
                                       rx_in_int6,
                                       rx_in_int5,
                                       rx_in_int4,
                                       rx_in_int3,
                                       rx_in_int2,
                                       rx_in_int1,
                                       rx_in_int0 };
      always @ (*) begin
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rate0[1:0]           = rate0[1:0]           ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdata0[31 :0  ]     = txdata0[31 :0  ]     ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdatak0[ 3: 0]      = txdatak0[ 3: 0]      ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txcompl0             = txcompl0             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txelecidle0          = txelecidle0          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdeemph0            = txdeemph0            ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txswing0             = txswing0             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.currentcoeff0[17:0]  = currentcoeff0[17:0]  ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.currentrxpreset0[2:0]= currentrxpreset0[2:0];
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdataskip0          = txdataskip0          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txblkst0             = txblkst0             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txsynchd0[1:0]       = txsynchd0[1:0]       ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txmargin0[ 2: 0]     = txmargin0[ 2: 0]     ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.powerdown0[ 1 : 0]   = powerdown0[ 1 : 0]   ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxpolarity0          = rxpolarity0          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdetectrx0          = txdetectrx0          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.eidleinfersel0[2:0]  = eidleinfersel0[2:0]  ;

           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rate1[1:0]           = rate1[1:0]           ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdata1[31 :0  ]     = txdata1[31 :0  ]     ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdatak1[ 3: 0]      = txdatak1[ 3: 0]      ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txcompl1             = txcompl1             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txelecidle1          = txelecidle1          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdeemph1            = txdeemph1            ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txswing1             = txswing1             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.currentcoeff1[17:0]  = currentcoeff1[17:0]  ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.currentrxpreset1[2:0]= currentrxpreset1[2:0];
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdataskip1          = txdataskip1          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txblkst1             = txblkst1             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txsynchd1[1:0]       = txsynchd1[1:0]       ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txmargin1[ 2: 0]     = txmargin1[ 2: 0]     ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.powerdown1[ 1 : 0]   = powerdown1[ 1 : 0]   ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxpolarity1          = rxpolarity1          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdetectrx1          = txdetectrx1          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.eidleinfersel1[2:0]  = eidleinfersel1[2:0]  ;

           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rate2[1:0]           = rate2[1:0]           ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdata2[31 :0  ]     = txdata2[31 :0  ]     ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdatak2[ 3: 0]      = txdatak2[ 3: 0]      ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txcompl2             = txcompl2             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txelecidle2          = txelecidle2          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdeemph2            = txdeemph2            ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txswing2             = txswing2             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.currentcoeff2[17:0]  = currentcoeff2[17:0]  ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.currentrxpreset2[2:0]= currentrxpreset2[2:0];
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdataskip2          = txdataskip2          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txblkst2             = txblkst2             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txsynchd2[1:0]       = txsynchd2[1:0]       ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txmargin2[ 2: 0]     = txmargin2[ 2: 0]     ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.powerdown2[ 1 : 0]   = powerdown2[ 1 : 0]   ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxpolarity2          = rxpolarity2          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdetectrx2          = txdetectrx2          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.eidleinfersel2[2:0]  = eidleinfersel2[2:0]  ;

           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rate3[1:0]           = rate3[1:0]           ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdata3[31 :0  ]     = txdata3[31 :0  ]     ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdatak3[ 3: 0]      = txdatak3[ 3: 0]      ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txcompl3             = txcompl3             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txelecidle3          = txelecidle3          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdeemph3            = txdeemph3            ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txswing3             = txswing3             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.currentcoeff3[17:0]  = currentcoeff3[17:0]  ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.currentrxpreset3[2:0]= currentrxpreset3[2:0];
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdataskip3          = txdataskip3          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txblkst3             = txblkst3             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txsynchd3[1:0]       = txsynchd3[1:0]       ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txmargin3[ 2: 0]     = txmargin3[ 2: 0]     ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.powerdown3[ 1 : 0]   = powerdown3[ 1 : 0]   ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxpolarity3          = rxpolarity3          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdetectrx3          = txdetectrx3          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.eidleinfersel3[2:0]  = eidleinfersel3[2:0]  ;

           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rate4[1:0]           = rate4[1:0]           ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdata4[31 :0  ]     = txdata4[31 :0  ]     ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdatak4[ 3: 0]      = txdatak4[ 3: 0]      ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txcompl4             = txcompl4             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txelecidle4          = txelecidle4          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdeemph4            = txdeemph4            ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txswing4             = txswing4             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.currentcoeff4[17:0]  = currentcoeff4[17:0]  ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.currentrxpreset4[2:0]= currentrxpreset4[2:0];
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdataskip4          = txdataskip4          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txblkst4             = txblkst4             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txsynchd4[1:0]       = txsynchd4[1:0]       ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txmargin4[ 2: 0]     = txmargin4[ 2: 0]     ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.powerdown4[ 1 : 0]   = powerdown4[ 1 : 0]   ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxpolarity4          = rxpolarity4          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdetectrx4          = txdetectrx4          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.eidleinfersel4[2:0]  = eidleinfersel4[2:0]  ;

           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rate5[1:0]           = rate5[1:0]           ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdata5[31 :0  ]     = txdata5[31 :0  ]     ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdatak5[ 3: 0]      = txdatak5[ 3: 0]      ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txcompl5             = txcompl5             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txelecidle5          = txelecidle5          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdeemph5            = txdeemph5            ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txswing5             = txswing5             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.currentcoeff5[17:0]  = currentcoeff5[17:0]  ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.currentrxpreset5[2:0]= currentrxpreset5[2:0];
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdataskip5          = txdataskip5          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txblkst5             = txblkst5             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txsynchd5[1:0]       = txsynchd5[1:0]       ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txmargin5[ 2: 0]     = txmargin5[ 2: 0]     ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.powerdown5[ 1 : 0]   = powerdown5[ 1 : 0]   ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxpolarity5          = rxpolarity5          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdetectrx5          = txdetectrx5          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.eidleinfersel5[2:0]  = eidleinfersel5[2:0]  ;

           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rate6[1:0]           = rate6[1:0]           ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdata6[31 :0  ]     = txdata6[31 :0  ]     ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdatak6[ 3: 0]      = txdatak6[ 3: 0]      ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txcompl6             = txcompl6             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txelecidle6          = txelecidle6          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdeemph6            = txdeemph6            ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txswing6             = txswing6             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.currentcoeff6[17:0]  = currentcoeff6[17:0]  ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.currentrxpreset6[2:0]= currentrxpreset6[2:0];
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdataskip6          = txdataskip6          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txblkst6             = txblkst6             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txsynchd6[1:0]       = txsynchd6[1:0]       ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txmargin6[ 2: 0]     = txmargin6[ 2: 0]     ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.powerdown6[ 1 : 0]   = powerdown6[ 1 : 0]   ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxpolarity6          = rxpolarity6          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdetectrx6          = txdetectrx6          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.eidleinfersel6[2:0]  = eidleinfersel6[2:0]  ;

           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rate7[1:0]           = rate7[1:0]           ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdata7[31 :0  ]     = txdata7[31 :0  ]     ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdatak7[ 3: 0]      = txdatak7[ 3: 0]      ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txcompl7             = txcompl7             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txelecidle7          = txelecidle7          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdeemph7            = txdeemph7            ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txswing7             = txswing7             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.currentcoeff7[17:0]  = currentcoeff7[17:0]  ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.currentrxpreset7[2:0]= currentrxpreset7[2:0];
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdataskip7          = txdataskip7          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txblkst7             = txblkst7             ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txsynchd7[1:0]       = txsynchd7[1:0]       ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txmargin7[ 2: 0]     = txmargin7[ 2: 0]     ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.powerdown7[ 1 : 0]   = powerdown7[ 1 : 0]   ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxpolarity7          = rxpolarity7          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.txdetectrx7          = txdetectrx7          ;
           altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.eidleinfersel7[2:0]  = eidleinfersel7[2:0]  ;
        end
        //PIPE RX
        assign rxdata0[31:0]     = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdata0[31:0] ;
        assign rxdatak0[3:0]     = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdatak0[3:0] ;
        assign rxvalid0          = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxvalid0      ;
        assign rxelecidle0       = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxelecidle0   ;
        assign phystatus0        = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.phystatus0    ;
        assign rxstatus0[2:0]    = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxstatus0[2:0];
        assign rxdataskip0       = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdataskip0   ;
        assign rxblkst0          = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxblkst0      ;
        assign rxsynchd0[1:0]    = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxsynchd0[1:0];

        assign rxdata1[31:0]     = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdata1[31:0] ;
        assign rxdatak1[3:0]     = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdatak1[3:0] ;
        assign rxvalid1          = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxvalid1      ;
        assign rxelecidle1       = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxelecidle1   ;
        assign phystatus1        = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.phystatus1    ;
        assign rxstatus1[2:0]    = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxstatus1[2:0];
        assign rxdataskip1       = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdataskip1   ;
        assign rxblkst1          = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxblkst1      ;
        assign rxsynchd1[1:0]    = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxsynchd1[1:0];

        assign rxdata2[31:0]     = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdata2[31:0] ;
        assign rxdatak2[3:0]     = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdatak2[3:0] ;
        assign rxvalid2          = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxvalid2      ;
        assign rxelecidle2       = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxelecidle2   ;
        assign phystatus2        = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.phystatus2    ;
        assign rxstatus2[2:0]    = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxstatus2[2:0];
        assign rxdataskip2       = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdataskip2   ;
        assign rxblkst2          = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxblkst2      ;
        assign rxsynchd2[1:0]    = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxsynchd2[1:0];

        assign rxdata3[31:0]     = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdata3[31:0] ;
        assign rxdatak3[3:0]     = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdatak3[3:0] ;
        assign rxvalid3          = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxvalid3      ;
        assign rxelecidle3       = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxelecidle3   ;
        assign phystatus3        = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.phystatus3    ;
        assign rxstatus3[2:0]    = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxstatus3[2:0];
        assign rxdataskip3       = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdataskip3   ;
        assign rxblkst3          = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxblkst3      ;
        assign rxsynchd3[1:0]    = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxsynchd3[1:0];

        assign rxdata4[31:0]     = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdata4[31:0] ;
        assign rxdatak4[3:0]     = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdatak4[3:0] ;
        assign rxvalid4          = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxvalid4      ;
        assign rxelecidle4       = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxelecidle4   ;
        assign phystatus4        = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.phystatus4    ;
        assign rxstatus4[2:0]    = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxstatus4[2:0];
        assign rxdataskip4       = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdataskip4   ;
        assign rxblkst4          = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxblkst4      ;
        assign rxsynchd4[1:0]    = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxsynchd4[1:0];

        assign rxdata5[31:0]     = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdata5[31:0] ;
        assign rxdatak5[3:0]     = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdatak5[3:0] ;
        assign rxvalid5          = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxvalid5      ;
        assign rxelecidle5       = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxelecidle5   ;
        assign phystatus5        = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.phystatus5    ;
        assign rxstatus5[2:0]    = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxstatus5[2:0];
        assign rxdataskip5       = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdataskip5   ;
        assign rxblkst5          = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxblkst5      ;
        assign rxsynchd5[1:0]    = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxsynchd5[1:0];

        assign rxdata6[31:0]     = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdata6[31:0] ;
        assign rxdatak6[3:0]     = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdatak6[3:0] ;
        assign rxvalid6          = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxvalid6      ;
        assign rxelecidle6       = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxelecidle6   ;
        assign phystatus6        = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.phystatus6    ;
        assign rxstatus6[2:0]    = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxstatus6[2:0];
        assign rxdataskip6       = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdataskip6   ;
        assign rxblkst6          = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxblkst6      ;
        assign rxsynchd6[1:0]    = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxsynchd6[1:0];

        assign rxdata7[31:0]     = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdata7[31:0] ;
        assign rxdatak7[3:0]     = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdatak7[3:0] ;
        assign rxvalid7          = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxvalid7      ;
        assign rxelecidle7       = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxelecidle7   ;
        assign phystatus7        = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.phystatus7    ;
        assign rxstatus7[2:0]    = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxstatus7[2:0];
        assign rxdataskip7       = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxdataskip7   ;
        assign rxblkst7          = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxblkst7      ;
        assign rxsynchd7[1:0]    = altpcietb_pipe32_driver.altpcietb_pipe32_hip_interface.rxsynchd7[1:0];
   end //if (serial_sim_hwtcl==1'b1) begin : g_sim_ser // Serial simulation
end // generate begin : g_xcvr
endgenerate

generate begin : g_bfm
   if (IS_DUT_ROOTPORT == 0) begin: p_dut_ep
   // RP BFM
      altpcietb_bfm_top_rp  # (
         .pll_refclk_freq_hwtcl       (pll_refclk_freq_hwtcl      ),
         .gen123_lane_rate_mode_hwtcl (gen123_lane_rate_mode_hwtcl),
         .lane_mask_hwtcl             (lane_mask_hwtcl            ),
         .apps_type_hwtcl             (apps_type_hwtcl            ),
         .serial_sim_hwtcl            (1                          )
      ) altpcietb_bfm_top_rp (
         .refclk                   (refclk                    ),
         .npor                     (npor                      ),
         .sim_ltssmstate           (sim_ltssmstate            ),
         .test_in                  (test_in                   ),
         .sim_pipe_rate            (sim_pipe_rate             ),
         .sim_pipe_pclk_in         (1'b0                      ),
         .sim_pipe_clk250_out      (sim_pipe_clk250_out       ),
         .sim_pipe_clk500_out      (sim_pipe_clk500_out       ),
         // serial interface
         .rx_in0                   (rx_in_int0),
         .rx_in1                   (rx_in_int1),
         .rx_in2                   (rx_in_int2),
         .rx_in3                   (rx_in_int3),
         .rx_in4                   (rx_in_int4),
         .rx_in5                   (rx_in_int5),
         .rx_in6                   (rx_in_int6),
         .rx_in7                   (rx_in_int7),
         .tx_out0                  ((serial_sim_hwtcl==1'b0)?serdes_tx_serial_data[0]:tx_out0),
         .tx_out1                  ((serial_sim_hwtcl==1'b0)?serdes_tx_serial_data[1]:tx_out1),
         .tx_out2                  ((serial_sim_hwtcl==1'b0)?serdes_tx_serial_data[2]:tx_out2),
         .tx_out3                  ((serial_sim_hwtcl==1'b0)?serdes_tx_serial_data[3]:tx_out3),
         .tx_out4                  ((serial_sim_hwtcl==1'b0)?serdes_tx_serial_data[4]:tx_out4),
         .tx_out5                  ((serial_sim_hwtcl==1'b0)?serdes_tx_serial_data[5]:tx_out5),
         .tx_out6                  ((serial_sim_hwtcl==1'b0)?serdes_tx_serial_data[6]:tx_out6),
         .tx_out7                  ((serial_sim_hwtcl==1'b0)?serdes_tx_serial_data[7]:tx_out7)
         );
   end
   else begin : p_dut_rp
   // EP BFM
      altpcietb_bfm_top_ep  # (
         .pll_refclk_freq_hwtcl       (pll_refclk_freq_hwtcl      ),
         .gen123_lane_rate_mode_hwtcl (gen123_lane_rate_mode_hwtcl),
         .lane_mask_hwtcl             (lane_mask_hwtcl            ),
         .apps_type_hwtcl             (apps_type_hwtcl            ),
         .serial_sim_hwtcl            (1                          )
      ) altpcietb_bfm_top_ep (
         .refclk                   (refclk                    ),
         .npor                     (npor                      ),
         .test_in                  (test_in                   ),
         .sim_pipe_rate            (sim_pipe_rate             ),
         .sim_pipe_pclk_in         (sim_pipe_pclk_in          ),
         .sim_pipe_clk250_out      (sim_pipe_clk250_out       ),
         .sim_pipe_clk500_out      (sim_pipe_clk500_out       ),
         .sim_ltssmstate           (sim_ltssmstate            ),
         // serial interface
         .rx_in0                   (rx_in_int0),
         .rx_in1                   (rx_in_int1),
         .rx_in2                   (rx_in_int2),
         .rx_in3                   (rx_in_int3),
         .rx_in4                   (rx_in_int4),
         .rx_in5                   (rx_in_int5),
         .rx_in6                   (rx_in_int6),
         .rx_in7                   (rx_in_int7),
         .tx_out0                  ((serial_sim_hwtcl==1'b0)?serdes_tx_serial_data[0]:tx_out0),
         .tx_out1                  ((serial_sim_hwtcl==1'b0)?serdes_tx_serial_data[1]:tx_out1),
         .tx_out2                  ((serial_sim_hwtcl==1'b0)?serdes_tx_serial_data[2]:tx_out2),
         .tx_out3                  ((serial_sim_hwtcl==1'b0)?serdes_tx_serial_data[3]:tx_out3),
         .tx_out4                  ((serial_sim_hwtcl==1'b0)?serdes_tx_serial_data[4]:tx_out4),
         .tx_out5                  ((serial_sim_hwtcl==1'b0)?serdes_tx_serial_data[5]:tx_out5),
         .tx_out6                  ((serial_sim_hwtcl==1'b0)?serdes_tx_serial_data[6]:tx_out6),
         .tx_out7                  ((serial_sim_hwtcl==1'b0)?serdes_tx_serial_data[7]:tx_out7)
         );
   end //if (IS_DUT_ROOTPORT == 0) begin: p_dut_ep
end // generate begin : g_bfm
endgenerate

endmodule
