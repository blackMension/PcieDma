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



`timescale 1 ps / 1 ps


module altera_eth_10g_mac_base_r_wrap (
    
    // clock and reset
    input wire             csr_clk,
    input wire            csr_rst_n,
    input wire            tx_clk_312,
    input wire            tx_clk_156,
    input wire            tx_rst_n,
    input wire            rx_clk_312,
    input wire            rx_clk_156,
    input wire            rx_rst_n,
    
    input wire            ref_clk_clk,
    
    //avlon_st tx interface
    input wire            avalon_st_tx_startofpacket,
    input wire            avalon_st_tx_endofpacket,
    input wire            avalon_st_tx_valid,
    input wire    [31:0]    avalon_st_tx_data,
    input wire     [1:0]    avalon_st_tx_empty,
    input wire            avalon_st_tx_error,
    output wire            avalon_st_tx_ready,
    
    // avalon_st rx interface
    output wire            avalon_st_rx_startofpacket,
    output wire            avalon_st_rx_endofpacket,
    output wire            avalon_st_rx_valid,
    output wire    [31:0]    avalon_st_rx_data,
    output wire [1:0]    avalon_st_rx_empty,
    input wire             avalon_st_rx_ready,
    output wire [5:0]    avalon_st_rx_error,
        
    // additional st interface
    input wire    [1:0]    avalon_st_pause_data,
    output wire            avalon_st_txstatus_valid,
    output wire [39:0]     avalon_st_txstatus_data, 
    output wire [6:0]      avalon_st_txstatus_error,
    
    output wire            avalon_st_rxstatus_valid,                                  
    output wire [6:0]      avalon_st_rxstatus_error,                                  
    output wire [39:0]     avalon_st_rxstatus_data,

    output wire [1:0]      link_fault_status_xgmii_rx_data,
    
    // reset controller
    output wire            tx_ready_export,
    output wire            rx_ready_export,
    output wire            block_lock,
        input wire                     atx_pll_locked,
    
    
    output wire            tx_serial_data,
    input wire            rx_serial_data,
    
    input  wire            mac_csr_read,
    input  wire            mac_csr_write,
    output wire    [31:0]    mac_csr_readdata,
    input  wire [31:0]    mac_csr_writedata,
    output wire         mac_csr_waitrequest,
    input  wire [9:0]   mac_csr_address,
    
    input  wire         phy_csr_read,
    input  wire         phy_csr_write,
    output wire [31:0]  phy_csr_readdata,
    input  wire [31:0]  phy_csr_writedata,
    output wire         phy_csr_waitrequest,
    input  wire [9:0]   phy_csr_address,

    input  wire         tx_serial_clk
    
    

);


wire [7:0]        xgmii_tx_control;
wire [63:0]        xgmii_tx_data;
wire [71:0]     xgmii_tx;

wire [7:0]        xgmii_rx_control;
wire [63:0]        xgmii_rx_data;
wire [71:0]     xgmii_rx;

//reset controller
wire            pll_powerdown;
wire            tx_analogreset;
wire            tx_digitalreset;    
wire            rx_analogreset;
wire            rx_digitalreset;    
wire            rx_is_lockedtodata;    

wire            tx_cal_busy;
wire            rx_cal_busy;

wire            tx_clkout;
wire            rx_clkout;
wire            tx_reset_n;
wire            tx_reset;
wire            rx_reset_n;
wire            rx_reset;

assign tx_reset_n = ~tx_reset;
assign rx_reset_n = ~rx_reset;

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
   xgmii_rx_control[0], xgmii_rx_data[7:0]};

altera_eth_10g_mac mac_inst (

    .csr_read                    (mac_csr_read),                       
    .csr_write                    (mac_csr_write),                      
    .csr_writedata                (mac_csr_writedata),                  
    .csr_readdata                (mac_csr_readdata),                   
    .csr_waitrequest            (mac_csr_waitrequest),                
    .csr_address                (mac_csr_address),                    
    .csr_clk                    (csr_clk),                                               
    .csr_rst_n                    (csr_rst_n),                      
    .tx_rst_n                    (tx_reset_n),                       
    .rx_rst_n                    (rx_reset_n),                       
    .avalon_st_tx_startofpacket    (avalon_st_tx_startofpacket),     
    .avalon_st_tx_endofpacket    (avalon_st_tx_endofpacket),       
    .avalon_st_tx_valid            (avalon_st_tx_valid),             
    .avalon_st_tx_data            (avalon_st_tx_data),              
    .avalon_st_tx_empty            (avalon_st_tx_empty),             
    .avalon_st_tx_error            (avalon_st_tx_error),             
    .avalon_st_tx_ready            (avalon_st_tx_ready),             
    .avalon_st_pause_data        (avalon_st_pause_data),           
    .avalon_st_txstatus_valid    (avalon_st_txstatus_valid),       
    .avalon_st_txstatus_data    (avalon_st_txstatus_data),        
    .avalon_st_txstatus_error    (avalon_st_txstatus_error),       
    .link_fault_status_xgmii_rx_data    (link_fault_status_xgmii_rx_data),
    .avalon_st_rx_data            (avalon_st_rx_data),              
    .avalon_st_rx_startofpacket    (avalon_st_rx_startofpacket),     
    .avalon_st_rx_valid            (avalon_st_rx_valid),             
    .avalon_st_rx_empty            (avalon_st_rx_empty),             
    .avalon_st_rx_error            (avalon_st_rx_error),             
    .avalon_st_rx_ready            (avalon_st_rx_ready),             
    .avalon_st_rx_endofpacket    (avalon_st_rx_endofpacket),       
    .avalon_st_rxstatus_valid    (avalon_st_rxstatus_valid),       
    .avalon_st_rxstatus_data    (avalon_st_rxstatus_data),        
    .avalon_st_rxstatus_error    (avalon_st_rxstatus_error),       

    .rx_156_25_clk          (rx_clk_156),
    .rx_312_5_clk           (rx_clk_312),
    .tx_156_25_clk          (tx_clk_156),
    .tx_312_5_clk           (tx_clk_312),

    .xgmii_rx                (xgmii_rx),                 
    .xgmii_tx                (xgmii_tx)                 
    
);


altera_eth_10gbaser_phy baser_inst (

    .tx_analogreset                (tx_analogreset),
    .tx_digitalreset            (tx_digitalreset),
    .rx_analogreset                (rx_analogreset),
    .rx_digitalreset            (rx_digitalreset),
    .tx_cal_busy                (tx_cal_busy),
    .rx_cal_busy                (rx_cal_busy),
    .tx_serial_clk0                (tx_serial_clk),
    .rx_cdr_refclk0                (ref_clk_clk),
    .tx_serial_data                (tx_serial_data),
    .rx_serial_data                (rx_serial_data),
    .rx_is_lockedtoref            (),
    .rx_is_lockedtodata            (rx_is_lockedtodata),
    .tx_coreclkin                (tx_clk_156),
    .rx_coreclkin                (rx_clk_156),
    .tx_clkout                    (),
    .rx_clkout                    (),
    .tx_parallel_data            (xgmii_tx_data),
    .rx_parallel_data            (xgmii_rx_data),
    .tx_control                    (xgmii_tx_control),
    .tx_err_ins                    (1'b0),
    .unused_tx_parallel_data    (64'b0),
    .unused_tx_control            (9'b0),
    .rx_control                    (xgmii_rx_control),
    .tx_enh_data_valid            (xgmii_tx_valid),
    .rx_enh_data_valid            (xgmii_rx_valid),
    .rx_enh_highber                (),
    .rx_enh_blk_lock            (block_lock),
    .unused_rx_parallel_data    (),
    .unused_rx_control            (),    
    .reconfig_clk                (csr_clk),
    .reconfig_reset                (~csr_rst_n),
    .reconfig_write                (phy_csr_write),
    .reconfig_read                (phy_csr_read),
    .reconfig_address            (phy_csr_address),
    .reconfig_writedata            (phy_csr_writedata),
    .reconfig_readdata            (phy_csr_readdata),
    .reconfig_waitrequest        (phy_csr_waitrequest),
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



reset_control    reset_controller_inst(


    .clock                (csr_clk),              
    .reset                (~csr_rst_n),              
    .pll_powerdown        (),      
    .tx_analogreset        (tx_analogreset),     
    .tx_digitalreset    (tx_digitalreset),    
    .tx_ready            (tx_ready_export),           
    .pll_locked            (atx_pll_locked),         
    .pll_select            (1'b0),         
    .tx_cal_busy        (tx_cal_busy),        
    .rx_analogreset        (rx_analogreset),     
    .rx_digitalreset    (rx_digitalreset),    
    .rx_ready            (rx_ready_export),           
    .rx_is_lockedtodata    (rx_is_lockedtodata), 
    .rx_cal_busy         (rx_cal_busy)        

);

    // Clock and reset
altera_reset_synchronizer #(
        .DEPTH      (2),
        .ASYNC_RESET(1)
    ) tx_rst_sync (
        .clk        (tx_clk_312),
        .reset_in   (~tx_rst_n),
        .reset_out  (tx_reset)
    );

    // Clock and reset
altera_reset_synchronizer #(
        .DEPTH      (2),
        .ASYNC_RESET(1)
    ) rx_rst_sync (
        .clk        (rx_clk_312),
        .reset_in   (~rx_rst_n),
        .reset_out  (rx_reset)
    );    
    
endmodule 
