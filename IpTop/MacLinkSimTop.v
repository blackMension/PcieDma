module MacInterLinkSim(
  //clock & reset
  input                         csrClock              ,
  input                         csrRst                ,
  input                         clock644M             ,
  output                        benchOutTxRst         ,
  output                        benchOutRxRst         ,
  output                        rtlOutTxRst           ,
  output                        rtlOutRxRst           ,

  output                        benchOutClk156        ,
  output                        rtlOutClk156          ,


  input                         rtlCorePllLocked      ,
  input                         benchCorePllLocked    ,

  input                         benchTxRstN           ,
  input                         benchRxRstN           ,
  input                         rtlTxRstN             ,
  input                         rtlRxRstN             ,

  input                         benchTxSerialClk      ,
  input                         benchTxPllLocked      ,
  input                         rtlTxSerialClk        ,
  input                         rtlTxPllLocked        ,
  //Avalon ST
   input                         bench_rx_ready        ,
   output                        bench_rx_startofpacket,
   output                        bench_rx_valid        ,
   output                        bench_rx_endofpacket  ,
   output   [64 - 1:0]           bench_rx_data         ,
   output   [3 - 1:0]            bench_rx_empty        ,
   output   [6 - 1:0]            bench_rx_error        ,

   output                        bench_tx_ready        ,
   input                         bench_tx_startofpacket,
   input                         bench_tx_valid        ,
   input                         bench_tx_endofpacket  ,
   input   [64 - 1:0]            bench_tx_data         ,
   input   [3 - 1:0]             bench_tx_empty        ,
   input                         bench_tx_error        ,

   input                        rtl_rx_ready        ,
   output                       rtl_rx_startofpacket,
   output                       rtl_rx_valid        ,
   output                       rtl_rx_endofpacket  ,
   output [64 - 1:0]            rtl_rx_data         ,
   output [3 - 1:0]             rtl_rx_empty        ,
   output [6 - 1:0]             rtl_rx_error        ,

   output                       rtl_tx_ready        ,
   input                        rtl_tx_startofpacket,
   input                        rtl_tx_valid        ,
   input                        rtl_tx_endofpacket  ,
   input  [64 - 1:0]            rtl_tx_data         ,
   input  [3 - 1:0]             rtl_tx_empty        ,
   input                        rtl_tx_error        ,
  // Avalon MM reconfig interface
   input                        bench_mac_csr_read       , 
   input                        bench_mac_csr_write      ,  
   input  [31:0]                bench_mac_csr_writedata  ,  
   output [31:0]                bench_mac_csr_readdata   ,  
   input  [9:0]                 bench_mac_csr_address    ,  
   output                       bench_mac_csr_waitrequest,

   input                        bench_phy_csr_read       , 
   input                        bench_phy_csr_write      ,  
   input  [31:0]                bench_phy_csr_writedata  ,  
   output [31:0]                bench_phy_csr_readdata   ,  
   input  [9:0]                 bench_phy_csr_address    ,  
   output                       bench_phy_csr_waitrequest,

   input                        rtl_mac_csr_read       , 
   input                        rtl_mac_csr_write      ,  
   input  [31:0]                rtl_mac_csr_writedata  ,  
   output [31:0]                rtl_mac_csr_readdata   ,  
   input  [9:0]                 rtl_mac_csr_address    ,  
   output                       rtl_mac_csr_waitrequest,

   input                        rtl_phy_csr_read       , 
   input                        rtl_phy_csr_write      ,  
   input  [31:0]                rtl_phy_csr_writedata  ,  
   output [31:0]                rtl_phy_csr_readdata   ,  
   input  [9:0]                 rtl_phy_csr_address    ,  
   output                       rtl_phy_csr_waitrequest


);
wire  benchClock156;
wire  benchClock312;
wire  rtlClock156;
wire  rtlClock312;

wire bench_mac_clk_locked;
wire rtl_mac_clk_locked;

wire tx_serial_data;
wire rx_serial_data;

wire bench_atx_pll_locked;
wire bench_atx_pll_powerdown;
wire bench_tx_serial_clk;

wire rtl_atx_pll_locked;
wire rtl_atx_pll_powerdown;
wire rtl_tx_serial_clk;

