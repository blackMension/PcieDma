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

// DATE "05/31/2019 16:45:44"

// 
// Device: Altera 10AT115S2F45E2SG Package FBGA1932
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module atx_pll (
	pll_cal_busy,
	pll_locked,
	pll_powerdown,
	tx_serial_clk,
	pll_refclk0)/* synthesis synthesis_greybox=0 */;
output 	pll_cal_busy;
output 	pll_locked;
input 	pll_powerdown;
output 	tx_serial_clk;
input 	pll_refclk0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_clk[0] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|pld_cal_done[0] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_read[0] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_rstn[0] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_write[0] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_readdata[0] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_readdata[1] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_readdata[2] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_readdata[3] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_readdata[4] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_readdata[5] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_readdata[6] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_readdata[7] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[0] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[1] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[2] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[3] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[4] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[5] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[6] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[7] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[8] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[0] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[1] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[2] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[3] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[4] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[5] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[6] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[7] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_blockselect_lc[0] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_serial_clk_16g ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_serial_clk_8g ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_locked ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[0] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[1] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[2] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[3] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[4] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[5] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[6] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[7] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_blockselect_refclk[0] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst~refclk ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[0] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[1] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[2] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[3] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[4] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[5] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[6] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[7] ;
wire \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|pld_cal_done[0]~_wirecell_combout ;

wire [7:0] \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_WRITEDATACHNL_bus ;
wire [8:0] \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_REGADDRCHNL_bus ;
wire [7:0] \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_AVMMREADDATA_bus ;
wire [7:0] \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst_AVMMREADDATA_bus ;
wire [7:0] \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst_AVMMREADDATA_bus ;

assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[0]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_WRITEDATACHNL_bus [0];
assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[1]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_WRITEDATACHNL_bus [1];
assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[2]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_WRITEDATACHNL_bus [2];
assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[3]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_WRITEDATACHNL_bus [3];
assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[4]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_WRITEDATACHNL_bus [4];
assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[5]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_WRITEDATACHNL_bus [5];
assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[6]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_WRITEDATACHNL_bus [6];
assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[7]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_WRITEDATACHNL_bus [7];

assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[0]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_REGADDRCHNL_bus [0];
assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[1]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_REGADDRCHNL_bus [1];
assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[2]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_REGADDRCHNL_bus [2];
assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[3]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_REGADDRCHNL_bus [3];
assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[4]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_REGADDRCHNL_bus [4];
assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[5]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_REGADDRCHNL_bus [5];
assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[6]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_REGADDRCHNL_bus [6];
assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[7]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_REGADDRCHNL_bus [7];
assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[8]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_REGADDRCHNL_bus [8];

assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_readdata[0]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_AVMMREADDATA_bus [0];
assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_readdata[1]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_AVMMREADDATA_bus [1];
assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_readdata[2]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_AVMMREADDATA_bus [2];
assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_readdata[3]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_AVMMREADDATA_bus [3];
assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_readdata[4]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_AVMMREADDATA_bus [4];
assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_readdata[5]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_AVMMREADDATA_bus [5];
assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_readdata[6]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_AVMMREADDATA_bus [6];
assign \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_readdata[7]  = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_AVMMREADDATA_bus [7];

assign \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[0]  = \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst_AVMMREADDATA_bus [0];
assign \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[1]  = \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst_AVMMREADDATA_bus [1];
assign \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[2]  = \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst_AVMMREADDATA_bus [2];
assign \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[3]  = \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst_AVMMREADDATA_bus [3];
assign \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[4]  = \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst_AVMMREADDATA_bus [4];
assign \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[5]  = \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst_AVMMREADDATA_bus [5];
assign \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[6]  = \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst_AVMMREADDATA_bus [6];
assign \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[7]  = \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst_AVMMREADDATA_bus [7];

