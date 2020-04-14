
# (C) 2001-2019 Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Intel 
# Program License Subscription Agreement, Intel MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Intel and sold by Intel 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 17.1.2 304 linux 2019.05.31.10:46:30
# ----------------------------------------
# Auto-generated simulation script rivierapro_setup.tcl
# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     address_decode_mm_to_mac_3.address_decode_mm_to_mac_3
#     address_decode_mm_to_phy_5.address_decode_mm_to_phy_5
#     address_decode_rx_sc_fifo_6.address_decode_rx_sc_fifo_6
#     address_decode_tx_xcvr_clk.address_decode_tx_xcvr_clk
#     address_decode_tx_sc_fifo_5.address_decode_tx_sc_fifo_5
#     address_decode_mm_to_phy_1.address_decode_mm_to_phy_1
#     address_decode_tx_sc_fifo_9.address_decode_tx_sc_fifo_9
#     address_decode_mm_to_phy_9.address_decode_mm_to_phy_9
#     address_decode_mm_to_mac_10.address_decode_mm_to_mac_10
#     address_decode_rx_sc_fifo_2.address_decode_rx_sc_fifo_2
#     address_decode_eth_gen_mon_3.address_decode_eth_gen_mon_3
#     address_decode_mm_to_mac_6.address_decode_mm_to_mac_6
#     address_decode_rx_sc_fifo_10.address_decode_rx_sc_fifo_10
#     address_decode_eth_gen_mon_7.address_decode_eth_gen_mon_7
#     address_decode_eth_gen_mon_8.address_decode_eth_gen_mon_8
#     address_decode_mm_to_mac_4.address_decode_mm_to_mac_4
#     address_decode_eth_gen_mon_0.address_decode_eth_gen_mon_0
#     address_decode_mm_to_mac_0.address_decode_mm_to_mac_0
#     address_decode_tx_sc_fifo_1.address_decode_tx_sc_fifo_1
#     address_decode_mm_to_phy_4.address_decode_mm_to_phy_4
#     address_decode_tx_sc_fifo_11.address_decode_tx_sc_fifo_11
#     address_decode_mm_to_phy_0.address_decode_mm_to_phy_0
#     address_decode_tx_sc_fifo_4.address_decode_tx_sc_fifo_4
#     address_decode_mm_to_mac_9.address_decode_mm_to_mac_9
#     address_decode_mm_to_mac_11.address_decode_mm_to_mac_11
#     address_decode_tx_sc_fifo_8.address_decode_tx_sc_fifo_8
#     address_decode_mm_to_phy_8.address_decode_mm_to_phy_8
#     address_decode_rx_sc_fifo_7.address_decode_rx_sc_fifo_7
#     address_decode_eth_gen_mon_4.address_decode_eth_gen_mon_4
#     address_decode_mm_to_mac_5.address_decode_mm_to_mac_5
#     address_decode_rx_sc_fifo_3.address_decode_rx_sc_fifo_3
#     address_decode_eth_gen_mon_9.address_decode_eth_gen_mon_9
#     address_decode_tx_sc_fifo_10.address_decode_tx_sc_fifo_10
#     address_decode_eth_gen_mon_1.address_decode_eth_gen_mon_1
#     address_decode_rx_xcvr_clk.address_decode_rx_xcvr_clk
#     address_decode_mm_to_mac_1.address_decode_mm_to_mac_1
#     address_decode_mm_to_phy_10.address_decode_mm_to_phy_10
#     address_decode_mm_to_phy_3.address_decode_mm_to_phy_3
#     address_decode_tx_sc_fifo_2.address_decode_tx_sc_fifo_2
#     address_decode_mm_to_mac_8.address_decode_mm_to_mac_8
#     address_decode_rx_sc_fifo_0.address_decode_rx_sc_fifo_0
#     address_decode_tx_sc_fifo_3.address_decode_tx_sc_fifo_3
#     address_decode_eth_gen_mon_11.address_decode_eth_gen_mon_11
#     address_decode_master_0.address_decode_master_0
#     address_decode_tx_sc_fifo_7.address_decode_tx_sc_fifo_7
#     address_decode_mm_to_phy_7.address_decode_mm_to_phy_7
#     address_decode_rx_sc_fifo_8.address_decode_rx_sc_fifo_8
#     address_decode_eth_gen_mon_5.address_decode_eth_gen_mon_5
#     address_decode_rx_sc_fifo_4.address_decode_rx_sc_fifo_4
#     address_decode_mm_to_mac_2.address_decode_mm_to_mac_2
#     address_decode_merlin_master_translator_0.address_decode_merlin_master_translator_0
#     address_decode_mm_to_phy_11.address_decode_mm_to_phy_11
#     address_decode_mm_to_mac_7.address_decode_mm_to_mac_7
#     address_decode_rx_sc_fifo_5.address_decode_rx_sc_fifo_5
#     address_decode_clk_csr.address_decode_clk_csr
#     address_decode_tx_sc_fifo_6.address_decode_tx_sc_fifo_6
#     address_decode_mm_to_phy_2.address_decode_mm_to_phy_2
#     address_decode_tx_sc_fifo_0.address_decode_tx_sc_fifo_0
#     address_decode_eth_gen_mon_2.address_decode_eth_gen_mon_2
#     address_decode_mm_to_phy_6.address_decode_mm_to_phy_6
#     address_decode_eth_gen_mon_6.address_decode_eth_gen_mon_6
#     address_decode_rx_sc_fifo_1.address_decode_rx_sc_fifo_1
#     address_decode_tx_xcvr_half_clk.address_decode_tx_xcvr_half_clk
#     address_decode_rx_sc_fifo_11.address_decode_rx_sc_fifo_11
#     address_decode_eth_gen_mon_10.address_decode_eth_gen_mon_10
#     address_decode_rx_sc_fifo_9.address_decode_rx_sc_fifo_9
#     address_decode.address_decode
# 
# Intel recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level script that compiles Intel simulation libraries and
# the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "aldec.do", and modify the text as directed.
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# set QSYS_SIMDIR <script generation output directory>
# #
# # Source the generated IP simulation script.
# source $QSYS_SIMDIR/aldec/rivierapro_setup.tcl
# #
# # Set any compilation options you require (this is unusual).
# set USER_DEFINED_COMPILE_OPTIONS <compilation options>
# set USER_DEFINED_VHDL_COMPILE_OPTIONS <compilation options for VHDL>
# set USER_DEFINED_VERILOG_COMPILE_OPTIONS <compilation options for Verilog>
# #
# # Call command to compile the Quartus EDA simulation library.
# dev_com
# #
# # Call command to compile the Quartus-generated IP simulation files.
# com
# #
# # Add commands to compile all design files and testbench files, including
# # the top level. (These are all the files required for simulation other
# # than the files compiled by the Quartus-generated IP simulation script)
# #
# vlog -sv2k5 <your compilation options> <design and testbench files>
# #
# # Set the top-level simulation or testbench module/entity name, which is
# # used by the elab command to elaborate the top level.
# #
# set TOP_LEVEL_NAME <simulation top>
# #
# # Set any elaboration options you require.
# set USER_DEFINED_ELAB_OPTIONS <elaboration options>
# #
# # Call command to elaborate your design and testbench.
# elab
# #
# # Run the simulation.
# run
# #
# # Report success to the shell.
# exit -code 0
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "address_decode.address_decode"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "/home/tools/intelFPGA_pro/17.1/quartus/"
}

