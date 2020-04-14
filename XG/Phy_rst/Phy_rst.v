// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 17.1.2 Build 304 01/31/2018 SJ Pro Edition"

// DATE "05/30/2019 19:27:57"

// 
// Device: Altera 10AT115S2F45E2SG Package FBGA1932
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module Phy_rst (
	pll_powerdown,
	pll_select,
	rx_analogreset,
	rx_digitalreset,
	rx_ready,
	tx_analogreset,
	tx_digitalreset,
	tx_ready,
	clock,
	reset,
	rx_cal_busy,
	rx_is_lockedtodata,
	tx_cal_busy,
	pll_locked)/* synthesis synthesis_greybox=0 */;
output 	[0:0] pll_powerdown;
input 	[0:0] pll_select;
output 	[0:0] rx_analogreset;
output 	[0:0] rx_digitalreset;
output 	[0:0] rx_ready;
output 	[0:0] tx_analogreset;
output 	[0:0] tx_digitalreset;
output 	[0:0] tx_ready;
input 	clock;
input 	reset;
input 	[0:0] rx_cal_busy;
input 	[0:0] rx_is_lockedtodata;
input 	[0:0] tx_cal_busy;
input 	[0:0] pll_locked;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[10]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[4]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[3]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[2]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[1]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[0]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[12]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[11]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[9]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[8]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[7]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[6]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[5]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[2]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[8]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[7]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[0]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[6]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[5]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[4]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[3]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[1]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[9]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[1]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[0]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[7]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[2]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[12]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[11]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[10]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[8]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[6]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[5]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[4]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[3]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[4]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[12]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[6]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[11]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[10]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[9]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[8]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[7]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[5]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[3]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[2]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[1]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[0]~q ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~1_sumout ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~2 ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~5_sumout ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~6 ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~9_sumout ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~10 ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~13_sumout ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~14 ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~17_sumout ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~18 ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~21_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~1_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~2 ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~5_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~6 ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~9_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~10 ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~13_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~14 ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~17_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~18 ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~21_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~22 ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~25_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~29_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~30 ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~33_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~34 ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~37_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~38 ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~41_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~42 ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~45_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~46 ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~49_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~50 ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~1_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~2 ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~5_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~9_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~10 ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~13_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~14 ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~17_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~18 ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~21_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~22 ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~25_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~26 ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~29_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~30 ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~33_sumout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~34 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~1_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~2 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~5_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~6 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~9_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~10 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~13_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~14 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~17_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~18 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~21_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~25_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~26 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~29_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~30 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~33_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~34 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~37_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~38 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~41_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~42 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~45_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~46 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~49_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~50 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~1_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~2 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~5_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~9_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~10 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~13_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~14 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~17_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~18 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~21_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~22 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~25_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~26 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~29_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~30 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~33_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~34 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~37_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~38 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~41_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~42 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~45_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~46 ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~49_sumout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~50 ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|r_reset~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|r_reset~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|r_reset~q ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0]~q ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[1]~q ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[2]~q ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[3]~q ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[4]~q ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[5]~q ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[6]~q ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0]~0_combout ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|reduce_nor_0~combout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~0_combout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~1_combout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~combout ;
wire \xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[1].sync_r[1]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset_stat~q ;
wire \xcvr_reset_control_0|i34~combout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40~0_combout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40~combout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|count[1]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset_stat~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|count[0]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|i14~combout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[1]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~0_combout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~1_combout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~combout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.pll_locked_latch~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset_stat~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[0].sync_r[1]~q ;
wire \xcvr_reset_control_0|i25~combout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~0_combout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~1_combout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~combout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|count[1]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset_stat~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|count[0]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|i14~combout ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0]~1_combout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[0]~q ;
wire \xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[0]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[1].sync_r[0]~q ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|i10~0_combout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|i10~1_combout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[0]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.pll_locked_latch~0_combout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[0].sync_r[0]~q ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|i10~0_combout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|i10~1_combout ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|r_reset~0_combout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset~0_combout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset~0_combout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset~0_combout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset~0_combout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset_stat~0_combout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset_stat~0_combout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset_stat~0_combout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset_stat~0_combout ;
wire \xcvr_reset_control_0|g_pll.counter_pll_powerdown|r_reset~_wirecell_combout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset~_wirecell_combout ;
wire \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset~_wirecell_combout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset~_wirecell_combout ;
wire \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset~_wirecell_combout ;


dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[10] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~1_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[10]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[10] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[10] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[4] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~5_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[4]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[4] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[4] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[3] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~9_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[3]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[3] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[3] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[2] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~13_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[2]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[2] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[2] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[1] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~17_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[1]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[1] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[1] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[0] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~21_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[0]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[0] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[0] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[12] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~25_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[12]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[12] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[12] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[11] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~29_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[11]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[11] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[11] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[9] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~33_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[9]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[9] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[9] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[8] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~37_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[8]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[8] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[8] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[7] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~41_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[7]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[7] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[7] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[6] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~45_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[6]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[6] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[6] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[5] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~49_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[5]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[5] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[5] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[2] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~1_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|i34~combout ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40~combout ),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[2]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[2] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[2] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[8] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~5_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|i34~combout ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40~combout ),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[8]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[8] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[8] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[7] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~9_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|i34~combout ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40~combout ),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[7]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[7] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[7] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[0] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~13_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|i34~combout ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40~combout ),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[0]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[0] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[0] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[6] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~17_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|i34~combout ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40~combout ),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[6]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[6] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[6] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[5] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~21_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|i34~combout ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40~combout ),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[5]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[5] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[5] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[4] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~25_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|i34~combout ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40~combout ),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[4]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[4] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[4] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[3] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~29_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|i34~combout ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40~combout ),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[3]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[3] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[3] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[1] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~33_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|i34~combout ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40~combout ),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[1]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[1] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[1] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[9] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~1_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[9]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[9] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[9] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[1] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~5_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[1]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[1] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[1] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[0] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~9_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[0]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[0] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[0] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[7] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~13_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[7]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[7] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[7] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[2] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~17_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[2]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[2] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[2] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[12] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~21_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[12]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[12] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[12] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[11] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~25_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[11]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[11] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[11] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[10] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~29_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[10]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[10] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[10] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[8] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~33_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[8]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[8] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[8] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[6] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~37_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[6]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[6] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[6] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[5] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~41_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[5]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[5] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[5] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[4] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~45_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[4]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[4] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[4] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[3] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~49_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[1]~q ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[3]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[3] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[3] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[4] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~1_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|i25~combout ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[4]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[4] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[4] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[12] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~5_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|i25~combout ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[12]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[12] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[12] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[6] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~9_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|i25~combout ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[6]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[6] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[6] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[11] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~13_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|i25~combout ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[11]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[11] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[11] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[10] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~17_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|i25~combout ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[10]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[10] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[10] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[9] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~21_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|i25~combout ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[9]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[9] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[9] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[8] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~25_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|i25~combout ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[8]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[8] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[8] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[7] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~29_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|i25~combout ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[7]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[7] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[7] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[5] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~33_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|i25~combout ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[5]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[5] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[5] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[3] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~37_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|i25~combout ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[3]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[3] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[3] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[2] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~41_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|i25~combout ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[2]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[2] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[2] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[1] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~45_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|i25~combout ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[1]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[1] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[1] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[0] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~49_sumout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(\xcvr_reset_control_0|i25~combout ),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~combout ),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[0]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[0] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[0] .power_up = "low";

