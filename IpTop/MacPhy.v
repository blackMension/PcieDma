module MacPhy (

// clock and reset
    input         csr_clk,
    input         csr_rst_n,
    input         tx_rst_n,
    input         rx_rst_n,
    output        o_tx_rst_n,
    output        o_rx_rst_n,
    input         pll_ref_clk,

    input         clk_156,
    input         clk_312,

    input         core_pll_locked,

    // Avalon-ST TX interface
    input          tx_startofpacket,
    input          tx_endofpacket,
    input          tx_valid,
    input [63:0]   tx_data,
    input [2:0]    tx_empty,
    input          tx_error,
    output         tx_ready,

    // Avalon-ST RX interface
    output        rx_startofpacket,
    output        rx_endofpacket,
    output        rx_valid,
    output [63:0] rx_data,
    output [2:0]  rx_empty,
    input         rx_ready,
    output [5:0]  rx_error,

    // additional Avalon-ST interface signals
    input  [1:0]    pause_data,
    output         txstatus_valid,
    output         rxstatus_valid,

    // reset controller
    output         phy_ready,
    output         block_lock,

    // ATX PLL signals
    input          tx_pll_locked,
    input          tx_serial_clk,
    output         pll_powerdown,

    output         tx_serial_data,
    input           rx_serial_data,

    // MAC CSR signals
    input           mac_csr_read,
    input           mac_csr_write,
    output [31:0]   mac_csr_readdata,
    input  [31:0]   mac_csr_writedata,
    output          mac_csr_waitrequest,
    input  [9:0]    mac_csr_address,

    // PHY reconfig signals
    input          phy_csr_read,
    input          phy_csr_write,
    output [31:0]  phy_csr_readdata,
    input  [31:0]  phy_csr_writedata,
    output         phy_csr_waitrequest,
    input  [9:0]   phy_csr_address

);

    // XGMII signals
    wire [7:0]      xgmii_tx_control;
    wire [63:0]     xgmii_tx_data;
    wire [71:0]     xgmii_tx;

    wire [7:0]      xgmii_rx_control;
    wire [63:0]     xgmii_rx_data;
    wire [71:0]     xgmii_rx;

    // Reset controller signals
    wire            tx_analogreset;
    wire            tx_digitalreset;
    wire            rx_analogreset;
    wire            rx_digitalreset;
    wire            rx_is_lockedtodata;

    wire            tx_cal_busy;
    wire            rx_cal_busy;

    wire            rst_ctrl_csr_rst_n;
    wire            rst_ctrl_tx_rst_n;
    wire            rst_ctrl_rx_rst_n;

    // PHY status signals
    wire            phy_tx_ready;
    wire            phy_rx_ready;

    assign phy_ready = phy_tx_ready & phy_rx_ready;

    //
    // XGMII
    //
     assign xgmii_tx_data = {
        xgmii_tx[70:63],
        xgmii_tx[61:54],
        xgmii_tx[52:45],
        xgmii_tx[43:36],
        xgmii_tx[34:27],
        xgmii_tx[25:18],
        xgmii_tx[16:9],
        xgmii_tx[7:0]
     };

     assign xgmii_tx_control = {
        xgmii_tx[71],
        xgmii_tx[62],
        xgmii_tx[53],
        xgmii_tx[44],
        xgmii_tx[35],
        xgmii_tx[26],
        xgmii_tx[17],
        xgmii_tx[8]
     };

     assign xgmii_rx = {
        xgmii_rx_control[7], xgmii_rx_data[63:56],
        xgmii_rx_control[6], xgmii_rx_data[55:48],
        xgmii_rx_control[5], xgmii_rx_data[47:40],
        xgmii_rx_control[4], xgmii_rx_data[39:32],
        xgmii_rx_control[3], xgmii_rx_data[31:24],
        xgmii_rx_control[2], xgmii_rx_data[23:16],
        xgmii_rx_control[1], xgmii_rx_data[15:8],
        xgmii_rx_control[0], xgmii_rx_data[7:0]
     };

    //------------------------------------------------------------------------------
    // Instantiate the MAC IP.
    //------------------------------------------------------------------------------

    XG
    mac_inst (
        .csr_read                           (mac_csr_read),
        .csr_write                          (mac_csr_write),
        .csr_writedata                      (mac_csr_writedata),
        .csr_readdata                       (mac_csr_readdata),
        .csr_waitrequest                    (mac_csr_waitrequest),
        .csr_address                        (mac_csr_address),
        .csr_clk                            (csr_clk),
        .csr_rst_n                          (rst_ctrl_csr_rst_n),
        //.csr_rst_n                          (1'b1),
        .tx_rst_n                           (rst_ctrl_tx_rst_n),
        //.tx_rst_n                           (1'b1),
        .rx_rst_n                           (rst_ctrl_rx_rst_n),
        //.rx_rst_n                           (1'b1),
        .avalon_st_tx_startofpacket         (tx_startofpacket),
        .avalon_st_tx_endofpacket           (tx_endofpacket),
        .avalon_st_tx_valid                 (tx_valid),
        .avalon_st_tx_data                  (tx_data),
        .avalon_st_tx_empty                 (tx_empty),
        .avalon_st_tx_error                 (tx_error),
        .avalon_st_tx_ready                 (tx_ready),
        .avalon_st_pause_data               (pause_data),
        .avalon_st_txstatus_valid           (txstatus_valid),
        .avalon_st_txstatus_data            (),
        .avalon_st_txstatus_error           (),
        .link_fault_status_xgmii_rx_data    (),
        .avalon_st_rx_data                  (rx_data),
        .avalon_st_rx_startofpacket         (rx_startofpacket),
        .avalon_st_rx_valid                 (rx_valid),
        .avalon_st_rx_empty                 (rx_empty),
        .avalon_st_rx_error                 (rx_error),
        .avalon_st_rx_ready                 (rx_ready),
        .avalon_st_rx_endofpacket           (rx_endofpacket),
        .avalon_st_rxstatus_valid           (rxstatus_valid),
        .avalon_st_rxstatus_data            (),
        .avalon_st_rxstatus_error           (),

        .rx_156_25_clk                      (clk_156),
        .rx_312_5_clk                       (clk_312),
        .tx_156_25_clk                      (clk_156),
        .tx_312_5_clk                       (clk_312),
        //.xgmii_rx_control                   (xgmii_rx_control),
        .xgmii_rx                      (xgmii_rx),
        //.xgmii_tx_control                   (xgmii_tx_control),
        .xgmii_tx                      (xgmii_tx)
    );

    //------------------------------------------------------------------------------
    // Instantiate the Phy IP and reset controller.
    //------------------------------------------------------------------------------

    Phy
    a10_10g_phy_inst (

        .tx_analogreset             (tx_analogreset),
        .tx_digitalreset            (tx_digitalreset),
        .rx_analogreset             (rx_analogreset),
        .rx_digitalreset            (rx_digitalreset),
        .tx_cal_busy                (tx_cal_busy),
        .rx_cal_busy                (rx_cal_busy),
        .tx_serial_clk0             (tx_serial_clk),
        .rx_cdr_refclk0             (pll_ref_clk),
        .tx_serial_data             (tx_serial_data),
        .rx_serial_data             (rx_serial_data),
        .rx_is_lockedtoref          (),
        .rx_is_lockedtodata         (rx_is_lockedtodata),
        .tx_coreclkin               (clk_156),
        .rx_coreclkin               (clk_156),
        .tx_clkout                  (),
        .rx_clkout                  (),
        .tx_parallel_data           (xgmii_tx_data),
        .rx_parallel_data           (xgmii_rx_data),
        .tx_control                 (xgmii_tx_control),
        .tx_err_ins                 (1'b0),
        .unused_tx_parallel_data    (64'b0),
        .unused_tx_control          (9'b0),
        .rx_control                 (xgmii_rx_control),
        .tx_enh_data_valid          (),
        .rx_enh_data_valid          (),
        .rx_enh_highber             (),
        .rx_enh_blk_lock            (block_lock),
        .unused_rx_parallel_data    (),
        .unused_rx_control          (),
        .reconfig_clk               (csr_clk),
        .reconfig_reset             (~rst_ctrl_csr_rst_n),
        .reconfig_write             (phy_csr_write),
        .reconfig_read              (phy_csr_read),
        .reconfig_address           (phy_csr_address),
        .reconfig_writedata         (phy_csr_writedata),
        .reconfig_readdata          (phy_csr_readdata),
        .reconfig_waitrequest       (phy_csr_waitrequest),
        .rx_pma_div_clkout          (),
        .tx_pma_div_clkout          (),
        .rx_enh_fifo_del            (),
        .rx_enh_fifo_empty          (),
        .rx_enh_fifo_full           (),
        .rx_enh_fifo_insert         (),
        .tx_enh_fifo_empty          (),
        .tx_enh_fifo_full           (),
        .tx_enh_fifo_pempty         (),
        .tx_enh_fifo_pfull          ()

    );

    Phy_rst
    reset_controller_inst(

        .clock              (csr_clk),
        .reset              (~rst_ctrl_csr_rst_n),
        .pll_powerdown      (pll_powerdown),
        .tx_analogreset     (tx_analogreset),
        .tx_digitalreset    (tx_digitalreset),
        .tx_ready           (phy_tx_ready),
        .pll_locked         (tx_pll_locked & core_pll_locked),
        .pll_select         (1'b0),
        .tx_cal_busy        (tx_cal_busy),
        .rx_analogreset     (rx_analogreset),
        .rx_digitalreset    (rx_digitalreset),
        .rx_ready           (phy_rx_ready),
        .rx_is_lockedtodata (rx_is_lockedtodata & core_pll_locked),
        .rx_cal_busy        (rx_cal_busy)

    );

    mac_10g_reset_controller mac_10g_rst_ctrl_inst
    (
         .slowest_mac_clk(csr_clk)//slowest clk from csr_clk, tx_clk and rx_clk
        ,.mac_clk(clk_156)
        ,.mac_clk_locked(core_pll_locked)
        ,.i_csr_rst_n(csr_rst_n)
        ,.i_tx_rst_n (tx_rst_n)
        ,.i_rx_rst_n (rx_rst_n)
        ,.o_csr_rst_n(rst_ctrl_csr_rst_n)
        ,.o_tx_rst_n_sync_to_mac_clk(rst_ctrl_tx_rst_n)
        ,.o_rx_rst_n_sync_to_mac_clk(rst_ctrl_rx_rst_n)
    );

    assign o_tx_rst_n = rst_ctrl_tx_rst_n;
    assign o_rx_rst_n = rst_ctrl_rx_rst_n;

endmodule