assign \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[0]  = \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst_AVMMREADDATA_bus [0];
assign \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[1]  = \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst_AVMMREADDATA_bus [1];
assign \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[2]  = \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst_AVMMREADDATA_bus [2];
assign \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[3]  = \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst_AVMMREADDATA_bus [3];
assign \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[4]  = \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst_AVMMREADDATA_bus [4];
assign \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[5]  = \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst_AVMMREADDATA_bus [5];
assign \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[6]  = \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst_AVMMREADDATA_bus [6];
assign \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[7]  = \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst_AVMMREADDATA_bus [7];

twentynm_hssi_avmm_if \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst (
	.avmmclk(gnd),
	.avmmread(gnd),
	.avmmrequest(gnd),
	.avmmreservedin(),
	.avmmrstn(vcc),
	.avmmwrite(gnd),
	.scanmoden(vcc),
	.scanshiftn(vcc),
	.avmmaddress({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.avmmwritedata({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.blockselect({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_blockselect_refclk[0] ,\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_blockselect_lc[0] ,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.readdatachnl({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[7] ,
\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[6] ,\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[5] ,\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[4] ,
\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[3] ,\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[2] ,\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[1] ,
\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_refclk[0] ,\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[7] ,\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[6] ,
\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[5] ,\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[4] ,\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[3] ,
\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[2] ,\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[1] ,\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_avmmreaddata_lc[0] ,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.avmmbusy(),
	.avmmreservedout(),
	.clkchnl(\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_clk[0] ),
	.hipcaldone(),
	.pldcaldone(\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|pld_cal_done[0] ),
	.readchnl(\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_read[0] ),
	.rstnchnl(\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_rstn[0] ),
	.writechnl(\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_write[0] ),
	.avmmreaddata(\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_AVMMREADDATA_bus ),
	.regaddrchnl(\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_REGADDRCHNL_bus ),
	.writedatachnl(\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst_WRITEDATACHNL_bus ));
defparam \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst .arbiter_ctrl = "uc";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst .cal_done = "cal_done_deassert";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst .cal_reserved = 5'b00000;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst .calibration_en = "enable";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst .calibration_type = "one_time";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst .hip_cal_en = "disable";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst .silicon_rev = "20nm5es";

twentynm_atx_pll \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst (
	.avmmclk(\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_clk[0] ),
	.avmmread(\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_read[0] ),
	.avmmrstn(\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_rstn[0] ),
	.avmmwrite(\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_write[0] ),
	.core_clk(),
	.lf_rst_n(vcc),
	.refclk(\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst~refclk ),
	.rst_n(vcc),
	.avmmaddress({\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[8] ,\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[7] ,\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[6] ,\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[5] ,
\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[4] ,\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[3] ,\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[2] ,\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[1] ,
\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[0] }),
	.avmmwritedata({\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[7] ,\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[6] ,\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[5] ,
\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[4] ,\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[3] ,\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[2] ,
\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[1] ,\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[0] }),
	.iqtxrxclk({gnd,gnd,gnd,gnd,gnd,gnd}),
	.blockselect(\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_blockselect_lc[0] ),
	.clk0_16g(\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_serial_clk_16g ),
	.clk0_8g(\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_serial_clk_8g ),
	.clk180_16g(),
	.clk180_8g(),
	.clklow_buf(),
	.fref_buf(),
	.hclk_out(),
	.iqtxrxclk_out(),
	.lc_to_fpll_refclk(),
	.lock(\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_locked ),
	.overrange(),
	.underrange(),
	.avmmreaddata(\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst_AVMMREADDATA_bus ),
	.m_cnt_int());
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .analog_mode = "user_custom";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .bandwidth_range_high = "0 hz";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .bandwidth_range_low = "0 hz";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .bonding = "cpri_bonding";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .bw_sel = "medium";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .cal_status = "cal_done";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .calibration_mode = "cal_off";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .cascadeclk_test = "cascadetest_off";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .cgb_div = 1;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .clk_high_perf_voltage = 12'b000000000000;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .clk_low_power_voltage = 12'b000000000000;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .clk_mid_power_voltage = 12'b000000000000;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .cp_compensation_enable = "true";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .cp_current_setting = "cp_current_setting23";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .cp_lf_3rd_pole_freq = "lf_3rd_pole_setting1";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .cp_lf_order = "lf_3rd_order";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .cp_testmode = "cp_normal";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .d2a_voltage = "d2a_setting_4";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .datarate = "10312500000 bps";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .device_variant = "device1";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .dprio_clk_vreg_boost_expected_voltage = 12'b000000000000;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .dprio_clk_vreg_boost_scratch = 3'b000;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .dprio_clk_vreg_boost_step_size = 5'b00000;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .dprio_lc_vreg1_boost_expected_voltage = 12'b000000000000;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .dprio_lc_vreg1_boost_scratch = 3'b000;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .dprio_lc_vreg_boost_expected_voltage = 12'b000000000000;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .dprio_lc_vreg_boost_scratch = 3'b000;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .dprio_mcgb_vreg_boost_expected_voltage = 12'b000000000000;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .dprio_mcgb_vreg_boost_scratch = 3'b000;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .dprio_mcgb_vreg_boost_step_size = 5'b00000;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .dprio_vreg1_boost_step_size = 5'b00000;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .dprio_vreg_boost_step_size = 5'b00000;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .dsm_ecn_bypass = "false";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .dsm_ecn_test_en = "false";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .dsm_fractional_division = 32'b00000000000000000000000000000001;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .dsm_fractional_value_ready = "pll_k_ready";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .dsm_mode = "dsm_mode_integer";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .dsm_out_sel = "pll_dsm_disable";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .enable_hclk = "hclk_disabled";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .enable_idle_atx_pll_support = "idle_none";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .enable_lc_calibration = "false";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .enable_lc_vreg_calibration = "false";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .expected_lc_boost_voltage = 12'b000000000000;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .f_max_lcnt_fpll_cascading = 36'b000000000000000000000000000000000001;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .f_max_pfd = "0 hz";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .f_max_pfd_fractional = "0 hz";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .f_max_ref = "0 hz";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .f_max_tank_0 = "0 hz";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .f_max_tank_1 = "0 hz";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .f_max_tank_2 = "0 hz";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .f_max_vco = "0 hz";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .f_max_vco_fractional = "0 hz";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .f_max_x1 = "0 hz";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .f_min_pfd = "0 hz";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .f_min_ref = "0 hz";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .f_min_tank_0 = "0 hz";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .f_min_tank_1 = "0 hz";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .f_min_tank_2 = "0 hz";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .f_min_vco = "0 hz";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .fb_select = "direct_fb";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .fpll_refclk_selection = "select_vco_output";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .hclk_divide = 1;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .initial_settings = "true";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .iqclk_mux_sel = "iqtxrxclk0";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .is_cascaded_pll = "false";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .is_otn = "false";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .is_sdi = "false";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .l_counter = 2;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .l_counter_enable = "true";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .l_counter_scratch = 5'b00001;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .lc_atb = "atb_selectdisable";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .lc_mode = "lccmu_normal";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .lc_to_fpll_l_counter = "lcounter_setting0";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .lc_to_fpll_l_counter_scratch = 5'b00001;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .lf_cbig_size = "lf_cbig_setting4";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .lf_resistance = "lf_setting1";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .lf_ripplecap = "lf_ripple_cap_0";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .m_counter = 16;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .max_fractional_percentage = 7'b0000000;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .min_fractional_percentage = 7'b0000000;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .n_counter_scratch = 3'b001;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .output_clock_frequency = "5156250000 hz";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .output_regulator_supply = "vreg1v_setting0";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .overrange_voltage = "over_setting0";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .pfd_delay_compensation = "normal_delay";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .pfd_pulse_width = "pulse_width_setting0";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .pm_speed_grade = "e2";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .pma_width = 64;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .power_mode = "low_power";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .power_rail_et = 0;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .powerdown_mode = "powerup";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .primary_use = "hssi_x1";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .prot_mode = "basic_tx";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .ref_clk_div = 2;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .reference_clock_frequency = "644531250 hz";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .regulator_bypass = "reg_enable";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .side = "side_unknown";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .silicon_rev = "20nm5";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .sup_mode = "user_mode";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .tank_band = "lc_band4";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .tank_sel = "lctank1";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .tank_voltage_coarse = "vreg_setting_coarse0";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .tank_voltage_fine = "vreg_setting5";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .top_or_bottom = "tb_unknown";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .underrange_voltage = "under_setting4";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .vccdreg_clk = "vreg_clk0";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .vccdreg_fb = "vreg_fb0";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .vccdreg_fw = "vreg_fw0";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .vco_bypass_enable = "false";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .vco_freq = "10312500000 hz";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_atx_pll_inst .xcpvco_xchgpmplf_cp_current_boost = "normal_setting";

twentynm_hssi_pma_lc_refclk_select_mux \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst (
	.avmmclk(\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_clk[0] ),
	.avmmread(\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_read[0] ),
	.avmmrstn(\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_rstn[0] ),
	.avmmwrite(\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_write[0] ),
	.core_refclk(gnd),
	.cr_pdb(vcc),
	.lvpecl_in(gnd),
	.avmmaddress({\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[8] ,\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[7] ,\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[6] ,\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[5] ,
\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[4] ,\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[3] ,\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[2] ,\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[1] ,
\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_address[0] }),
	.avmmwritedata({\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[7] ,\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[6] ,\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[5] ,
\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[4] ,\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[3] ,\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[2] ,
\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[1] ,\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|chnl_pll_avmm_writedata[0] }),
	.iqtxrxclk({gnd,gnd,gnd,gnd,gnd,gnd}),
	.ref_iqclk({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,pll_refclk0}),
	.blockselect(\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_blockselect_refclk[0] ),
	.refclk(\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst~refclk ),
	.avmmreaddata(\xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst_AVMMREADDATA_bus ));
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst .inclk0_logical_to_physical_mapping = "ref_iqclk0";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst .inclk1_logical_to_physical_mapping = "power_down";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst .inclk2_logical_to_physical_mapping = "power_down";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst .inclk3_logical_to_physical_mapping = "power_down";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst .inclk4_logical_to_physical_mapping = "power_down";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst .powerdown_mode = "powerup";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst .refclk_select = "ref_iqclk0";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst .silicon_rev = "20nm5";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst .xmux_lc_scratch0_src = "scratch0_src_lvpecl";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst .xmux_lc_scratch1_src = "scratch1_src_lvpecl";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst .xmux_lc_scratch2_src = "scratch2_src_lvpecl";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst .xmux_lc_scratch3_src = "scratch3_src_lvpecl";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst .xmux_lc_scratch4_src = "scratch4_src_lvpecl";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst .xmux_refclk_src = "src_lvpecl";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst .xpm_iqref_mux_iqclk_sel = "power_down";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst .xpm_iqref_mux_scratch0_src = "scratch0_power_down";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst .xpm_iqref_mux_scratch1_src = "scratch1_power_down";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst .xpm_iqref_mux_scratch2_src = "scratch2_power_down";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst .xpm_iqref_mux_scratch3_src = "scratch3_power_down";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|twentynm_hssi_pma_lc_refclk_select_mux_inst .xpm_iqref_mux_scratch4_src = "scratch4_power_down";

twentynm_lcell_comb \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|pld_cal_done[0]~_wirecell (
	.dataa(!\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|pld_cal_done[0] ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|pld_cal_done[0]~_wirecell_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|pld_cal_done[0]~_wirecell .extended_lut = "off";
defparam \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|pld_cal_done[0]~_wirecell .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|pld_cal_done[0]~_wirecell .shared_arith = "off";

assign pll_cal_busy = \xcvr_atx_pll_a10_0|a10_xcvr_avmm_inst|pld_cal_done[0]~_wirecell_combout ;

assign pll_locked = \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_locked ;

assign tx_serial_clk = \xcvr_atx_pll_a10_0|a10_xcvr_atx_pll_inst|pll_serial_clk_8g ;

endmodule