twentynm_lcell_comb \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[1]~q ),
	.datae(gnd),
	.dataf(!\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~1_sumout ),
	.cout(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~2 ),
	.shareout());
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~1 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~1 .lut_mask = 64'h0000FF00000000FF;
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~1 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~5_sumout ),
	.cout(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~6 ),
	.shareout());
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~5 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~5 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~5 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~9_sumout ),
	.cout(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~10 ),
	.shareout());
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~9 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~9 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~9 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~13_sumout ),
	.cout(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~14 ),
	.shareout());
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~13 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~13 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~13 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~17_sumout ),
	.cout(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~18 ),
	.shareout());
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~17 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~17 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~17 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~21_sumout ),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~21 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~21 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~21 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[10]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~1_sumout ),
	.cout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~2 ),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~1 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~1 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~1 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~5_sumout ),
	.cout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~6 ),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~5 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~5 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~5 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~9_sumout ),
	.cout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~10 ),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~9 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~9 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~9 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~13_sumout ),
	.cout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~14 ),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~13 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~13 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~13 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~17_sumout ),
	.cout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~18 ),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~17 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~17 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~17 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~21_sumout ),
	.cout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~22 ),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~21 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~21 .lut_mask = 64'h00000000000000FF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~21 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[12]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~25_sumout ),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~25 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~25 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~25 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[11]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~29_sumout ),
	.cout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~30 ),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~29 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~29 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~29 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[9]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~33_sumout ),
	.cout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~34 ),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~33 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~33 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~33 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[8]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~37_sumout ),
	.cout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~38 ),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~37 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~37 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~37 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[7]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~41_sumout ),
	.cout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~42 ),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~41 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~41 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~41 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~45_sumout ),
	.cout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~46 ),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~45 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~45 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~45 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~49_sumout ),
	.cout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~50 ),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~49 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~49 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|add_0~49 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~1_sumout ),
	.cout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~2 ),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~1 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~1 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~1 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[8]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~5_sumout ),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~5 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~5 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~5 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[7]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~9_sumout ),
	.cout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~10 ),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~9 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~9 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~9 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~13_sumout ),
	.cout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~14 ),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~13 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~13 .lut_mask = 64'h00000000000000FF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~13 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~17_sumout ),
	.cout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~18 ),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~17 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~17 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~17 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~21_sumout ),
	.cout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~22 ),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~21 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~21 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~21 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~25_sumout ),
	.cout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~26 ),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~25 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~25 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~25 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~29_sumout ),
	.cout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~30 ),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~29 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~29 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~29 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~33_sumout ),
	.cout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~34 ),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~33 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~33 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|add_0~33 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[9]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~1_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~2 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~1 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~1 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~1 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~5_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~6 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~5 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~5 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~5 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~9_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~10 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~9 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~9 .lut_mask = 64'h00000000000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~9 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[7]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~13_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~14 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~13 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~13 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~13 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~17_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~18 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~17 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~17 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~17 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[12]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~21_sumout ),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~21 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~21 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~21 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[11]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~25_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~26 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~25 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~25 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~25 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[10]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~29_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~30 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~29 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~29 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~29 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[8]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~33_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~34 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~33 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~33 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~33 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~37_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~38 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~37 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~37 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~37 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~41_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~42 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~41 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~41 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~41 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~45_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~46 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~45 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~45 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~45 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~49_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~50 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~49 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~49 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|add_0~49 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~1_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~2 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~1 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~1 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~1 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[12]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~5_sumout ),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~5 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~5 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~5 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~9_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~10 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~9 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~9 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~9 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[11]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~13_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~14 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~13 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~13 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~13 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[10]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~17_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~18 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~17 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~17 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~17 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[9]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~21_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~22 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~21 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~21 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~21 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[8]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~25_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~26 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~25 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~25 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~25 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[7]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~29_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~30 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~29 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~29 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~29 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~2 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~33_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~34 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~33 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~33 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~33 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~37_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~38 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~37 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~37 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~37 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~41_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~42 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~41 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~41 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~41 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~45_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~46 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~45 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~45 .lut_mask = 64'h0000FFFF000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~45 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~49_sumout ),
	.cout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~50 ),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~49 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~49 .lut_mask = 64'h00000000000000FF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|add_0~49 .shared_arith = "off";

