
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

# ACDS 17.1.2 304 linux 2019.05.30.09:37:05
# ----------------------------------------
# Auto-generated simulation script rivierapro_setup.tcl
# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     Phy.Phy
#     Phy_inst_rx_enh_fifo_del_bfm_ip.Phy_inst_rx_enh_fifo_del_bfm_ip
#     Phy_inst_tx_cal_busy_bfm_ip.Phy_inst_tx_cal_busy_bfm_ip
#     Phy_inst_rx_enh_blk_lock_bfm_ip.Phy_inst_rx_enh_blk_lock_bfm_ip
#     Phy_inst_tx_enh_fifo_full_bfm_ip.Phy_inst_tx_enh_fifo_full_bfm_ip
#     Phy_inst_rx_coreclkin_bfm_ip.Phy_inst_rx_coreclkin_bfm_ip
#     Phy_inst_rx_enh_fifo_full_bfm_ip.Phy_inst_rx_enh_fifo_full_bfm_ip
#     Phy_inst_tx_parallel_data_bfm_ip.Phy_inst_tx_parallel_data_bfm_ip
#     Phy_inst_rx_analogreset_bfm_ip.Phy_inst_rx_analogreset_bfm_ip
#     Phy_inst_tx_clkout_bfm_ip.Phy_inst_tx_clkout_bfm_ip
#     Phy_inst_unused_tx_parallel_data_bfm_ip.Phy_inst_unused_tx_parallel_data_bfm_ip
#     Phy_inst_rx_cal_busy_bfm_ip.Phy_inst_rx_cal_busy_bfm_ip
#     Phy_inst_reconfig_clk_bfm_ip.Phy_inst_reconfig_clk_bfm_ip
#     Phy_inst_rx_clkout_bfm_ip.Phy_inst_rx_clkout_bfm_ip
#     Phy_inst_rx_digitalreset_bfm_ip.Phy_inst_rx_digitalreset_bfm_ip
#     Phy_inst_tx_enh_fifo_pfull_bfm_ip.Phy_inst_tx_enh_fifo_pfull_bfm_ip
#     Phy_inst_tx_serial_clk0_bfm_ip.Phy_inst_tx_serial_clk0_bfm_ip
#     Phy_inst_reconfig_reset_bfm_ip.Phy_inst_reconfig_reset_bfm_ip
#     Phy_inst_tx_enh_fifo_empty_bfm_ip.Phy_inst_tx_enh_fifo_empty_bfm_ip
#     Phy_inst_tx_control_bfm_ip.Phy_inst_tx_control_bfm_ip
#     Phy_inst_rx_pma_div_clkout_bfm_ip.Phy_inst_rx_pma_div_clkout_bfm_ip
#     Phy_inst_rx_cdr_refclk0_bfm_ip.Phy_inst_rx_cdr_refclk0_bfm_ip
#     Phy_inst_rx_parallel_data_bfm_ip.Phy_inst_rx_parallel_data_bfm_ip
#     Phy_inst_rx_control_bfm_ip.Phy_inst_rx_control_bfm_ip
#     Phy_inst_rx_enh_highber_bfm_ip.Phy_inst_rx_enh_highber_bfm_ip
#     Phy_inst_tx_coreclkin_bfm_ip.Phy_inst_tx_coreclkin_bfm_ip
#     Phy_inst_tx_digitalreset_bfm_ip.Phy_inst_tx_digitalreset_bfm_ip
#     Phy_inst_reconfig_avmm_bfm_ip.Phy_inst_reconfig_avmm_bfm_ip
#     Phy_inst_tx_serial_data_bfm_ip.Phy_inst_tx_serial_data_bfm_ip
#     Phy_inst_rx_enh_fifo_empty_bfm_ip.Phy_inst_rx_enh_fifo_empty_bfm_ip
#     Phy_inst_rx_enh_fifo_insert_bfm_ip.Phy_inst_rx_enh_fifo_insert_bfm_ip
#     Phy_inst_tx_pma_div_clkout_bfm_ip.Phy_inst_tx_pma_div_clkout_bfm_ip
#     Phy_inst_rx_enh_data_valid_bfm_ip.Phy_inst_rx_enh_data_valid_bfm_ip
#     Phy_inst_tx_err_ins_bfm_ip.Phy_inst_tx_err_ins_bfm_ip
#     Phy_inst_tx_enh_fifo_pempty_bfm_ip.Phy_inst_tx_enh_fifo_pempty_bfm_ip
#     Phy_inst_unused_rx_parallel_data_bfm_ip.Phy_inst_unused_rx_parallel_data_bfm_ip
#     Phy_inst_tx_analogreset_bfm_ip.Phy_inst_tx_analogreset_bfm_ip
#     Phy_inst_unused_tx_control_bfm_ip.Phy_inst_unused_tx_control_bfm_ip
#     Phy_inst_rx_serial_data_bfm_ip.Phy_inst_rx_serial_data_bfm_ip
#     Phy_inst_unused_rx_control_bfm_ip.Phy_inst_unused_rx_control_bfm_ip
#     Phy_inst_rx_is_lockedtoref_bfm_ip.Phy_inst_rx_is_lockedtoref_bfm_ip
#     Phy_inst_rx_is_lockedtodata_bfm_ip.Phy_inst_rx_is_lockedtodata_bfm_ip
#     Phy_inst_tx_enh_data_valid_bfm_ip.Phy_inst_tx_enh_data_valid_bfm_ip
#     Phy_tb.Phy_tb
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
  set TOP_LEVEL_NAME "Phy_tb.Phy_tb"
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
ensure_lib                                         ./libraries/altera_common_sv_packages              
vmap       altera_common_sv_packages               ./libraries/altera_common_sv_packages              
ensure_lib                                         ./libraries/altera_xcvr_native_a10_1711            
vmap       altera_xcvr_native_a10_1711             ./libraries/altera_xcvr_native_a10_1711            
ensure_lib                                         ./libraries/Phy                                    
vmap       Phy                                     ./libraries/Phy                                    
ensure_lib                                         ./libraries/altera_conduit_bfm_171                 
vmap       altera_conduit_bfm_171                  ./libraries/altera_conduit_bfm_171                 
ensure_lib                                         ./libraries/Phy_inst_rx_enh_fifo_del_bfm_ip        
vmap       Phy_inst_rx_enh_fifo_del_bfm_ip         ./libraries/Phy_inst_rx_enh_fifo_del_bfm_ip        
ensure_lib                                         ./libraries/Phy_inst_tx_cal_busy_bfm_ip            
vmap       Phy_inst_tx_cal_busy_bfm_ip             ./libraries/Phy_inst_tx_cal_busy_bfm_ip            
ensure_lib                                         ./libraries/Phy_inst_rx_enh_blk_lock_bfm_ip        
vmap       Phy_inst_rx_enh_blk_lock_bfm_ip         ./libraries/Phy_inst_rx_enh_blk_lock_bfm_ip        
ensure_lib                                         ./libraries/Phy_inst_tx_enh_fifo_full_bfm_ip       
vmap       Phy_inst_tx_enh_fifo_full_bfm_ip        ./libraries/Phy_inst_tx_enh_fifo_full_bfm_ip       
ensure_lib                                         ./libraries/Phy_inst_rx_coreclkin_bfm_ip           
vmap       Phy_inst_rx_coreclkin_bfm_ip            ./libraries/Phy_inst_rx_coreclkin_bfm_ip           
ensure_lib                                         ./libraries/Phy_inst_rx_enh_fifo_full_bfm_ip       
vmap       Phy_inst_rx_enh_fifo_full_bfm_ip        ./libraries/Phy_inst_rx_enh_fifo_full_bfm_ip       
ensure_lib                                         ./libraries/Phy_inst_tx_parallel_data_bfm_ip       
vmap       Phy_inst_tx_parallel_data_bfm_ip        ./libraries/Phy_inst_tx_parallel_data_bfm_ip       
ensure_lib                                         ./libraries/Phy_inst_rx_analogreset_bfm_ip         
vmap       Phy_inst_rx_analogreset_bfm_ip          ./libraries/Phy_inst_rx_analogreset_bfm_ip         
ensure_lib                                         ./libraries/Phy_inst_tx_clkout_bfm_ip              
vmap       Phy_inst_tx_clkout_bfm_ip               ./libraries/Phy_inst_tx_clkout_bfm_ip              
ensure_lib                                         ./libraries/Phy_inst_unused_tx_parallel_data_bfm_ip
vmap       Phy_inst_unused_tx_parallel_data_bfm_ip ./libraries/Phy_inst_unused_tx_parallel_data_bfm_ip
ensure_lib                                         ./libraries/Phy_inst_rx_cal_busy_bfm_ip            
vmap       Phy_inst_rx_cal_busy_bfm_ip             ./libraries/Phy_inst_rx_cal_busy_bfm_ip            
ensure_lib                                         ./libraries/Phy_inst_reconfig_clk_bfm_ip           
vmap       Phy_inst_reconfig_clk_bfm_ip            ./libraries/Phy_inst_reconfig_clk_bfm_ip           
ensure_lib                                         ./libraries/Phy_inst_rx_clkout_bfm_ip              
vmap       Phy_inst_rx_clkout_bfm_ip               ./libraries/Phy_inst_rx_clkout_bfm_ip              
ensure_lib                                         ./libraries/Phy_inst_rx_digitalreset_bfm_ip        
vmap       Phy_inst_rx_digitalreset_bfm_ip         ./libraries/Phy_inst_rx_digitalreset_bfm_ip        
ensure_lib                                         ./libraries/Phy_inst_tx_enh_fifo_pfull_bfm_ip      
vmap       Phy_inst_tx_enh_fifo_pfull_bfm_ip       ./libraries/Phy_inst_tx_enh_fifo_pfull_bfm_ip      
ensure_lib                                         ./libraries/Phy_inst_tx_serial_clk0_bfm_ip         
vmap       Phy_inst_tx_serial_clk0_bfm_ip          ./libraries/Phy_inst_tx_serial_clk0_bfm_ip         
ensure_lib                                         ./libraries/Phy_inst_reconfig_reset_bfm_ip         
vmap       Phy_inst_reconfig_reset_bfm_ip          ./libraries/Phy_inst_reconfig_reset_bfm_ip         
ensure_lib                                         ./libraries/Phy_inst_tx_enh_fifo_empty_bfm_ip      
vmap       Phy_inst_tx_enh_fifo_empty_bfm_ip       ./libraries/Phy_inst_tx_enh_fifo_empty_bfm_ip      
ensure_lib                                         ./libraries/Phy_inst_tx_control_bfm_ip             
vmap       Phy_inst_tx_control_bfm_ip              ./libraries/Phy_inst_tx_control_bfm_ip             
ensure_lib                                         ./libraries/Phy_inst_rx_pma_div_clkout_bfm_ip      
vmap       Phy_inst_rx_pma_div_clkout_bfm_ip       ./libraries/Phy_inst_rx_pma_div_clkout_bfm_ip      
ensure_lib                                         ./libraries/Phy_inst_rx_cdr_refclk0_bfm_ip         
vmap       Phy_inst_rx_cdr_refclk0_bfm_ip          ./libraries/Phy_inst_rx_cdr_refclk0_bfm_ip         
ensure_lib                                         ./libraries/Phy_inst_rx_parallel_data_bfm_ip       
vmap       Phy_inst_rx_parallel_data_bfm_ip        ./libraries/Phy_inst_rx_parallel_data_bfm_ip       
ensure_lib                                         ./libraries/Phy_inst_rx_control_bfm_ip             
vmap       Phy_inst_rx_control_bfm_ip              ./libraries/Phy_inst_rx_control_bfm_ip             
ensure_lib                                         ./libraries/Phy_inst_rx_enh_highber_bfm_ip         
vmap       Phy_inst_rx_enh_highber_bfm_ip          ./libraries/Phy_inst_rx_enh_highber_bfm_ip         
ensure_lib                                         ./libraries/Phy_inst_tx_coreclkin_bfm_ip           
vmap       Phy_inst_tx_coreclkin_bfm_ip            ./libraries/Phy_inst_tx_coreclkin_bfm_ip           
ensure_lib                                         ./libraries/Phy_inst_tx_digitalreset_bfm_ip        
vmap       Phy_inst_tx_digitalreset_bfm_ip         ./libraries/Phy_inst_tx_digitalreset_bfm_ip        
ensure_lib                                         ./libraries/Phy_inst_reconfig_avmm_bfm_ip          
vmap       Phy_inst_reconfig_avmm_bfm_ip           ./libraries/Phy_inst_reconfig_avmm_bfm_ip          
ensure_lib                                         ./libraries/Phy_inst_tx_serial_data_bfm_ip         
vmap       Phy_inst_tx_serial_data_bfm_ip          ./libraries/Phy_inst_tx_serial_data_bfm_ip         
ensure_lib                                         ./libraries/Phy_inst_rx_enh_fifo_empty_bfm_ip      
vmap       Phy_inst_rx_enh_fifo_empty_bfm_ip       ./libraries/Phy_inst_rx_enh_fifo_empty_bfm_ip      
ensure_lib                                         ./libraries/Phy_inst_rx_enh_fifo_insert_bfm_ip     
vmap       Phy_inst_rx_enh_fifo_insert_bfm_ip      ./libraries/Phy_inst_rx_enh_fifo_insert_bfm_ip     
ensure_lib                                         ./libraries/Phy_inst_tx_pma_div_clkout_bfm_ip      
vmap       Phy_inst_tx_pma_div_clkout_bfm_ip       ./libraries/Phy_inst_tx_pma_div_clkout_bfm_ip      
ensure_lib                                         ./libraries/Phy_inst_rx_enh_data_valid_bfm_ip      
vmap       Phy_inst_rx_enh_data_valid_bfm_ip       ./libraries/Phy_inst_rx_enh_data_valid_bfm_ip      
ensure_lib                                         ./libraries/Phy_inst_tx_err_ins_bfm_ip             
vmap       Phy_inst_tx_err_ins_bfm_ip              ./libraries/Phy_inst_tx_err_ins_bfm_ip             
ensure_lib                                         ./libraries/Phy_inst_tx_enh_fifo_pempty_bfm_ip     
vmap       Phy_inst_tx_enh_fifo_pempty_bfm_ip      ./libraries/Phy_inst_tx_enh_fifo_pempty_bfm_ip     
ensure_lib                                         ./libraries/Phy_inst_unused_rx_parallel_data_bfm_ip
vmap       Phy_inst_unused_rx_parallel_data_bfm_ip ./libraries/Phy_inst_unused_rx_parallel_data_bfm_ip
ensure_lib                                         ./libraries/Phy_inst_tx_analogreset_bfm_ip         
vmap       Phy_inst_tx_analogreset_bfm_ip          ./libraries/Phy_inst_tx_analogreset_bfm_ip         
ensure_lib                                         ./libraries/Phy_inst_unused_tx_control_bfm_ip      
vmap       Phy_inst_unused_tx_control_bfm_ip       ./libraries/Phy_inst_unused_tx_control_bfm_ip      
ensure_lib                                         ./libraries/Phy_inst_rx_serial_data_bfm_ip         
vmap       Phy_inst_rx_serial_data_bfm_ip          ./libraries/Phy_inst_rx_serial_data_bfm_ip         
ensure_lib                                         ./libraries/Phy_inst_unused_rx_control_bfm_ip      
vmap       Phy_inst_unused_rx_control_bfm_ip       ./libraries/Phy_inst_unused_rx_control_bfm_ip      
ensure_lib                                         ./libraries/Phy_inst_rx_is_lockedtoref_bfm_ip      
vmap       Phy_inst_rx_is_lockedtoref_bfm_ip       ./libraries/Phy_inst_rx_is_lockedtoref_bfm_ip      
ensure_lib                                         ./libraries/Phy_inst_rx_is_lockedtodata_bfm_ip     
vmap       Phy_inst_rx_is_lockedtodata_bfm_ip      ./libraries/Phy_inst_rx_is_lockedtodata_bfm_ip     
ensure_lib                                         ./libraries/Phy_inst_tx_enh_data_valid_bfm_ip      
vmap       Phy_inst_tx_enh_data_valid_bfm_ip       ./libraries/Phy_inst_tx_enh_data_valid_bfm_ip      
ensure_lib                                         ./libraries/Phy_tb                                 
vmap       Phy_tb                                  ./libraries/Phy_tb                                 

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
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/altera_xcvr_native_a10_functions_h.sv"                                                                                                        -work altera_common_sv_packages              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_resync.sv"                                                                                              -l altera_common_sv_packages -work altera_xcvr_native_a10_1711            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_arbiter.sv"                                                                                             -l altera_common_sv_packages -work altera_xcvr_native_a10_1711            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/twentynm_pcs.sv"                                                                                                 -l altera_common_sv_packages -work altera_xcvr_native_a10_1711            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/twentynm_pma.sv"                                                                                                 -l altera_common_sv_packages -work altera_xcvr_native_a10_1711            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/twentynm_xcvr_avmm.sv"                                                                                           -l altera_common_sv_packages -work altera_xcvr_native_a10_1711            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/twentynm_xcvr_native.sv"                                                                                         -l altera_common_sv_packages -work altera_xcvr_native_a10_1711            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/a10_avmm_h.sv"                                                                                                   -l altera_common_sv_packages -work altera_xcvr_native_a10_1711            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_pipe_retry.sv"                                                                                   -l altera_common_sv_packages -work altera_xcvr_native_a10_1711            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_avmm_csr.sv"                                                                                     -l altera_common_sv_packages -work altera_xcvr_native_a10_1711            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_prbs_accum.sv"                                                                                   -l altera_common_sv_packages -work altera_xcvr_native_a10_1711            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_odi_accel.sv"                                                                                    -l altera_common_sv_packages -work altera_xcvr_native_a10_1711            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_rcfg_arb.sv"                                                                                     -l altera_common_sv_packages -work altera_xcvr_native_a10_1711            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/altera_xcvr_native_pcie_dfe_params_h.sv"                                                                         -l altera_common_sv_packages -work altera_xcvr_native_a10_1711            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/pcie_mgmt_commands_h.sv"                                                                                         -l altera_common_sv_packages -work altera_xcvr_native_a10_1711            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/pcie_mgmt_functions_h.sv"                                                                                        -l altera_common_sv_packages -work altera_xcvr_native_a10_1711            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/pcie_mgmt_program.sv"                                                                                            -l altera_common_sv_packages -work altera_xcvr_native_a10_1711            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/pcie_mgmt_cpu.sv"                                                                                                -l altera_common_sv_packages -work altera_xcvr_native_a10_1711            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/pcie_mgmt_master.sv"                                                                                             -l altera_common_sv_packages -work altera_xcvr_native_a10_1711            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/altera_xcvr_native_pcie_dfe_ip.sv"                                                                               -l altera_common_sv_packages -work altera_xcvr_native_a10_1711            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/Phy_altera_xcvr_native_a10_1711_y7cueai.sv"                                                                      -l altera_common_sv_packages -work altera_xcvr_native_a10_1711            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_rcfg_opt_logic_y7cueai.sv"                                                                       -l altera_common_sv_packages -work altera_xcvr_native_a10_1711            
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/sim/Phy.v"                                                                                                                                                                    -work Phy                                    
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_del_bfm_ip/altera_conduit_bfm_171/sim/verbosity_pkg.sv"                                                                                               -work altera_common_sv_packages              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_del_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_enh_fifo_del_bfm_ip_altera_conduit_bfm_171_oi4ohtq.sv"                 -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_del_bfm_ip/sim/Phy_inst_rx_enh_fifo_del_bfm_ip.v"                                                                                                     -work Phy_inst_rx_enh_fifo_del_bfm_ip        
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_cal_busy_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_cal_busy_bfm_ip_altera_conduit_bfm_171_s7zyary.sv"                         -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_cal_busy_bfm_ip/sim/Phy_inst_tx_cal_busy_bfm_ip.v"                                                                                                             -work Phy_inst_tx_cal_busy_bfm_ip            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_blk_lock_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_enh_blk_lock_bfm_ip_altera_conduit_bfm_171_tqzop6q.sv"                 -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_blk_lock_bfm_ip/sim/Phy_inst_rx_enh_blk_lock_bfm_ip.v"                                                                                                     -work Phy_inst_rx_enh_blk_lock_bfm_ip        
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_full_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_enh_fifo_full_bfm_ip_altera_conduit_bfm_171_bkhzbdi.sv"               -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_full_bfm_ip/sim/Phy_inst_tx_enh_fifo_full_bfm_ip.v"                                                                                                   -work Phy_inst_tx_enh_fifo_full_bfm_ip       
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_coreclkin_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_coreclkin_bfm_ip_altera_conduit_bfm_171_sfxe7bq.sv"                       -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_coreclkin_bfm_ip/sim/Phy_inst_rx_coreclkin_bfm_ip.v"                                                                                                           -work Phy_inst_rx_coreclkin_bfm_ip           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_full_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_enh_fifo_full_bfm_ip_altera_conduit_bfm_171_4lsjyvq.sv"               -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_full_bfm_ip/sim/Phy_inst_rx_enh_fifo_full_bfm_ip.v"                                                                                                   -work Phy_inst_rx_enh_fifo_full_bfm_ip       
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_parallel_data_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_parallel_data_bfm_ip_altera_conduit_bfm_171_krd3h5a.sv"               -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_parallel_data_bfm_ip/sim/Phy_inst_tx_parallel_data_bfm_ip.v"                                                                                                   -work Phy_inst_tx_parallel_data_bfm_ip       
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_analogreset_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_analogreset_bfm_ip_altera_conduit_bfm_171_suzcfci.sv"                   -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_analogreset_bfm_ip/sim/Phy_inst_rx_analogreset_bfm_ip.v"                                                                                                       -work Phy_inst_rx_analogreset_bfm_ip         
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_clkout_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_clkout_bfm_ip_altera_conduit_bfm_171_dvp26vy.sv"                             -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_clkout_bfm_ip/sim/Phy_inst_tx_clkout_bfm_ip.v"                                                                                                                 -work Phy_inst_tx_clkout_bfm_ip              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_tx_parallel_data_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_unused_tx_parallel_data_bfm_ip_altera_conduit_bfm_171_pvaewry.sv" -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_tx_parallel_data_bfm_ip/sim/Phy_inst_unused_tx_parallel_data_bfm_ip.v"                                                                                     -work Phy_inst_unused_tx_parallel_data_bfm_ip
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_cal_busy_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_cal_busy_bfm_ip_altera_conduit_bfm_171_3ukswuy.sv"                         -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_cal_busy_bfm_ip/sim/Phy_inst_rx_cal_busy_bfm_ip.v"                                                                                                             -work Phy_inst_rx_cal_busy_bfm_ip            
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_reconfig_clk_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_reconfig_clk_bfm_ip_altera_conduit_bfm_171_sfxe7bq.sv"                       -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_reconfig_clk_bfm_ip/sim/Phy_inst_reconfig_clk_bfm_ip.v"                                                                                                           -work Phy_inst_reconfig_clk_bfm_ip           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_clkout_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_clkout_bfm_ip_altera_conduit_bfm_171_dvp26vy.sv"                             -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_clkout_bfm_ip/sim/Phy_inst_rx_clkout_bfm_ip.v"                                                                                                                 -work Phy_inst_rx_clkout_bfm_ip              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_digitalreset_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_digitalreset_bfm_ip_altera_conduit_bfm_171_jemqyza.sv"                 -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_digitalreset_bfm_ip/sim/Phy_inst_rx_digitalreset_bfm_ip.v"                                                                                                     -work Phy_inst_rx_digitalreset_bfm_ip        
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_pfull_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_enh_fifo_pfull_bfm_ip_altera_conduit_bfm_171_7va4hdi.sv"             -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_pfull_bfm_ip/sim/Phy_inst_tx_enh_fifo_pfull_bfm_ip.v"                                                                                                 -work Phy_inst_tx_enh_fifo_pfull_bfm_ip      
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_serial_clk0_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_serial_clk0_bfm_ip_altera_conduit_bfm_171_sfxe7bq.sv"                   -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_serial_clk0_bfm_ip/sim/Phy_inst_tx_serial_clk0_bfm_ip.v"                                                                                                       -work Phy_inst_tx_serial_clk0_bfm_ip         
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_reconfig_reset_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_reconfig_reset_bfm_ip_altera_conduit_bfm_171_tzm3ryi.sv"                   -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_reconfig_reset_bfm_ip/sim/Phy_inst_reconfig_reset_bfm_ip.v"                                                                                                       -work Phy_inst_reconfig_reset_bfm_ip         
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_empty_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_enh_fifo_empty_bfm_ip_altera_conduit_bfm_171_rpvn5oi.sv"             -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_empty_bfm_ip/sim/Phy_inst_tx_enh_fifo_empty_bfm_ip.v"                                                                                                 -work Phy_inst_tx_enh_fifo_empty_bfm_ip      
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_control_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_control_bfm_ip_altera_conduit_bfm_171_od2ecna.sv"                           -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_control_bfm_ip/sim/Phy_inst_tx_control_bfm_ip.v"                                                                                                               -work Phy_inst_tx_control_bfm_ip             
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_pma_div_clkout_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_pma_div_clkout_bfm_ip_altera_conduit_bfm_171_dvp26vy.sv"             -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_pma_div_clkout_bfm_ip/sim/Phy_inst_rx_pma_div_clkout_bfm_ip.v"                                                                                                 -work Phy_inst_rx_pma_div_clkout_bfm_ip      
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_cdr_refclk0_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_cdr_refclk0_bfm_ip_altera_conduit_bfm_171_sfxe7bq.sv"                   -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_cdr_refclk0_bfm_ip/sim/Phy_inst_rx_cdr_refclk0_bfm_ip.v"                                                                                                       -work Phy_inst_rx_cdr_refclk0_bfm_ip         
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_parallel_data_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_parallel_data_bfm_ip_altera_conduit_bfm_171_2fwttky.sv"               -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_parallel_data_bfm_ip/sim/Phy_inst_rx_parallel_data_bfm_ip.v"                                                                                                   -work Phy_inst_rx_parallel_data_bfm_ip       
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_control_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_control_bfm_ip_altera_conduit_bfm_171_zi5pipy.sv"                           -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_control_bfm_ip/sim/Phy_inst_rx_control_bfm_ip.v"                                                                                                               -work Phy_inst_rx_control_bfm_ip             
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_highber_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_enh_highber_bfm_ip_altera_conduit_bfm_171_yxtgjaq.sv"                   -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_highber_bfm_ip/sim/Phy_inst_rx_enh_highber_bfm_ip.v"                                                                                                       -work Phy_inst_rx_enh_highber_bfm_ip         
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_coreclkin_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_coreclkin_bfm_ip_altera_conduit_bfm_171_sfxe7bq.sv"                       -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_coreclkin_bfm_ip/sim/Phy_inst_tx_coreclkin_bfm_ip.v"                                                                                                           -work Phy_inst_tx_coreclkin_bfm_ip           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_digitalreset_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_digitalreset_bfm_ip_altera_conduit_bfm_171_kpoqata.sv"                 -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_digitalreset_bfm_ip/sim/Phy_inst_tx_digitalreset_bfm_ip.v"                                                                                                     -work Phy_inst_tx_digitalreset_bfm_ip        
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_reconfig_avmm_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_reconfig_avmm_bfm_ip_altera_conduit_bfm_171_k2a7pti.sv"                     -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_reconfig_avmm_bfm_ip/sim/Phy_inst_reconfig_avmm_bfm_ip.v"                                                                                                         -work Phy_inst_reconfig_avmm_bfm_ip          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_serial_data_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_serial_data_bfm_ip_altera_conduit_bfm_171_ydb2hoq.sv"                   -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_serial_data_bfm_ip/sim/Phy_inst_tx_serial_data_bfm_ip.v"                                                                                                       -work Phy_inst_tx_serial_data_bfm_ip         
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_empty_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_enh_fifo_empty_bfm_ip_altera_conduit_bfm_171_aw4q3sa.sv"             -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_empty_bfm_ip/sim/Phy_inst_rx_enh_fifo_empty_bfm_ip.v"                                                                                                 -work Phy_inst_rx_enh_fifo_empty_bfm_ip      
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_insert_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_enh_fifo_insert_bfm_ip_altera_conduit_bfm_171_te4nuui.sv"           -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_insert_bfm_ip/sim/Phy_inst_rx_enh_fifo_insert_bfm_ip.v"                                                                                               -work Phy_inst_rx_enh_fifo_insert_bfm_ip     
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_pma_div_clkout_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_pma_div_clkout_bfm_ip_altera_conduit_bfm_171_dvp26vy.sv"             -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_pma_div_clkout_bfm_ip/sim/Phy_inst_tx_pma_div_clkout_bfm_ip.v"                                                                                                 -work Phy_inst_tx_pma_div_clkout_bfm_ip      
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_data_valid_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_enh_data_valid_bfm_ip_altera_conduit_bfm_171_cp6emyy.sv"             -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_data_valid_bfm_ip/sim/Phy_inst_rx_enh_data_valid_bfm_ip.v"                                                                                                 -work Phy_inst_rx_enh_data_valid_bfm_ip      
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_err_ins_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_err_ins_bfm_ip_altera_conduit_bfm_171_b5kmjbi.sv"                           -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_err_ins_bfm_ip/sim/Phy_inst_tx_err_ins_bfm_ip.v"                                                                                                               -work Phy_inst_tx_err_ins_bfm_ip             
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_pempty_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_enh_fifo_pempty_bfm_ip_altera_conduit_bfm_171_zii6uui.sv"           -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_pempty_bfm_ip/sim/Phy_inst_tx_enh_fifo_pempty_bfm_ip.v"                                                                                               -work Phy_inst_tx_enh_fifo_pempty_bfm_ip     
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_rx_parallel_data_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_unused_rx_parallel_data_bfm_ip_altera_conduit_bfm_171_lmva6xi.sv" -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_rx_parallel_data_bfm_ip/sim/Phy_inst_unused_rx_parallel_data_bfm_ip.v"                                                                                     -work Phy_inst_unused_rx_parallel_data_bfm_ip
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_analogreset_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_analogreset_bfm_ip_altera_conduit_bfm_171_wvxppvq.sv"                   -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_analogreset_bfm_ip/sim/Phy_inst_tx_analogreset_bfm_ip.v"                                                                                                       -work Phy_inst_tx_analogreset_bfm_ip         
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_tx_control_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_unused_tx_control_bfm_ip_altera_conduit_bfm_171_fgfakmq.sv"             -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_tx_control_bfm_ip/sim/Phy_inst_unused_tx_control_bfm_ip.v"                                                                                                 -work Phy_inst_unused_tx_control_bfm_ip      
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_serial_data_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_serial_data_bfm_ip_altera_conduit_bfm_171_xh3a7uq.sv"                   -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_serial_data_bfm_ip/sim/Phy_inst_rx_serial_data_bfm_ip.v"                                                                                                       -work Phy_inst_rx_serial_data_bfm_ip         
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_rx_control_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_unused_rx_control_bfm_ip_altera_conduit_bfm_171_a6vkyjy.sv"             -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_rx_control_bfm_ip/sim/Phy_inst_unused_rx_control_bfm_ip.v"                                                                                                 -work Phy_inst_unused_rx_control_bfm_ip      
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_is_lockedtoref_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_is_lockedtoref_bfm_ip_altera_conduit_bfm_171_cht2buy.sv"             -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_is_lockedtoref_bfm_ip/sim/Phy_inst_rx_is_lockedtoref_bfm_ip.v"                                                                                                 -work Phy_inst_rx_is_lockedtoref_bfm_ip      
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_is_lockedtodata_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_is_lockedtodata_bfm_ip_altera_conduit_bfm_171_hqmdh2y.sv"           -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_is_lockedtodata_bfm_ip/sim/Phy_inst_rx_is_lockedtodata_bfm_ip.v"                                                                                               -work Phy_inst_rx_is_lockedtodata_bfm_ip     
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_data_valid_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_enh_data_valid_bfm_ip_altera_conduit_bfm_171_ku5zdby.sv"             -l altera_common_sv_packages -work altera_conduit_bfm_171                 
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_data_valid_bfm_ip/sim/Phy_inst_tx_enh_data_valid_bfm_ip.v"                                                                                                 -work Phy_inst_tx_enh_data_valid_bfm_ip      
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/Phy_tb.v"                                                                                                                                                                                  -work Phy_tb                                 
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim +access +r -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L altera_common_sv_packages -L altera_xcvr_native_a10_1711 -L Phy -L altera_conduit_bfm_171 -L Phy_inst_rx_enh_fifo_del_bfm_ip -L Phy_inst_tx_cal_busy_bfm_ip -L Phy_inst_rx_enh_blk_lock_bfm_ip -L Phy_inst_tx_enh_fifo_full_bfm_ip -L Phy_inst_rx_coreclkin_bfm_ip -L Phy_inst_rx_enh_fifo_full_bfm_ip -L Phy_inst_tx_parallel_data_bfm_ip -L Phy_inst_rx_analogreset_bfm_ip -L Phy_inst_tx_clkout_bfm_ip -L Phy_inst_unused_tx_parallel_data_bfm_ip -L Phy_inst_rx_cal_busy_bfm_ip -L Phy_inst_reconfig_clk_bfm_ip -L Phy_inst_rx_clkout_bfm_ip -L Phy_inst_rx_digitalreset_bfm_ip -L Phy_inst_tx_enh_fifo_pfull_bfm_ip -L Phy_inst_tx_serial_clk0_bfm_ip -L Phy_inst_reconfig_reset_bfm_ip -L Phy_inst_tx_enh_fifo_empty_bfm_ip -L Phy_inst_tx_control_bfm_ip -L Phy_inst_rx_pma_div_clkout_bfm_ip -L Phy_inst_rx_cdr_refclk0_bfm_ip -L Phy_inst_rx_parallel_data_bfm_ip -L Phy_inst_rx_control_bfm_ip -L Phy_inst_rx_enh_highber_bfm_ip -L Phy_inst_tx_coreclkin_bfm_ip -L Phy_inst_tx_digitalreset_bfm_ip -L Phy_inst_reconfig_avmm_bfm_ip -L Phy_inst_tx_serial_data_bfm_ip -L Phy_inst_rx_enh_fifo_empty_bfm_ip -L Phy_inst_rx_enh_fifo_insert_bfm_ip -L Phy_inst_tx_pma_div_clkout_bfm_ip -L Phy_inst_rx_enh_data_valid_bfm_ip -L Phy_inst_tx_err_ins_bfm_ip -L Phy_inst_tx_enh_fifo_pempty_bfm_ip -L Phy_inst_unused_rx_parallel_data_bfm_ip -L Phy_inst_tx_analogreset_bfm_ip -L Phy_inst_unused_tx_control_bfm_ip -L Phy_inst_rx_serial_data_bfm_ip -L Phy_inst_unused_rx_control_bfm_ip -L Phy_inst_rx_is_lockedtoref_bfm_ip -L Phy_inst_rx_is_lockedtodata_bfm_ip -L Phy_inst_tx_enh_data_valid_bfm_ip -L Phy_tb -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L twentynm_ver -L twentynm_hssi_ver -L twentynm_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with -dbg -O2 option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -dbg -O2 +access +r -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L altera_common_sv_packages -L altera_xcvr_native_a10_1711 -L Phy -L altera_conduit_bfm_171 -L Phy_inst_rx_enh_fifo_del_bfm_ip -L Phy_inst_tx_cal_busy_bfm_ip -L Phy_inst_rx_enh_blk_lock_bfm_ip -L Phy_inst_tx_enh_fifo_full_bfm_ip -L Phy_inst_rx_coreclkin_bfm_ip -L Phy_inst_rx_enh_fifo_full_bfm_ip -L Phy_inst_tx_parallel_data_bfm_ip -L Phy_inst_rx_analogreset_bfm_ip -L Phy_inst_tx_clkout_bfm_ip -L Phy_inst_unused_tx_parallel_data_bfm_ip -L Phy_inst_rx_cal_busy_bfm_ip -L Phy_inst_reconfig_clk_bfm_ip -L Phy_inst_rx_clkout_bfm_ip -L Phy_inst_rx_digitalreset_bfm_ip -L Phy_inst_tx_enh_fifo_pfull_bfm_ip -L Phy_inst_tx_serial_clk0_bfm_ip -L Phy_inst_reconfig_reset_bfm_ip -L Phy_inst_tx_enh_fifo_empty_bfm_ip -L Phy_inst_tx_control_bfm_ip -L Phy_inst_rx_pma_div_clkout_bfm_ip -L Phy_inst_rx_cdr_refclk0_bfm_ip -L Phy_inst_rx_parallel_data_bfm_ip -L Phy_inst_rx_control_bfm_ip -L Phy_inst_rx_enh_highber_bfm_ip -L Phy_inst_tx_coreclkin_bfm_ip -L Phy_inst_tx_digitalreset_bfm_ip -L Phy_inst_reconfig_avmm_bfm_ip -L Phy_inst_tx_serial_data_bfm_ip -L Phy_inst_rx_enh_fifo_empty_bfm_ip -L Phy_inst_rx_enh_fifo_insert_bfm_ip -L Phy_inst_tx_pma_div_clkout_bfm_ip -L Phy_inst_rx_enh_data_valid_bfm_ip -L Phy_inst_tx_err_ins_bfm_ip -L Phy_inst_tx_enh_fifo_pempty_bfm_ip -L Phy_inst_unused_rx_parallel_data_bfm_ip -L Phy_inst_tx_analogreset_bfm_ip -L Phy_inst_unused_tx_control_bfm_ip -L Phy_inst_rx_serial_data_bfm_ip -L Phy_inst_unused_rx_control_bfm_ip -L Phy_inst_rx_is_lockedtoref_bfm_ip -L Phy_inst_rx_is_lockedtodata_bfm_ip -L Phy_inst_tx_enh_data_valid_bfm_ip -L Phy_tb -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L twentynm_ver -L twentynm_hssi_ver -L twentynm_hip_ver $TOP_LEVEL_NAME
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
