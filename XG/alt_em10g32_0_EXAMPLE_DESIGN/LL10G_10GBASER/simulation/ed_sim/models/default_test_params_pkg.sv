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



`ifndef DEFAULT_TEST_PARAMS_PKT__SV
`define DEFAULT_TEST_PARAMS_PKT__SV

// Package defines parameters for testbench
package default_test_params_pkt;
    
    //num of channels
    parameter NUM_CHANNELS          = 2;
    parameter DEVICE_FAMILY         = "Arria 10";

    // Parameter definition for MAC configuration and packet generation
    parameter UNICAST_ADDR          = 48'h22_44_66_88_AA_CC;
    parameter MULTICAST_ADDR        = 48'h21_44_66_88_AA_CC;
    parameter BROADCAST_ADDR        = 48'hFF_FF_FF_FF_FF_FF;
    parameter PAUSE_MULTICAST_ADDR  = 48'h01_80_C2_00_00_01;
    parameter INVALID_ADDR          = 48'h00_00_00_00_00_00;
    
    parameter MAC_ADDR              = 48'hEE_CC_88_CC_AA_EE;
    
    parameter VLAN_INFO             = 16'h0123;
    parameter SVLAN_INFO            = 16'h4567;
    
    parameter INSERT_PAD            = 1;
    parameter INSERT_CRC            = 0;
    parameter PAUSE_QUANTA          = 16'h0025;

endpackage

`endif

