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


`ifndef AVALON_IF_PARAMS_PKT__SV
`define AVALON_IF_PARAMS_PKT__SV

// Package defines Avalon-MM and Avalon-ST interface parameters for BFM
package avalon_if_params_pkt;
    
    // ******************************************************************************************
    // Avalon-MM CSR Interface
    // ******************************************************************************************
    
    parameter AVALON_MM_CSR_AV_ADDRESS_W                = 19;
    parameter AVALON_MM_CSR_AV_SYMBOL_W                 = 8;
    parameter AVALON_MM_CSR_AV_NUMSYMBOLS               = 4;
    parameter AVALON_MM_CSR_AV_BURSTCOUNT_W             = 1;
    parameter AVALON_MM_CSR_AV_DATA_W                   = AVALON_MM_CSR_AV_SYMBOL_W * AVALON_MM_CSR_AV_NUMSYMBOLS;
    
    parameter AVALON_MM_CSR_USE_READ                    = 1;
    parameter AVALON_MM_CSR_USE_WRITE                   = 1;
    parameter AVALON_MM_CSR_USE_ADDRESS                 = 1;
    parameter AVALON_MM_CSR_USE_BYTE_ENABLE             = 0;
    parameter AVALON_MM_CSR_USE_BURSTCOUNT              = 0;
    parameter AVALON_MM_CSR_USE_READ_DATA               = 1;
    parameter AVALON_MM_CSR_USE_READ_DATA_VALID         = 0;
    parameter AVALON_MM_CSR_USE_WRITE_DATA              = 1;
    parameter AVALON_MM_CSR_USE_BEGIN_TRANSFER          = 0;
    parameter AVALON_MM_CSR_USE_BEGIN_BURST_TRANSFER    = 0;
    parameter AVALON_MM_CSR_USE_WAIT_REQUEST            = 1;
    
    parameter AVALON_MM_CSR_AV_FIX_READ_LATENCY         = 0;
    parameter AVALON_MM_CSR_AV_MAX_PENDING_READS        = 0;
    
    parameter AVALON_MM_CSR_AV_BURST_LINEWRAP           = 0;
    parameter AVALON_MM_CSR_AV_BURST_BNDR_ONLY          = 0;
    
    
    
    // ******************************************************************************************
    // Avalon-ST RX Interface
    // ******************************************************************************************
    
    parameter AVALON_ST_RX_ST_SYMBOL_W                  = 8;
    parameter AVALON_ST_RX_ST_NUMSYMBOLS                = 4;
    parameter AVALON_ST_RX_ST_CHANNEL_W                 = 0;
    parameter AVALON_ST_RX_ST_ERROR_W                   = 6;
    parameter AVALON_ST_RX_ST_EMPTY_W                   = 2;
    parameter AVALON_ST_RX_ST_DATA_W                    = AVALON_ST_RX_ST_SYMBOL_W * AVALON_ST_RX_ST_NUMSYMBOLS;
    
    parameter AVALON_ST_RX_ST_READY_LATENCY             = 0;
    parameter AVALON_ST_RX_ST_MAX_CHANNELS	            = 0;
    
    parameter AVALON_ST_RX_USE_PACKET                   = 1;
    parameter AVALON_ST_RX_USE_CHANNEL                  = 0;
    parameter AVALON_ST_RX_USE_ERROR                    = 1;
    parameter AVALON_ST_RX_USE_READY			        = 1;
    parameter AVALON_ST_RX_USE_VALID			        = 1;
    parameter AVALON_ST_RX_USE_EMPTY			        = 1;
    
    
    
    // ******************************************************************************************
    // Avalon-ST TX Interface
    // ******************************************************************************************
    
    parameter AVALON_ST_TX_ST_SYMBOL_W                  = 8;
    parameter AVALON_ST_TX_ST_NUMSYMBOLS                = 4;
    parameter AVALON_ST_TX_ST_CHANNEL_W                 = 0;
    parameter AVALON_ST_TX_ST_ERROR_W                   = 1;
    parameter AVALON_ST_TX_ST_EMPTY_W                   = 2;
    parameter AVALON_ST_TX_ST_DATA_W                    = AVALON_ST_TX_ST_SYMBOL_W * AVALON_ST_TX_ST_NUMSYMBOLS;
    
    parameter AVALON_ST_TX_ST_READY_LATENCY             = 0;
    parameter AVALON_ST_TX_ST_MAX_CHANNELS	            = 0;
    
    parameter AVALON_ST_TX_USE_PACKET                   = 1;
    parameter AVALON_ST_TX_USE_CHANNEL                  = 0;
    parameter AVALON_ST_TX_USE_ERROR                    = 1;
    parameter AVALON_ST_TX_USE_READY			        = 1;
    parameter AVALON_ST_TX_USE_VALID			        = 1;
    parameter AVALON_ST_TX_USE_EMPTY			        = 1;

endpackage

`endif