if ![info exists USER_DEFINED_COMPILE_OPTIONS] { 
  set USER_DEFINED_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_VHDL_COMPILE_OPTIONS] { 
  set USER_DEFINED_VHDL_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_VERILOG_COMPILE_OPTIONS] { 
  set USER_DEFINED_VERILOG_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_ELAB_OPTIONS] { 
  set USER_DEFINED_ELAB_OPTIONS ""
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

set Aldec "Riviera"
if { [ string match "*Active-HDL*" [ vsim -version ] ] } {
  set Aldec "Active"
}

if { [ string match "Active" $Aldec ] } {
  scripterconf -tcl
  createdesign "$TOP_LEVEL_NAME"  "."
  opendesign "$TOP_LEVEL_NAME"
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib      ./libraries     
ensure_lib      ./libraries/work
vmap       work ./libraries/work
ensure_lib                   ./libraries/altera_ver       
vmap       altera_ver        ./libraries/altera_ver       
ensure_lib                   ./libraries/lpm_ver          
vmap       lpm_ver           ./libraries/lpm_ver          
ensure_lib                   ./libraries/sgate_ver        
vmap       sgate_ver         ./libraries/sgate_ver        
ensure_lib                   ./libraries/altera_mf_ver    
vmap       altera_mf_ver     ./libraries/altera_mf_ver    
ensure_lib                   ./libraries/altera_lnsim_ver 
vmap       altera_lnsim_ver  ./libraries/altera_lnsim_ver 
ensure_lib                   ./libraries/twentynm_ver     
vmap       twentynm_ver      ./libraries/twentynm_ver     
ensure_lib                   ./libraries/twentynm_hssi_ver
vmap       twentynm_hssi_ver ./libraries/twentynm_hssi_ver
ensure_lib                   ./libraries/twentynm_hip_ver 
vmap       twentynm_hip_ver  ./libraries/twentynm_hip_ver 
ensure_lib                                              ./libraries/altera_merlin_slave_translator_171          
vmap       altera_merlin_slave_translator_171           ./libraries/altera_merlin_slave_translator_171          
ensure_lib                                              ./libraries/address_decode_mm_to_mac_3                  
vmap       address_decode_mm_to_mac_3                   ./libraries/address_decode_mm_to_mac_3                  
ensure_lib                                              ./libraries/address_decode_mm_to_phy_5                  
vmap       address_decode_mm_to_phy_5                   ./libraries/address_decode_mm_to_phy_5                  
ensure_lib                                              ./libraries/address_decode_rx_sc_fifo_6                 
vmap       address_decode_rx_sc_fifo_6                  ./libraries/address_decode_rx_sc_fifo_6                 
ensure_lib                                              ./libraries/address_decode_tx_xcvr_clk                  
vmap       address_decode_tx_xcvr_clk                   ./libraries/address_decode_tx_xcvr_clk                  
ensure_lib                                              ./libraries/address_decode_tx_sc_fifo_5                 
vmap       address_decode_tx_sc_fifo_5                  ./libraries/address_decode_tx_sc_fifo_5                 
ensure_lib                                              ./libraries/address_decode_mm_to_phy_1                  
vmap       address_decode_mm_to_phy_1                   ./libraries/address_decode_mm_to_phy_1                  
ensure_lib                                              ./libraries/address_decode_tx_sc_fifo_9                 
vmap       address_decode_tx_sc_fifo_9                  ./libraries/address_decode_tx_sc_fifo_9                 
ensure_lib                                              ./libraries/address_decode_mm_to_phy_9                  
vmap       address_decode_mm_to_phy_9                   ./libraries/address_decode_mm_to_phy_9                  
ensure_lib                                              ./libraries/address_decode_mm_to_mac_10                 
vmap       address_decode_mm_to_mac_10                  ./libraries/address_decode_mm_to_mac_10                 
ensure_lib                                              ./libraries/address_decode_rx_sc_fifo_2                 
vmap       address_decode_rx_sc_fifo_2                  ./libraries/address_decode_rx_sc_fifo_2                 
ensure_lib                                              ./libraries/address_decode_eth_gen_mon_3                
vmap       address_decode_eth_gen_mon_3                 ./libraries/address_decode_eth_gen_mon_3                
ensure_lib                                              ./libraries/address_decode_mm_to_mac_6                  
vmap       address_decode_mm_to_mac_6                   ./libraries/address_decode_mm_to_mac_6                  
ensure_lib                                              ./libraries/address_decode_rx_sc_fifo_10                
vmap       address_decode_rx_sc_fifo_10                 ./libraries/address_decode_rx_sc_fifo_10                
ensure_lib                                              ./libraries/address_decode_eth_gen_mon_7                
vmap       address_decode_eth_gen_mon_7                 ./libraries/address_decode_eth_gen_mon_7                
ensure_lib                                              ./libraries/address_decode_eth_gen_mon_8                
vmap       address_decode_eth_gen_mon_8                 ./libraries/address_decode_eth_gen_mon_8                
ensure_lib                                              ./libraries/address_decode_mm_to_mac_4                  
vmap       address_decode_mm_to_mac_4                   ./libraries/address_decode_mm_to_mac_4                  
ensure_lib                                              ./libraries/address_decode_eth_gen_mon_0                
vmap       address_decode_eth_gen_mon_0                 ./libraries/address_decode_eth_gen_mon_0                
ensure_lib                                              ./libraries/address_decode_mm_to_mac_0                  
vmap       address_decode_mm_to_mac_0                   ./libraries/address_decode_mm_to_mac_0                  
ensure_lib                                              ./libraries/address_decode_tx_sc_fifo_1                 
vmap       address_decode_tx_sc_fifo_1                  ./libraries/address_decode_tx_sc_fifo_1                 
ensure_lib                                              ./libraries/address_decode_mm_to_phy_4                  
vmap       address_decode_mm_to_phy_4                   ./libraries/address_decode_mm_to_phy_4                  
ensure_lib                                              ./libraries/address_decode_tx_sc_fifo_11                
vmap       address_decode_tx_sc_fifo_11                 ./libraries/address_decode_tx_sc_fifo_11                
ensure_lib                                              ./libraries/address_decode_mm_to_phy_0                  
vmap       address_decode_mm_to_phy_0                   ./libraries/address_decode_mm_to_phy_0                  
ensure_lib                                              ./libraries/address_decode_tx_sc_fifo_4                 
vmap       address_decode_tx_sc_fifo_4                  ./libraries/address_decode_tx_sc_fifo_4                 
ensure_lib                                              ./libraries/address_decode_mm_to_mac_9                  
vmap       address_decode_mm_to_mac_9                   ./libraries/address_decode_mm_to_mac_9                  
ensure_lib                                              ./libraries/address_decode_mm_to_mac_11                 
vmap       address_decode_mm_to_mac_11                  ./libraries/address_decode_mm_to_mac_11                 
ensure_lib                                              ./libraries/address_decode_tx_sc_fifo_8                 
vmap       address_decode_tx_sc_fifo_8                  ./libraries/address_decode_tx_sc_fifo_8                 
ensure_lib                                              ./libraries/address_decode_mm_to_phy_8                  
vmap       address_decode_mm_to_phy_8                   ./libraries/address_decode_mm_to_phy_8                  
ensure_lib                                              ./libraries/address_decode_rx_sc_fifo_7                 
vmap       address_decode_rx_sc_fifo_7                  ./libraries/address_decode_rx_sc_fifo_7                 
ensure_lib                                              ./libraries/address_decode_eth_gen_mon_4                
vmap       address_decode_eth_gen_mon_4                 ./libraries/address_decode_eth_gen_mon_4                
ensure_lib                                              ./libraries/address_decode_mm_to_mac_5                  
vmap       address_decode_mm_to_mac_5                   ./libraries/address_decode_mm_to_mac_5                  
ensure_lib                                              ./libraries/address_decode_rx_sc_fifo_3                 
vmap       address_decode_rx_sc_fifo_3                  ./libraries/address_decode_rx_sc_fifo_3                 
ensure_lib                                              ./libraries/address_decode_eth_gen_mon_9                
vmap       address_decode_eth_gen_mon_9                 ./libraries/address_decode_eth_gen_mon_9                
ensure_lib                                              ./libraries/address_decode_tx_sc_fifo_10                
vmap       address_decode_tx_sc_fifo_10                 ./libraries/address_decode_tx_sc_fifo_10                
ensure_lib                                              ./libraries/address_decode_eth_gen_mon_1                
vmap       address_decode_eth_gen_mon_1                 ./libraries/address_decode_eth_gen_mon_1                
ensure_lib                                              ./libraries/address_decode_rx_xcvr_clk                  
vmap       address_decode_rx_xcvr_clk                   ./libraries/address_decode_rx_xcvr_clk                  
ensure_lib                                              ./libraries/address_decode_mm_to_mac_1                  
vmap       address_decode_mm_to_mac_1                   ./libraries/address_decode_mm_to_mac_1                  
ensure_lib                                              ./libraries/address_decode_mm_to_phy_10                 
vmap       address_decode_mm_to_phy_10                  ./libraries/address_decode_mm_to_phy_10                 
ensure_lib                                              ./libraries/address_decode_mm_to_phy_3                  
vmap       address_decode_mm_to_phy_3                   ./libraries/address_decode_mm_to_phy_3                  
ensure_lib                                              ./libraries/address_decode_tx_sc_fifo_2                 
vmap       address_decode_tx_sc_fifo_2                  ./libraries/address_decode_tx_sc_fifo_2                 
ensure_lib                                              ./libraries/address_decode_mm_to_mac_8                  
vmap       address_decode_mm_to_mac_8                   ./libraries/address_decode_mm_to_mac_8                  
ensure_lib                                              ./libraries/address_decode_rx_sc_fifo_0                 
vmap       address_decode_rx_sc_fifo_0                  ./libraries/address_decode_rx_sc_fifo_0                 
ensure_lib                                              ./libraries/address_decode_tx_sc_fifo_3                 
vmap       address_decode_tx_sc_fifo_3                  ./libraries/address_decode_tx_sc_fifo_3                 
ensure_lib                                              ./libraries/address_decode_eth_gen_mon_11               
vmap       address_decode_eth_gen_mon_11                ./libraries/address_decode_eth_gen_mon_11               
ensure_lib                                              ./libraries/altera_jtag_dc_streaming_171                
vmap       altera_jtag_dc_streaming_171                 ./libraries/altera_jtag_dc_streaming_171                
ensure_lib                                              ./libraries/timing_adapter_171                          
vmap       timing_adapter_171                           ./libraries/timing_adapter_171                          
ensure_lib                                              ./libraries/altera_avalon_sc_fifo_171                   
vmap       altera_avalon_sc_fifo_171                    ./libraries/altera_avalon_sc_fifo_171                   
ensure_lib                                              ./libraries/altera_avalon_st_bytes_to_packets_171       
vmap       altera_avalon_st_bytes_to_packets_171        ./libraries/altera_avalon_st_bytes_to_packets_171       
ensure_lib                                              ./libraries/altera_avalon_st_packets_to_bytes_171       
vmap       altera_avalon_st_packets_to_bytes_171        ./libraries/altera_avalon_st_packets_to_bytes_171       
ensure_lib                                              ./libraries/altera_avalon_packets_to_master_171         
vmap       altera_avalon_packets_to_master_171          ./libraries/altera_avalon_packets_to_master_171         
ensure_lib                                              ./libraries/channel_adapter_171                         
vmap       channel_adapter_171                          ./libraries/channel_adapter_171                         
ensure_lib                                              ./libraries/altera_reset_controller_171                 
vmap       altera_reset_controller_171                  ./libraries/altera_reset_controller_171                 
ensure_lib                                              ./libraries/altera_jtag_avalon_master_171               
vmap       altera_jtag_avalon_master_171                ./libraries/altera_jtag_avalon_master_171               
ensure_lib                                              ./libraries/address_decode_master_0                     
vmap       address_decode_master_0                      ./libraries/address_decode_master_0                     
ensure_lib                                              ./libraries/address_decode_tx_sc_fifo_7                 
vmap       address_decode_tx_sc_fifo_7                  ./libraries/address_decode_tx_sc_fifo_7                 
ensure_lib                                              ./libraries/address_decode_mm_to_phy_7                  
vmap       address_decode_mm_to_phy_7                   ./libraries/address_decode_mm_to_phy_7                  
ensure_lib                                              ./libraries/address_decode_rx_sc_fifo_8                 
vmap       address_decode_rx_sc_fifo_8                  ./libraries/address_decode_rx_sc_fifo_8                 
ensure_lib                                              ./libraries/address_decode_eth_gen_mon_5                
vmap       address_decode_eth_gen_mon_5                 ./libraries/address_decode_eth_gen_mon_5                
ensure_lib                                              ./libraries/address_decode_rx_sc_fifo_4                 
vmap       address_decode_rx_sc_fifo_4                  ./libraries/address_decode_rx_sc_fifo_4                 
ensure_lib                                              ./libraries/address_decode_mm_to_mac_2                  
vmap       address_decode_mm_to_mac_2                   ./libraries/address_decode_mm_to_mac_2                  
ensure_lib                                              ./libraries/altera_merlin_master_translator_171         
vmap       altera_merlin_master_translator_171          ./libraries/altera_merlin_master_translator_171         
ensure_lib                                              ./libraries/address_decode_merlin_master_translator_0   
vmap       address_decode_merlin_master_translator_0    ./libraries/address_decode_merlin_master_translator_0   
ensure_lib                                              ./libraries/address_decode_mm_to_phy_11                 
vmap       address_decode_mm_to_phy_11                  ./libraries/address_decode_mm_to_phy_11                 
ensure_lib                                              ./libraries/address_decode_mm_to_mac_7                  
vmap       address_decode_mm_to_mac_7                   ./libraries/address_decode_mm_to_mac_7                  
ensure_lib                                              ./libraries/address_decode_rx_sc_fifo_5                 
vmap       address_decode_rx_sc_fifo_5                  ./libraries/address_decode_rx_sc_fifo_5                 
ensure_lib                                              ./libraries/address_decode_clk_csr                      
vmap       address_decode_clk_csr                       ./libraries/address_decode_clk_csr                      
ensure_lib                                              ./libraries/address_decode_tx_sc_fifo_6                 
vmap       address_decode_tx_sc_fifo_6                  ./libraries/address_decode_tx_sc_fifo_6                 
ensure_lib                                              ./libraries/address_decode_mm_to_phy_2                  
vmap       address_decode_mm_to_phy_2                   ./libraries/address_decode_mm_to_phy_2                  
ensure_lib                                              ./libraries/address_decode_tx_sc_fifo_0                 
vmap       address_decode_tx_sc_fifo_0                  ./libraries/address_decode_tx_sc_fifo_0                 
ensure_lib                                              ./libraries/address_decode_eth_gen_mon_2                
vmap       address_decode_eth_gen_mon_2                 ./libraries/address_decode_eth_gen_mon_2                
ensure_lib                                              ./libraries/address_decode_mm_to_phy_6                  
vmap       address_decode_mm_to_phy_6                   ./libraries/address_decode_mm_to_phy_6                  
ensure_lib                                              ./libraries/address_decode_eth_gen_mon_6                
vmap       address_decode_eth_gen_mon_6                 ./libraries/address_decode_eth_gen_mon_6                
ensure_lib                                              ./libraries/address_decode_rx_sc_fifo_1                 
vmap       address_decode_rx_sc_fifo_1                  ./libraries/address_decode_rx_sc_fifo_1                 
ensure_lib                                              ./libraries/address_decode_tx_xcvr_half_clk             
vmap       address_decode_tx_xcvr_half_clk              ./libraries/address_decode_tx_xcvr_half_clk             
ensure_lib                                              ./libraries/address_decode_rx_sc_fifo_11                
vmap       address_decode_rx_sc_fifo_11                 ./libraries/address_decode_rx_sc_fifo_11                
ensure_lib                                              ./libraries/address_decode_eth_gen_mon_10               
vmap       address_decode_eth_gen_mon_10                ./libraries/address_decode_eth_gen_mon_10               
ensure_lib                                              ./libraries/address_decode_rx_sc_fifo_9                 
vmap       address_decode_rx_sc_fifo_9                  ./libraries/address_decode_rx_sc_fifo_9                 
ensure_lib                                              ./libraries/altera_merlin_master_agent_171              
vmap       altera_merlin_master_agent_171               ./libraries/altera_merlin_master_agent_171              
ensure_lib                                              ./libraries/altera_merlin_slave_agent_171               
vmap       altera_merlin_slave_agent_171                ./libraries/altera_merlin_slave_agent_171               
ensure_lib                                              ./libraries/altera_merlin_router_171                    
vmap       altera_merlin_router_171                     ./libraries/altera_merlin_router_171                    
ensure_lib                                              ./libraries/altera_merlin_traffic_limiter_171           
vmap       altera_merlin_traffic_limiter_171            ./libraries/altera_merlin_traffic_limiter_171           
ensure_lib                                              ./libraries/altera_merlin_burst_adapter_171             
vmap       altera_merlin_burst_adapter_171              ./libraries/altera_merlin_burst_adapter_171             
ensure_lib                                              ./libraries/altera_merlin_demultiplexer_171             
vmap       altera_merlin_demultiplexer_171              ./libraries/altera_merlin_demultiplexer_171             
ensure_lib                                              ./libraries/altera_merlin_multiplexer_171               
vmap       altera_merlin_multiplexer_171                ./libraries/altera_merlin_multiplexer_171               
ensure_lib                                              ./libraries/altera_avalon_st_handshake_clock_crosser_171
vmap       altera_avalon_st_handshake_clock_crosser_171 ./libraries/altera_avalon_st_handshake_clock_crosser_171
ensure_lib                                              ./libraries/error_adapter_171                           
vmap       error_adapter_171                            ./libraries/error_adapter_171                           
ensure_lib                                              ./libraries/altera_avalon_st_adapter_171                
vmap       altera_avalon_st_adapter_171                 ./libraries/altera_avalon_st_adapter_171                
ensure_lib                                              ./libraries/altera_mm_interconnect_171                  
vmap       altera_mm_interconnect_171                   ./libraries/altera_mm_interconnect_171                  
ensure_lib                                              ./libraries/address_decode                              
vmap       address_decode                               ./libraries/address_decode                              

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  eval vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                -work altera_ver       
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                         -work lpm_ver          
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                            -work sgate_ver        
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                        -work altera_mf_ver    
  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                    -work altera_lnsim_ver 
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_atoms.v"                   -work twentynm_ver     
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/twentynm_atoms_ncrypt.v"      -work twentynm_ver     
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/twentynm_hssi_atoms_ncrypt.v" -work twentynm_hssi_ver
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hssi_atoms.v"              -work twentynm_hssi_ver
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/twentynm_hip_atoms_ncrypt.v"  -work twentynm_hip_ver 
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hip_atoms.v"               -work twentynm_hip_ver 
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_3/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_3/sim/address_decode_mm_to_mac_3.v"                                                               -work address_decode_mm_to_mac_3                  
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_5/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_5/sim/address_decode_mm_to_phy_5.v"                                                               -work address_decode_mm_to_phy_5                  
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_6/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_6/sim/address_decode_rx_sc_fifo_6.v"                                                             -work address_decode_rx_sc_fifo_6                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_xcvr_clk/sim/address_decode_tx_xcvr_clk.v"                                                               -work address_decode_tx_xcvr_clk                  
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_5/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_5/sim/address_decode_tx_sc_fifo_5.v"                                                             -work address_decode_tx_sc_fifo_5                 
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_1/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_1/sim/address_decode_mm_to_phy_1.v"                                                               -work address_decode_mm_to_phy_1                  
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_9/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_9/sim/address_decode_tx_sc_fifo_9.v"                                                             -work address_decode_tx_sc_fifo_9                 
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_9/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_9/sim/address_decode_mm_to_phy_9.v"                                                               -work address_decode_mm_to_phy_9                  
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_10/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_10/sim/address_decode_mm_to_mac_10.v"                                                             -work address_decode_mm_to_mac_10                 
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_2/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_2/sim/address_decode_rx_sc_fifo_2.v"                                                             -work address_decode_rx_sc_fifo_2                 
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_3/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_3/sim/address_decode_eth_gen_mon_3.v"                                                           -work address_decode_eth_gen_mon_3                
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_6/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_6/sim/address_decode_mm_to_mac_6.v"                                                               -work address_decode_mm_to_mac_6                  
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_10/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_10/sim/address_decode_rx_sc_fifo_10.v"                                                           -work address_decode_rx_sc_fifo_10                
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_7/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_7/sim/address_decode_eth_gen_mon_7.v"                                                           -work address_decode_eth_gen_mon_7                
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_8/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_8/sim/address_decode_eth_gen_mon_8.v"                                                           -work address_decode_eth_gen_mon_8                
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_4/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_4/sim/address_decode_mm_to_mac_4.v"                                                               -work address_decode_mm_to_mac_4                  
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_0/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_0/sim/address_decode_eth_gen_mon_0.v"                                                           -work address_decode_eth_gen_mon_0                
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_0/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_0/sim/address_decode_mm_to_mac_0.v"                                                               -work address_decode_mm_to_mac_0                  
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_1/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_1/sim/address_decode_tx_sc_fifo_1.v"                                                             -work address_decode_tx_sc_fifo_1                 
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_4/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_4/sim/address_decode_mm_to_phy_4.v"                                                               -work address_decode_mm_to_phy_4                  
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_11/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_11/sim/address_decode_tx_sc_fifo_11.v"                                                           -work address_decode_tx_sc_fifo_11                
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_0/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_0/sim/address_decode_mm_to_phy_0.v"                                                               -work address_decode_mm_to_phy_0                  
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_4/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_4/sim/address_decode_tx_sc_fifo_4.v"                                                             -work address_decode_tx_sc_fifo_4                 
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_9/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_9/sim/address_decode_mm_to_mac_9.v"                                                               -work address_decode_mm_to_mac_9                  
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_11/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_11/sim/address_decode_mm_to_mac_11.v"                                                             -work address_decode_mm_to_mac_11                 
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_8/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_8/sim/address_decode_tx_sc_fifo_8.v"                                                             -work address_decode_tx_sc_fifo_8                 
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_8/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_8/sim/address_decode_mm_to_phy_8.v"                                                               -work address_decode_mm_to_phy_8                  
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_7/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_7/sim/address_decode_rx_sc_fifo_7.v"                                                             -work address_decode_rx_sc_fifo_7                 
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_4/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_4/sim/address_decode_eth_gen_mon_4.v"                                                           -work address_decode_eth_gen_mon_4                
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_5/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_5/sim/address_decode_mm_to_mac_5.v"                                                               -work address_decode_mm_to_mac_5                  
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_3/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_3/sim/address_decode_rx_sc_fifo_3.v"                                                             -work address_decode_rx_sc_fifo_3                 
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_9/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_9/sim/address_decode_eth_gen_mon_9.v"                                                           -work address_decode_eth_gen_mon_9                
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_10/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_10/sim/address_decode_tx_sc_fifo_10.v"                                                           -work address_decode_tx_sc_fifo_10                
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_1/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_1/sim/address_decode_eth_gen_mon_1.v"                                                           -work address_decode_eth_gen_mon_1                
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_xcvr_clk/sim/address_decode_rx_xcvr_clk.v"                                                               -work address_decode_rx_xcvr_clk                  
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_1/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_1/sim/address_decode_mm_to_mac_1.v"                                                               -work address_decode_mm_to_mac_1                  
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_10/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_10/sim/address_decode_mm_to_phy_10.v"                                                             -work address_decode_mm_to_phy_10                 
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_3/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_3/sim/address_decode_mm_to_phy_3.v"                                                               -work address_decode_mm_to_phy_3                  
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_2/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_2/sim/address_decode_tx_sc_fifo_2.v"                                                             -work address_decode_tx_sc_fifo_2                 
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_8/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_8/sim/address_decode_mm_to_mac_8.v"                                                               -work address_decode_mm_to_mac_8                  
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_0/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_0/sim/address_decode_rx_sc_fifo_0.v"                                                             -work address_decode_rx_sc_fifo_0                 
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_3/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_3/sim/address_decode_tx_sc_fifo_3.v"                                                             -work address_decode_tx_sc_fifo_3                 
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_11/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                    -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_11/sim/address_decode_eth_gen_mon_11.v"                                                         -work address_decode_eth_gen_mon_11               
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_avalon_st_jtag_interface.v"                                -work altera_jtag_dc_streaming_171                
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_jtag_dc_streaming.v"                                       -work altera_jtag_dc_streaming_171                
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_jtag_sld_node.v"                                           -work altera_jtag_dc_streaming_171                
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_jtag_streaming.v"                                          -work altera_jtag_dc_streaming_171                
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_avalon_st_clock_crosser.v"                                 -work altera_jtag_dc_streaming_171                
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_std_synchronizer_nocut.v"                                  -work altera_jtag_dc_streaming_171                
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_avalon_st_pipeline_base.v"                                 -work altera_jtag_dc_streaming_171                
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_avalon_st_idle_remover.v"                                  -work altera_jtag_dc_streaming_171                
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_avalon_st_idle_inserter.v"                                 -work altera_jtag_dc_streaming_171                
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_avalon_st_pipeline_stage.sv"                               -work altera_jtag_dc_streaming_171                
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/timing_adapter_171/sim/address_decode_master_0_timing_adapter_171_xf5weri.sv"                      -work timing_adapter_171                          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_avalon_sc_fifo_171/sim/altera_avalon_sc_fifo.v"                                             -work altera_avalon_sc_fifo_171                   
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_avalon_st_bytes_to_packets_171/sim/altera_avalon_st_bytes_to_packets.v"                     -work altera_avalon_st_bytes_to_packets_171       
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_avalon_st_packets_to_bytes_171/sim/altera_avalon_st_packets_to_bytes.v"                     -work altera_avalon_st_packets_to_bytes_171       
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_avalon_packets_to_master_171/sim/altera_avalon_packets_to_master.v"                         -work altera_avalon_packets_to_master_171         
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/channel_adapter_171/sim/address_decode_master_0_channel_adapter_171_2swajja.sv"                    -work channel_adapter_171                         
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/channel_adapter_171/sim/address_decode_master_0_channel_adapter_171_vh2yu6y.sv"                    -work channel_adapter_171                         
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_reset_controller_171/sim/altera_reset_controller.v"                                         -work altera_reset_controller_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_reset_controller_171/sim/altera_reset_synchronizer.v"                                       -work altera_reset_controller_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_avalon_master_171/sim/address_decode_master_0_altera_jtag_avalon_master_171_wqhllki.v" -work altera_jtag_avalon_master_171               
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/sim/address_decode_master_0.v"                                                                     -work address_decode_master_0                     
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_7/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_7/sim/address_decode_tx_sc_fifo_7.v"                                                             -work address_decode_tx_sc_fifo_7                 
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_7/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_7/sim/address_decode_mm_to_phy_7.v"                                                               -work address_decode_mm_to_phy_7                  
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_8/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_8/sim/address_decode_rx_sc_fifo_8.v"                                                             -work address_decode_rx_sc_fifo_8                 
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_5/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_5/sim/address_decode_eth_gen_mon_5.v"                                                           -work address_decode_eth_gen_mon_5                
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_4/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_4/sim/address_decode_rx_sc_fifo_4.v"                                                             -work address_decode_rx_sc_fifo_4                 
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_2/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_2/sim/address_decode_mm_to_mac_2.v"                                                               -work address_decode_mm_to_mac_2                  
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_merlin_master_translator_0/altera_merlin_master_translator_171/sim/altera_merlin_master_translator.sv"      -work altera_merlin_master_translator_171         
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_merlin_master_translator_0/sim/address_decode_merlin_master_translator_0.v"                                 -work address_decode_merlin_master_translator_0   
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_11/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_11/sim/address_decode_mm_to_phy_11.v"                                                             -work address_decode_mm_to_phy_11                 
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_7/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_7/sim/address_decode_mm_to_mac_7.v"                                                               -work address_decode_mm_to_mac_7                  
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_5/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_5/sim/address_decode_rx_sc_fifo_5.v"                                                             -work address_decode_rx_sc_fifo_5                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_clk_csr/sim/address_decode_clk_csr.v"                                                                       -work address_decode_clk_csr                      
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_6/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_6/sim/address_decode_tx_sc_fifo_6.v"                                                             -work address_decode_tx_sc_fifo_6                 
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_2/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_2/sim/address_decode_mm_to_phy_2.v"                                                               -work address_decode_mm_to_phy_2                  
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_0/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_0/sim/address_decode_tx_sc_fifo_0.v"                                                             -work address_decode_tx_sc_fifo_0                 
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_2/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_2/sim/address_decode_eth_gen_mon_2.v"                                                           -work address_decode_eth_gen_mon_2                
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_6/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_6/sim/address_decode_mm_to_phy_6.v"                                                               -work address_decode_mm_to_phy_6                  
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_6/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_6/sim/address_decode_eth_gen_mon_6.v"                                                           -work address_decode_eth_gen_mon_6                
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_1/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_1/sim/address_decode_rx_sc_fifo_1.v"                                                             -work address_decode_rx_sc_fifo_1                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_xcvr_half_clk/sim/address_decode_tx_xcvr_half_clk.v"                                                     -work address_decode_tx_xcvr_half_clk             
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_11/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_11/sim/address_decode_rx_sc_fifo_11.v"                                                           -work address_decode_rx_sc_fifo_11                
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_10/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                    -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_10/sim/address_decode_eth_gen_mon_10.v"                                                         -work address_decode_eth_gen_mon_10               
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_9/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171          
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_9/sim/address_decode_rx_sc_fifo_9.v"                                                             -work address_decode_rx_sc_fifo_9                 
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_master_translator_171/sim/altera_merlin_master_translator.sv"                                                                     -work altera_merlin_master_translator_171         
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                                                                       -work altera_merlin_slave_translator_171          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_master_agent_171/sim/altera_merlin_master_agent.sv"                                                                               -work altera_merlin_master_agent_171              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_slave_agent_171/sim/altera_merlin_slave_agent.sv"                                                                                 -work altera_merlin_slave_agent_171               
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_slave_agent_171/sim/altera_merlin_burst_uncompressor.sv"                                                                          -work altera_merlin_slave_agent_171               
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_avalon_sc_fifo_171/sim/altera_avalon_sc_fifo.v"                                                                                          -work altera_avalon_sc_fifo_171                   
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_router_171/sim/address_decode_altera_merlin_router_171_w3toeyq.sv"                                                                -work altera_merlin_router_171                    
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_router_171/sim/address_decode_altera_merlin_router_171_bqlzivi.sv"                                                                -work altera_merlin_router_171                    
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_merlin_traffic_limiter.sv"                                                                         -work altera_merlin_traffic_limiter_171           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_merlin_reorder_memory.sv"                                                                          -work altera_merlin_traffic_limiter_171           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_avalon_sc_fifo.v"                                                                                  -work altera_merlin_traffic_limiter_171           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_avalon_st_pipeline_base.v"                                                                         -work altera_merlin_traffic_limiter_171           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter.sv"                                                                             -work altera_merlin_burst_adapter_171             
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter_uncmpr.sv"                                                                      -work altera_merlin_burst_adapter_171             
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter_13_1.sv"                                                                        -work altera_merlin_burst_adapter_171             
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter_new.sv"                                                                         -work altera_merlin_burst_adapter_171             
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_incr_burst_converter.sv"                                                                             -work altera_merlin_burst_adapter_171             
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_wrap_burst_converter.sv"                                                                             -work altera_merlin_burst_adapter_171             
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_default_burst_converter.sv"                                                                          -work altera_merlin_burst_adapter_171             
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_address_alignment.sv"                                                                         -work altera_merlin_burst_adapter_171             
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_avalon_st_pipeline_stage.sv"                                                                         -work altera_merlin_burst_adapter_171             
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_avalon_st_pipeline_base.v"                                                                           -work altera_merlin_burst_adapter_171             
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/address_decode_altera_merlin_demultiplexer_171_onh36ji.sv"                                                  -work altera_merlin_demultiplexer_171             
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/address_decode_altera_merlin_multiplexer_171_fakbnaa.sv"                                                      -work altera_merlin_multiplexer_171               
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                  -work altera_merlin_multiplexer_171               
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/address_decode_altera_merlin_demultiplexer_171_7pyrkka.sv"                                                  -work altera_merlin_demultiplexer_171             
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/address_decode_altera_merlin_multiplexer_171_hwli37a.sv"                                                      -work altera_merlin_multiplexer_171               
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                  -work altera_merlin_multiplexer_171               
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_avalon_st_handshake_clock_crosser_171/sim/altera_avalon_st_handshake_clock_crosser.v"                                                    -work altera_avalon_st_handshake_clock_crosser_171
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_avalon_st_handshake_clock_crosser_171/sim/altera_avalon_st_clock_crosser.v"                                                              -work altera_avalon_st_handshake_clock_crosser_171
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_avalon_st_handshake_clock_crosser_171/sim/altera_avalon_st_pipeline_base.v"                                                              -work altera_avalon_st_handshake_clock_crosser_171
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../altera_avalon_st_handshake_clock_crosser_171/sim/altera_std_synchronizer_nocut.v"                                                               -work altera_avalon_st_handshake_clock_crosser_171
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../error_adapter_171/sim/address_decode_error_adapter_171_nt3czwq.sv"                                                                              -work error_adapter_171                           
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_avalon_st_adapter_171/sim/address_decode_altera_avalon_st_adapter_171_yxzsrmq.v"                                                         -work altera_avalon_st_adapter_171                
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_mm_interconnect_171/sim/address_decode_altera_mm_interconnect_171_efl2mvi.v"                                                             -work altera_mm_interconnect_171                  
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_reset_controller_171/sim/altera_reset_controller.v"                                                                                      -work altera_reset_controller_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_reset_controller_171/sim/altera_reset_synchronizer.v"                                                                                    -work altera_reset_controller_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/address_decode.v"                                                                                                                                  -work address_decode                              
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim +access +r -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L altera_merlin_slave_translator_171 -L address_decode_mm_to_mac_3 -L address_decode_mm_to_phy_5 -L address_decode_rx_sc_fifo_6 -L address_decode_tx_xcvr_clk -L address_decode_tx_sc_fifo_5 -L address_decode_mm_to_phy_1 -L address_decode_tx_sc_fifo_9 -L address_decode_mm_to_phy_9 -L address_decode_mm_to_mac_10 -L address_decode_rx_sc_fifo_2 -L address_decode_eth_gen_mon_3 -L address_decode_mm_to_mac_6 -L address_decode_rx_sc_fifo_10 -L address_decode_eth_gen_mon_7 -L address_decode_eth_gen_mon_8 -L address_decode_mm_to_mac_4 -L address_decode_eth_gen_mon_0 -L address_decode_mm_to_mac_0 -L address_decode_tx_sc_fifo_1 -L address_decode_mm_to_phy_4 -L address_decode_tx_sc_fifo_11 -L address_decode_mm_to_phy_0 -L address_decode_tx_sc_fifo_4 -L address_decode_mm_to_mac_9 -L address_decode_mm_to_mac_11 -L address_decode_tx_sc_fifo_8 -L address_decode_mm_to_phy_8 -L address_decode_rx_sc_fifo_7 -L address_decode_eth_gen_mon_4 -L address_decode_mm_to_mac_5 -L address_decode_rx_sc_fifo_3 -L address_decode_eth_gen_mon_9 -L address_decode_tx_sc_fifo_10 -L address_decode_eth_gen_mon_1 -L address_decode_rx_xcvr_clk -L address_decode_mm_to_mac_1 -L address_decode_mm_to_phy_10 -L address_decode_mm_to_phy_3 -L address_decode_tx_sc_fifo_2 -L address_decode_mm_to_mac_8 -L address_decode_rx_sc_fifo_0 -L address_decode_tx_sc_fifo_3 -L address_decode_eth_gen_mon_11 -L altera_jtag_dc_streaming_171 -L timing_adapter_171 -L altera_avalon_sc_fifo_171 -L altera_avalon_st_bytes_to_packets_171 -L altera_avalon_st_packets_to_bytes_171 -L altera_avalon_packets_to_master_171 -L channel_adapter_171 -L altera_reset_controller_171 -L altera_jtag_avalon_master_171 -L address_decode_master_0 -L address_decode_tx_sc_fifo_7 -L address_decode_mm_to_phy_7 -L address_decode_rx_sc_fifo_8 -L address_decode_eth_gen_mon_5 -L address_decode_rx_sc_fifo_4 -L address_decode_mm_to_mac_2 -L altera_merlin_master_translator_171 -L address_decode_merlin_master_translator_0 -L address_decode_mm_to_phy_11 -L address_decode_mm_to_mac_7 -L address_decode_rx_sc_fifo_5 -L address_decode_clk_csr -L address_decode_tx_sc_fifo_6 -L address_decode_mm_to_phy_2 -L address_decode_tx_sc_fifo_0 -L address_decode_eth_gen_mon_2 -L address_decode_mm_to_phy_6 -L address_decode_eth_gen_mon_6 -L address_decode_rx_sc_fifo_1 -L address_decode_tx_xcvr_half_clk -L address_decode_rx_sc_fifo_11 -L address_decode_eth_gen_mon_10 -L address_decode_rx_sc_fifo_9 -L altera_merlin_master_agent_171 -L altera_merlin_slave_agent_171 -L altera_merlin_router_171 -L altera_merlin_traffic_limiter_171 -L altera_merlin_burst_adapter_171 -L altera_merlin_demultiplexer_171 -L altera_merlin_multiplexer_171 -L altera_avalon_st_handshake_clock_crosser_171 -L error_adapter_171 -L altera_avalon_st_adapter_171 -L altera_mm_interconnect_171 -L address_decode -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L twentynm_ver -L twentynm_hssi_ver -L twentynm_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with -dbg -O2 option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -dbg -O2 +access +r -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L altera_merlin_slave_translator_171 -L address_decode_mm_to_mac_3 -L address_decode_mm_to_phy_5 -L address_decode_rx_sc_fifo_6 -L address_decode_tx_xcvr_clk -L address_decode_tx_sc_fifo_5 -L address_decode_mm_to_phy_1 -L address_decode_tx_sc_fifo_9 -L address_decode_mm_to_phy_9 -L address_decode_mm_to_mac_10 -L address_decode_rx_sc_fifo_2 -L address_decode_eth_gen_mon_3 -L address_decode_mm_to_mac_6 -L address_decode_rx_sc_fifo_10 -L address_decode_eth_gen_mon_7 -L address_decode_eth_gen_mon_8 -L address_decode_mm_to_mac_4 -L address_decode_eth_gen_mon_0 -L address_decode_mm_to_mac_0 -L address_decode_tx_sc_fifo_1 -L address_decode_mm_to_phy_4 -L address_decode_tx_sc_fifo_11 -L address_decode_mm_to_phy_0 -L address_decode_tx_sc_fifo_4 -L address_decode_mm_to_mac_9 -L address_decode_mm_to_mac_11 -L address_decode_tx_sc_fifo_8 -L address_decode_mm_to_phy_8 -L address_decode_rx_sc_fifo_7 -L address_decode_eth_gen_mon_4 -L address_decode_mm_to_mac_5 -L address_decode_rx_sc_fifo_3 -L address_decode_eth_gen_mon_9 -L address_decode_tx_sc_fifo_10 -L address_decode_eth_gen_mon_1 -L address_decode_rx_xcvr_clk -L address_decode_mm_to_mac_1 -L address_decode_mm_to_phy_10 -L address_decode_mm_to_phy_3 -L address_decode_tx_sc_fifo_2 -L address_decode_mm_to_mac_8 -L address_decode_rx_sc_fifo_0 -L address_decode_tx_sc_fifo_3 -L address_decode_eth_gen_mon_11 -L altera_jtag_dc_streaming_171 -L timing_adapter_171 -L altera_avalon_sc_fifo_171 -L altera_avalon_st_bytes_to_packets_171 -L altera_avalon_st_packets_to_bytes_171 -L altera_avalon_packets_to_master_171 -L channel_adapter_171 -L altera_reset_controller_171 -L altera_jtag_avalon_master_171 -L address_decode_master_0 -L address_decode_tx_sc_fifo_7 -L address_decode_mm_to_phy_7 -L address_decode_rx_sc_fifo_8 -L address_decode_eth_gen_mon_5 -L address_decode_rx_sc_fifo_4 -L address_decode_mm_to_mac_2 -L altera_merlin_master_translator_171 -L address_decode_merlin_master_translator_0 -L address_decode_mm_to_phy_11 -L address_decode_mm_to_mac_7 -L address_decode_rx_sc_fifo_5 -L address_decode_clk_csr -L address_decode_tx_sc_fifo_6 -L address_decode_mm_to_phy_2 -L address_decode_tx_sc_fifo_0 -L address_decode_eth_gen_mon_2 -L address_decode_mm_to_phy_6 -L address_decode_eth_gen_mon_6 -L address_decode_rx_sc_fifo_1 -L address_decode_tx_xcvr_half_clk -L address_decode_rx_sc_fifo_11 -L address_decode_eth_gen_mon_10 -L address_decode_rx_sc_fifo_9 -L altera_merlin_master_agent_171 -L altera_merlin_slave_agent_171 -L altera_merlin_router_171 -L altera_merlin_traffic_limiter_171 -L altera_merlin_burst_adapter_171 -L altera_merlin_demultiplexer_171 -L altera_merlin_multiplexer_171 -L altera_avalon_st_handshake_clock_crosser_171 -L error_adapter_171 -L altera_avalon_st_adapter_171 -L altera_mm_interconnect_171 -L address_decode -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L twentynm_ver -L twentynm_hssi_ver -L twentynm_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -dbg -O2
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                                         -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                                           -- Compile device library files"
  echo
  echo "com                                               -- Compile the design files in correct order"
  echo
  echo "elab                                              -- Elaborate top level design"
  echo
  echo "elab_debug                                        -- Elaborate the top level design with -dbg -O2 option"
  echo
  echo "ld                                                -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                                          -- Compile all the design files and elaborate the top level design with -dbg -O2"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                                    -- Top level module name."
  echo "                                                     For most designs, this should be overridden"
  echo "                                                     to enable the elab/elab_debug aliases."
  echo
  echo "SYSTEM_INSTANCE_NAME                              -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                                       -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR                               -- Quartus installation directory."
  echo
  echo "USER_DEFINED_COMPILE_OPTIONS                      -- User-defined compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_VHDL_COMPILE_OPTIONS                 -- User-defined vhdl compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_VERILOG_COMPILE_OPTIONS              -- User-defined verilog compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_ELAB_OPTIONS                         -- User-defined elaboration options, added to elab/elab_debug aliases."
}
file_copy
h
