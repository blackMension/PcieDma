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



module altera_eth_top  # (

        parameter NUM_CHANNELS  = 2,
        parameter DEVICE_FAMILY = "Arria 10"

 )(

    input   wire            csr_clk,
    output  wire            core_clk_312,
    input   wire            ref_clk_clk, 

    input   wire            master_reset_n,

    output  wire            sfp0_txdisable,
    output  wire            sfp1_txdisable,
    output  wire            xfp_txdisable,

    output  wire [1:0]      SFPP0_RATE_SEL,
    output  wire [1:0]      SFPP1_RATE_SEL,
    
    // LED
    output  wire [NUM_CHANNELS-1:0]          block_lock_n,
    output  wire [NUM_CHANNELS-1:0]          tx_ready_export_n,
    output  wire [NUM_CHANNELS-1:0]          rx_ready_export_n,
    
    // debug clock
    output  wire            core_clk_156,
    
    output  wire [NUM_CHANNELS-1:0]         tx_serial_data,
    input   wire [NUM_CHANNELS-1:0]         rx_serial_data,

    output  wire             core_pll_locked_n,
    output  wire             atx_pll_locked_n,

    output wire [NUM_CHANNELS-1:0]       avalon_st_rxstatus_valid_156,
    output wire [NUM_CHANNELS-1:0][39:0] avalon_st_rxstatus_data_156,
    output wire [NUM_CHANNELS-1:0][6:0]  avalon_st_rxstatus_error_156
    

);

wire                            csr_rst_n;
wire                            tx_rst_n; 
wire                            rx_rst_n; 

wire [NUM_CHANNELS-1:0]         block_lock;
wire [NUM_CHANNELS-1:0]         tx_ready_export;
wire [NUM_CHANNELS-1:0]         rx_ready_export;
wire                            core_pll_locked;
wire                            atx_pll_locked;



assign csr_rst_n = master_reset_n;
assign tx_rst_n = master_reset_n;
assign rx_rst_n = master_reset_n; 

assign sfp0_txdisable = 1'b0;
assign sfp1_txdisable = 1'b0;
assign xfp_txdisable= 1'b0; 

assign SFPP0_RATE_SEL = 2'b11;
assign SFPP1_RATE_SEL = 2'b11;

assign block_lock_n = ~block_lock;
assign tx_ready_export_n = ~tx_ready_export;
assign rx_ready_export_n = ~rx_ready_export;
assign core_pll_locked_n = ~core_pll_locked;
assign atx_pll_locked_n = ~atx_pll_locked;

altera_eth_10g_mac_base_r #(
        .NUM_CHANNELS(NUM_CHANNELS),
        .DEVICE_FAMILY(DEVICE_FAMILY)
    ) dut_inst (

    .csr_clk            (csr_clk),
    .csr_rst_n          (csr_rst_n),
    .core_clk_312       (core_clk_312),
    .tx_rst_n           (tx_rst_n),
    .rx_rst_n           (rx_rst_n),
    .ref_clk_clk        (ref_clk_clk),
    
    .core_clk_156       (core_clk_156),

    // csr interface
    .csr_read           (1'b0),
    .csr_write          (1'b0),
    .csr_writedata      (32'b0),
    .csr_readdata       (),
    .csr_address        (16'b0),
    .csr_waitrequest    (),
    
    .tx_ready_export    (tx_ready_export),
    .rx_ready_export    (rx_ready_export),
    .block_lock         (block_lock),
    
    .tx_serial_data     (tx_serial_data),
    .rx_serial_data     (rx_serial_data),
    .core_pll_locked    (core_pll_locked),
    .atx_pll_locked     (atx_pll_locked),

    .avalon_st_rxstatus_valid_156           (avalon_st_rxstatus_valid_156),
    .avalon_st_rxstatus_data_156            (avalon_st_rxstatus_data_156),
    .avalon_st_rxstatus_error_156           (avalon_st_rxstatus_error_156)
    


);

endmodule