dffeas \xcvr_reset_control_0|g_pll.counter_pll_powerdown|r_reset (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|r_reset~0_combout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|r_reset~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|r_reset .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|r_reset .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset~0_combout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset~0_combout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|r_reset (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|i14~combout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|r_reset~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|r_reset .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|r_reset .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset~0_combout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset~0_combout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|r_reset (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|i14~combout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|r_reset~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|r_reset .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|r_reset .power_up = "low";

dffeas \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0]~1_combout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0] .power_up = "low";

dffeas \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[1] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~1_sumout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|reduce_nor_0~combout ),
	.q(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[1]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[1] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[1] .power_up = "low";

dffeas \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[2] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~5_sumout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|reduce_nor_0~combout ),
	.q(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[2]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[2] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[2] .power_up = "low";

dffeas \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[3] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~9_sumout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|reduce_nor_0~combout ),
	.q(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[3]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[3] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[3] .power_up = "low";

dffeas \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[4] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~13_sumout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|reduce_nor_0~combout ),
	.q(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[4]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[4] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[4] .power_up = "low";

dffeas \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[5] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~17_sumout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|reduce_nor_0~combout ),
	.q(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[5]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[5] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[5] .power_up = "low";

dffeas \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[6] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|add_0~21_sumout ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|reduce_nor_0~combout ),
	.q(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[6]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[6] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[6] .power_up = "low";

twentynm_lcell_comb \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0]~0 (
	.dataa(!\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[1]~q ),
	.datab(!\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[2]~q ),
	.datac(!\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[3]~q ),
	.datad(!\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[4]~q ),
	.datae(!\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[5]~q ),
	.dataf(!\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[6]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0]~0 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0]~0 .lut_mask = 64'h0000000000004000;
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0]~0 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_pll.counter_pll_powerdown|reduce_nor_0 (
	.dataa(!\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0]~q ),
	.datab(!\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0]~0_combout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|reduce_nor_0~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|reduce_nor_0 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|reduce_nor_0 .lut_mask = 64'hEEEEEEEEEEEEEEEE;
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|reduce_nor_0 .shared_arith = "off";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[0]~q ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1] .power_up = "low";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~0 (
	.dataa(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.datab(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[1]~q ),
	.datac(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[0]~q ),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[12]~q ),
	.datae(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[11]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~0 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~0 .lut_mask = 64'h0000000200000002;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~0 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~1 (
	.dataa(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[9]~q ),
	.datab(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[8]~q ),
	.datac(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[7]~q ),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[6]~q ),
	.datae(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[5]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~1 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~1 .lut_mask = 64'h0010000000100000;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~1 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55 (
	.dataa(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[10]~q ),
	.datab(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[4]~q ),
	.datac(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[3]~q ),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|count[2]~q ),
	.datae(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~0_combout ),
	.dataf(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55 .lut_mask = 64'hFFFFFFFFFFFFFFDF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55 .shared_arith = "off";

dffeas \xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[0]~q ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[1].sync_r[1] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[1].sync_r[0]~q ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[1].sync_r[1]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[1].sync_r[1] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[1].sync_r[1] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset_stat (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset_stat~0_combout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset_stat~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset_stat .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset_stat .power_up = "low";

twentynm_lcell_comb \xcvr_reset_control_0|i34 (
	.dataa(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.datab(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[1].sync_r[1]~q ),
	.datac(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset_stat~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|i34~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|i34 .extended_lut = "off";
defparam \xcvr_reset_control_0|i34 .lut_mask = 64'hFDFDFDFDFDFDFDFD;
defparam \xcvr_reset_control_0|i34 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40~0 (
	.dataa(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[6]~q ),
	.datab(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[5]~q ),
	.datac(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[4]~q ),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[3]~q ),
	.datae(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[1]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40~0 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40~0 .lut_mask = 64'h0000008000000080;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40~0 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40 (
	.dataa(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[2]~q ),
	.datab(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[8]~q ),
	.datac(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[7]~q ),
	.datad(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|count[0]~q ),
	.datae(!\xcvr_reset_control_0|i34~combout ),
	.dataf(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40~0_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40 .lut_mask = 64'hFFFFFFFFFFFEFFFF;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40 .shared_arith = "off";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|count[1] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|i10~0_combout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|count[1]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|count[1] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|count[1] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset_stat (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset_stat~0_combout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset_stat~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset_stat .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset_stat .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|count[0] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|i10~1_combout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|count[0]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|count[0] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|count[0] .power_up = "low";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|i14 (
	.dataa(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|count[1]~q ),
	.datab(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset_stat~q ),
	.datac(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|count[0]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|i14~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|i14 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|i14 .lut_mask = 64'h1010101010101010;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|i14 .shared_arith = "off";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[1] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[0]~q ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[1]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[1] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[1] .power_up = "low";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~0 (
	.dataa(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[1]~q ),
	.datab(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[2]~q ),
	.datac(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[12]~q ),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[11]~q ),
	.datae(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[10]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~0 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~0 .lut_mask = 64'h0002000000020000;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~0 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~1 (
	.dataa(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[8]~q ),
	.datab(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[6]~q ),
	.datac(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[5]~q ),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[4]~q ),
	.datae(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[3]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~1 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~1 .lut_mask = 64'h0010000000100000;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~1 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55 (
	.dataa(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[9]~q ),
	.datab(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[1]~q ),
	.datac(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[0]~q ),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|count[7]~q ),
	.datae(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~0_combout ),
	.dataf(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55 .lut_mask = 64'hFFFFFFFFFFFFFEFF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55 .shared_arith = "off";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.pll_locked_latch (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.pll_locked_latch~0_combout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.pll_locked_latch~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.pll_locked_latch .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.pll_locked_latch .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset_stat (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset_stat~0_combout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset_stat~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset_stat .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset_stat .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[0].sync_r[1] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[0].sync_r[0]~q ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[0].sync_r[1]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[0].sync_r[1] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[0].sync_r[1] .power_up = "low";

twentynm_lcell_comb \xcvr_reset_control_0|i25 (
	.dataa(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[1]~q ),
	.datab(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.pll_locked_latch~q ),
	.datac(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset_stat~q ),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[0].sync_r[1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|i25~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|i25 .extended_lut = "off";
defparam \xcvr_reset_control_0|i25 .lut_mask = 64'hFFFDFFFDFFFDFFFD;
defparam \xcvr_reset_control_0|i25 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~0 (
	.dataa(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[11]~q ),
	.datab(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[10]~q ),
	.datac(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[9]~q ),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[8]~q ),
	.datae(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[7]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~0 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~0 .lut_mask = 64'h0004000000040000;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~0 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~1 (
	.dataa(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[5]~q ),
	.datab(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[3]~q ),
	.datac(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[2]~q ),
	.datad(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[1]~q ),
	.datae(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[0]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~1 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~1 .lut_mask = 64'h0000000800000008;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~1 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55 (
	.dataa(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[4]~q ),
	.datab(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[12]~q ),
	.datac(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|count[6]~q ),
	.datad(!\xcvr_reset_control_0|i25~combout ),
	.datae(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~0_combout ),
	.dataf(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55 .lut_mask = 64'hFFFFFFFFFFFFFEFF;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55 .shared_arith = "off";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|count[1] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|i10~0_combout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|count[1]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|count[1] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|count[1] .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset_stat (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset_stat~0_combout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset_stat~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset_stat .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset_stat .power_up = "low";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|count[0] (
	.clk(clock),
	.d(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|i10~1_combout ),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|count[0]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|count[0] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|count[0] .power_up = "low";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|i14 (
	.dataa(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|count[1]~q ),
	.datab(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset_stat~q ),
	.datac(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|count[0]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|i14~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|i14 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|i14 .lut_mask = 64'h1010101010101010;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|i14 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0]~1 (
	.dataa(!\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0]~q ),
	.datab(!\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0]~0_combout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0]~1 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0]~1 .lut_mask = 64'hBBBBBBBBBBBBBBBB;
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|count[0]~1 .shared_arith = "off";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[0] (
	.clk(clock),
	.d(rx_cal_busy[0]),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[0]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[0] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[0] .power_up = "low";

dffeas \xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[0] (
	.clk(clock),
	.d(vcc),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[0]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[0] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[0] .power_up = "low";

dffeas \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[1].sync_r[0] (
	.clk(clock),
	.d(rx_is_lockedtodata[0]),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[1].sync_r[0]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[1].sync_r[0] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[1].sync_r[0] .power_up = "low";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|i10~0 (
	.dataa(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|count[1]~q ),
	.datab(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset_stat~q ),
	.datac(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|count[0]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|i10~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|i10~0 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|i10~0 .lut_mask = 64'h1212121212121212;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|i10~0 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|i10~1 (
	.dataa(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|count[1]~q ),
	.datab(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset_stat~q ),
	.datac(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|count[0]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|i10~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|i10~1 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|i10~1 .lut_mask = 64'h2020202020202020;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|i10~1 .shared_arith = "off";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[0] (
	.clk(clock),
	.d(tx_cal_busy[0]),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[0]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[0] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[0] .power_up = "low";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.pll_locked_latch~0 (
	.dataa(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[3].sync_r[1]~q ),
	.datab(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.pll_locked_latch~q ),
	.datac(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[0].sync_r[1]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.pll_locked_latch~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.pll_locked_latch~0 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.pll_locked_latch~0 .lut_mask = 64'h3B3B3B3B3B3B3B3B;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.pll_locked_latch~0 .shared_arith = "off";

dffeas \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[0].sync_r[0] (
	.clk(clock),
	.d(pll_locked[0]),
	.asdata(vcc),
	.clrn(\xcvr_reset_control_0|g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[0].sync_r[0]~q ),
	.prn(vcc));
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[0].sync_r[0] .is_wysiwyg = "true";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[0].sync_r[0] .power_up = "low";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|i10~0 (
	.dataa(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|count[1]~q ),
	.datab(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset_stat~q ),
	.datac(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|count[0]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|i10~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|i10~0 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|i10~0 .lut_mask = 64'h1212121212121212;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|i10~0 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|i10~1 (
	.dataa(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|count[1]~q ),
	.datab(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset_stat~q ),
	.datac(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|count[0]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|i10~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|i10~1 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|i10~1 .lut_mask = 64'h2020202020202020;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|i10~1 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_pll.counter_pll_powerdown|r_reset~0 (
	.dataa(!\xcvr_reset_control_0|g_pll.counter_pll_powerdown|reduce_nor_0~combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|r_reset~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|r_reset~0 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|r_reset~0 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|r_reset~0 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset~0 (
	.dataa(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset~0 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset~0 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset~0 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset~0 (
	.dataa(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40~combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset~0 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset~0 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset~0 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset~0 (
	.dataa(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset~0 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset~0 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset~0 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset~0 (
	.dataa(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset~0 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset~0 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset~0 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset_stat~0 (
	.dataa(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|i55~combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset_stat~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset_stat~0 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset_stat~0 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset_stat~0 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset_stat~0 (
	.dataa(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|i40~combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset_stat~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset_stat~0 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset_stat~0 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset_stat~0 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset_stat~0 (
	.dataa(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|i55~combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset_stat~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset_stat~0 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset_stat~0 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset_stat~0 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset_stat~0 (
	.dataa(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|i55~combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset_stat~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset_stat~0 .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset_stat~0 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset_stat~0 .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_pll.counter_pll_powerdown|r_reset~_wirecell (
	.dataa(!\xcvr_reset_control_0|g_pll.counter_pll_powerdown|r_reset~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_pll.counter_pll_powerdown|r_reset~_wirecell_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|r_reset~_wirecell .extended_lut = "off";
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|r_reset~_wirecell .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \xcvr_reset_control_0|g_pll.counter_pll_powerdown|r_reset~_wirecell .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset~_wirecell (
	.dataa(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset~_wirecell_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset~_wirecell .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset~_wirecell .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset~_wirecell .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset~_wirecell (
	.dataa(!\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset~_wirecell_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset~_wirecell .extended_lut = "off";
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset~_wirecell .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset~_wirecell .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset~_wirecell (
	.dataa(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset~_wirecell_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset~_wirecell .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset~_wirecell .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset~_wirecell .shared_arith = "off";

twentynm_lcell_comb \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset~_wirecell (
	.dataa(!\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset~_wirecell_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset~_wirecell .extended_lut = "off";
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset~_wirecell .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset~_wirecell .shared_arith = "off";

assign pll_powerdown[0] = \xcvr_reset_control_0|g_pll.counter_pll_powerdown|r_reset~_wirecell_combout ;

assign rx_analogreset[0] = \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset~_wirecell_combout ;

assign rx_digitalreset[0] = \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset~_wirecell_combout ;

assign rx_ready[0] = \xcvr_reset_control_0|g_rx.g_rx[0].g_rx.counter_rx_ready|r_reset~q ;

assign tx_analogreset[0] = \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_analogreset|r_reset~_wirecell_combout ;

assign tx_digitalreset[0] = \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset~_wirecell_combout ;

assign tx_ready[0] = \xcvr_reset_control_0|g_tx.g_tx[0].g_tx.counter_tx_ready|r_reset~q ;

endmodule