assign benchOutClk156 = benchClock156;
assign rtlOutClk156 = rtlClock156;
      altera_pll #(
         .fractional_vco_multiplier   ("false")
         //,.reference_clock_frequency   ("322.265625 MHz")
         ,.reference_clock_frequency   ("644.53125 MHz")
         ,.operation_mode              ("direct")
         ,.number_of_clocks            (2)
         ,.output_clock_frequency0     ("312.5 MHz")
         ,.output_clock_frequency1     ("156.25 MHz")
         ,.pll_type                    ("General")
         ,.pll_subtype                 ("General")
      ) bench_mac_clk_pll (
    //      .refclk                      (pll_refclk[PLL])
          .refclk                      (clock644M)
         ,.rst                         (~benchCorePllLocked)
         ,.outclk                      ({benchClock156, benchClock312})
         ,.locked                      (bench_mac_clk_locked)
         ,.fboutclk                    ()
         ,.fbclk                       (1'b0)
         //synthesis translate_off
         ,.zdbfbclk                    ()
         ,.cascade_out                 ()
         ,.phout                       ()
         ,.clkbad                      ()
         ,.activeclk                   ()
         ,.reconfig_from_pll           ()
         ,.phase_done                  ()
         ,.cclk                        ()
         ,.adjpllin                    ()
         ,.extswitch                   ()
         ,.reconfig_to_pll             ()
         ,.cntsel                      ()
         ,.scanclk                     ()
         ,.updn                        ()
         ,.phase_en                    ()
         ,.refclk1                     ()
         ,.extclk_out                  ()
         ,.loaden                      ()
         ,.lvds_clk                    ()
         ,.num_phase_shifts            ()
         //synthesis translate_on
      );
  atx_pll atx_pll_bench(
        .pll_cal_busy  (),
        .pll_locked    (bench_atx_pll_locked),
        .pll_powerdown (bench_atx_pll_powerdown),
        .pll_refclk0   (clock644M),
        .tx_serial_clk (bench_tx_serial_clk)

  );
   MacPhy uBenchMac(         
       .csr_clk             (csrClock)
      ,.csr_rst_n           (csrRst  )
      ,.tx_rst_n            (bench_mac_clk_locked)//(benchTxRstN)
      ,.rx_rst_n            (bench_mac_clk_locked)//(benchRxRstN)
      ,.o_tx_rst_n          (benchOutTxRst)
      ,.o_rx_rst_n          (benchOutRxRst)
      ,.pll_ref_clk         (clock644M)
      ,.clk_156             (benchClock156)
      ,.clk_312             (benchClock312)
      ,.core_pll_locked     (benchCorePllLocked)
      ,.mac_csr_read        (bench_mac_csr_read       )
      ,.mac_csr_write       (bench_mac_csr_write      )
      ,.mac_csr_writedata   (bench_mac_csr_writedata  )
      ,.mac_csr_readdata    (bench_mac_csr_readdata   )
      ,.mac_csr_address     (bench_mac_csr_address    )
      ,.mac_csr_waitrequest (bench_mac_csr_waitrequest)
      ,.phy_csr_read        (bench_phy_csr_read       )
      ,.phy_csr_write       (bench_phy_csr_write      )
      ,.phy_csr_writedata   (bench_phy_csr_writedata  )
      ,.phy_csr_readdata    (bench_phy_csr_readdata   )
      ,.phy_csr_address     (bench_phy_csr_address    )
      ,.phy_csr_waitrequest (bench_phy_csr_waitrequest)
      // 64bit TX data       
      ,.tx_ready            (bench_tx_ready        )
      ,.tx_startofpacket    (bench_tx_startofpacket)
      ,.tx_valid            (bench_tx_valid        )
      ,.tx_endofpacket      (bench_tx_endofpacket  )
      ,.tx_data             (bench_tx_data         )
      ,.tx_empty            (bench_tx_empty        )
      ,.tx_error            (bench_tx_error        )
      // 64bit RX data       
      ,.rx_ready            (bench_rx_ready        )
      ,.rx_startofpacket    (bench_rx_startofpacket)
      ,.rx_valid            (bench_rx_valid        )
      ,.rx_endofpacket      (bench_rx_endofpacket  )
      ,.rx_data             (bench_rx_data         )
      ,.rx_empty            (bench_rx_empty        )
      ,.rx_error            (bench_rx_error        )
      ,.pause_data          (1'b0)
      ,.txstatus_valid      ()
      ,.rxstatus_valid      ()
      ,.block_lock          ()
      // ATX PLL signals     
      ,.tx_pll_locked       (bench_atx_pll_locked)
      ,.tx_serial_clk       (bench_tx_serial_clk)
      ,.pll_powerdown       (bench_atx_pll_powerdown    )
      ,.phy_ready           ()
      ,.tx_serial_data      (tx_serial_data)
      ,.rx_serial_data      (rx_serial_data)
   );                                                  

      altera_pll #(
         .fractional_vco_multiplier   ("false")
         //,.reference_clock_frequency   ("322.265625 MHz")
         ,.reference_clock_frequency   ("644.53125 MHz")
         ,.operation_mode              ("direct")
         ,.number_of_clocks            (2)
         ,.output_clock_frequency0     ("312.5 MHz")
         ,.output_clock_frequency1     ("156.25 MHz")
         ,.pll_type                    ("General")
         ,.pll_subtype                 ("General")
      ) rtl_mac_clk_pll (
    //      .refclk                      (pll_refclk[PLL])
          .refclk                      (clock644M)
         ,.rst                         (~rtlCorePllLocked)
         ,.outclk                      ({rtlClock156, rtlClock312})
         ,.locked                      (rtl_mac_clk_locked)
         ,.fboutclk                    ()
         ,.fbclk                       (1'b0)
         //synthesis translate_off
         ,.zdbfbclk                    ()
         ,.cascade_out                 ()
         ,.phout                       ()
         ,.clkbad                      ()
         ,.activeclk                   ()
         ,.reconfig_from_pll           ()
         ,.phase_done                  ()
         ,.cclk                        ()
         ,.adjpllin                    ()
         ,.extswitch                   ()
         ,.reconfig_to_pll             ()
         ,.cntsel                      ()
         ,.scanclk                     ()
         ,.updn                        ()
         ,.phase_en                    ()
         ,.refclk1                     ()
         ,.extclk_out                  ()
         ,.loaden                      ()
         ,.lvds_clk                    ()
         ,.num_phase_shifts            ()
         //synthesis translate_on
      );
  atx_pll atx_pll_rtl(
        .pll_cal_busy  (),
        .pll_locked    (rtl_atx_pll_locked),
        .pll_powerdown (rtl_atx_pll_powerdown),
        .pll_refclk0   (clock644M),
        .tx_serial_clk (rtl_tx_serial_clk)

  );
   MacPhy uRtlMac(         
       .csr_clk             (csrClock)
      ,.csr_rst_n           (csrRst  )
      ,.tx_rst_n            (rtl_mac_clk_locked)//(rtlTxRstN)
      ,.rx_rst_n            (rtl_mac_clk_locked)//(rtlRxRstN)
      ,.o_tx_rst_n          (rtlOutTxRst)
      ,.o_rx_rst_n          (rtlOutRxRst)
      ,.pll_ref_clk         (clock644M)
      ,.clk_156             (rtlClock156)
      ,.clk_312             (rtlClock312)
      ,.core_pll_locked     (rtlCorePllLocked)
      ,.mac_csr_read        (rtl_mac_csr_read       )
      ,.mac_csr_write       (rtl_mac_csr_write      )
      ,.mac_csr_writedata   (rtl_mac_csr_writedata  )
      ,.mac_csr_readdata    (rtl_mac_csr_readdata   )
      ,.mac_csr_address     (rtl_mac_csr_address    )
      ,.mac_csr_waitrequest (rtl_mac_csr_waitrequest)
      ,.phy_csr_read        (rtl_phy_csr_read       )
      ,.phy_csr_write       (rtl_phy_csr_write      )
      ,.phy_csr_writedata   (rtl_phy_csr_writedata  )
      ,.phy_csr_readdata    (rtl_phy_csr_readdata   )
      ,.phy_csr_address     (rtl_phy_csr_address    )
      ,.phy_csr_waitrequest (rtl_phy_csr_waitrequest)
      // 64bit TX data       
      ,.tx_ready            (rtl_tx_ready        )
      ,.tx_startofpacket    (rtl_tx_startofpacket)
      ,.tx_valid            (rtl_tx_valid        )
      ,.tx_endofpacket      (rtl_tx_endofpacket  )
      ,.tx_data             (rtl_tx_data         )
      ,.tx_empty            (rtl_tx_empty        )
      ,.tx_error            (rtl_tx_error        )
      // 64bit RX data       
      ,.rx_ready            (rtl_rx_ready        )
      ,.rx_startofpacket    (rtl_rx_startofpacket)
      ,.rx_valid            (rtl_rx_valid        )
      ,.rx_endofpacket      (rtl_rx_endofpacket  )
      ,.rx_data             (rtl_rx_data         )
      ,.rx_empty            (rtl_rx_empty        )
      ,.rx_error            (rtl_rx_error        )
      ,.pause_data          (1'b0)
      ,.txstatus_valid      ()
      ,.rxstatus_valid      ()
      ,.block_lock          ()
      // ATX PLL signals     
      ,.tx_pll_locked       (rtl_atx_pll_locked)
      ,.tx_serial_clk       (rtl_tx_serial_clk)
      ,.pll_powerdown       (rtl_atx_pll_powerdown)
      ,.phy_ready           ()
      ,.tx_serial_data      (rx_serial_data)
      ,.rx_serial_data      (tx_serial_data)
   );         


   wire [255:0] A[7:0];
   assign A[0] = 256'h1;  
   wire [255:0] B = A[0];                                       
endmodule
