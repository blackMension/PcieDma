
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

# ----------------------------------------
# Auto-generated simulation script msim_setup.tcl
# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     ep_g3x8_avmm256_clk_0.ep_g3x8_avmm256_clk_0
#     ep_g3x8_avmm256_dma_control_0.ep_g3x8_avmm256_dma_control_0
#     ep_g3x8_avmm256_onchip_memory2_0.ep_g3x8_avmm256_onchip_memory2_0
#     ep_g3x8_avmm256_DUT.ep_g3x8_avmm256_DUT
#     ep_g3x8_avmm256.ep_g3x8_avmm256
# 
# Intel recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level script that compiles Intel simulation libraries and
# the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "mentor.do", and modify the text as directed.
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
# source $QSYS_SIMDIR/mentor/msim_setup.tcl
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
# vlog <compilation options> <design and testbench files>
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
# run -a
# #
# # Report success to the shell.
# exit -code 0
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# ACDS 17.1.2 304 linux 2019.04.20.11:04:21

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "ep_g3x8_avmm256.ep_g3x8_avmm256"
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
if ![info exists FORCE_MODELSIM_AE_SELECTION] { 
  set FORCE_MODELSIM_AE_SELECTION "false"
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsimVersionString ] ] {
} else {
}
proc modelsim_ae_select {force_select_modelsim_ae} {
  if [string is true -strict $force_select_modelsim_ae] {
    return 1
  }
  return [string match "*ModelSim*Intel FPGA Edition*" [ vsimVersionString ]]
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if [string is false -strict [modelsim_ae_select $FORCE_MODELSIM_AE_SELECTION]] {
  ensure_lib                   ./libraries/altera_ver/       
  vmap       altera_ver        ./libraries/altera_ver/       
  ensure_lib                   ./libraries/lpm_ver/          
  vmap       lpm_ver           ./libraries/lpm_ver/          
  ensure_lib                   ./libraries/sgate_ver/        
  vmap       sgate_ver         ./libraries/sgate_ver/        
  ensure_lib                   ./libraries/altera_mf_ver/    
  vmap       altera_mf_ver     ./libraries/altera_mf_ver/    
  ensure_lib                   ./libraries/altera_lnsim_ver/ 
  vmap       altera_lnsim_ver  ./libraries/altera_lnsim_ver/ 
  ensure_lib                   ./libraries/twentynm_ver/     
  vmap       twentynm_ver      ./libraries/twentynm_ver/     
  ensure_lib                   ./libraries/twentynm_hssi_ver/
  vmap       twentynm_hssi_ver ./libraries/twentynm_hssi_ver/
  ensure_lib                   ./libraries/twentynm_hip_ver/ 
  vmap       twentynm_hip_ver  ./libraries/twentynm_hip_ver/ 
}
ensure_lib                                     ./libraries/ep_g3x8_avmm256_clk_0/              
vmap       ep_g3x8_avmm256_clk_0               ./libraries/ep_g3x8_avmm256_clk_0/              
ensure_lib                                     ./libraries/dma_control_171/                    
vmap       dma_control_171                     ./libraries/dma_control_171/                    
ensure_lib                                     ./libraries/ep_g3x8_avmm256_dma_control_0/      
vmap       ep_g3x8_avmm256_dma_control_0       ./libraries/ep_g3x8_avmm256_dma_control_0/      
ensure_lib                                     ./libraries/altera_avalon_onchip_memory2_171/   
vmap       altera_avalon_onchip_memory2_171    ./libraries/altera_avalon_onchip_memory2_171/   
ensure_lib                                     ./libraries/ep_g3x8_avmm256_onchip_memory2_0/   
vmap       ep_g3x8_avmm256_onchip_memory2_0    ./libraries/ep_g3x8_avmm256_onchip_memory2_0/   
ensure_lib                                     ./libraries/altera_common_sv_packages/          
vmap       altera_common_sv_packages           ./libraries/altera_common_sv_packages/          
ensure_lib                                     ./libraries/altera_xcvr_native_a10_1711/        
vmap       altera_xcvr_native_a10_1711         ./libraries/altera_xcvr_native_a10_1711/        
ensure_lib                                     ./libraries/altera_pcie_a10_hip_171/            
vmap       altera_pcie_a10_hip_171             ./libraries/altera_pcie_a10_hip_171/            
ensure_lib                                     ./libraries/altera_xcvr_fpll_a10_171/           
vmap       altera_xcvr_fpll_a10_171            ./libraries/altera_xcvr_fpll_a10_171/           
ensure_lib                                     ./libraries/altera_xcvr_atx_pll_a10_171/        
vmap       altera_xcvr_atx_pll_a10_171         ./libraries/altera_xcvr_atx_pll_a10_171/        
ensure_lib                                     ./libraries/ep_g3x8_avmm256_DUT/                
vmap       ep_g3x8_avmm256_DUT                 ./libraries/ep_g3x8_avmm256_DUT/                
ensure_lib                                     ./libraries/altera_merlin_master_translator_171/
vmap       altera_merlin_master_translator_171 ./libraries/altera_merlin_master_translator_171/
ensure_lib                                     ./libraries/altera_merlin_slave_translator_171/ 
vmap       altera_merlin_slave_translator_171  ./libraries/altera_merlin_slave_translator_171/ 
ensure_lib                                     ./libraries/altera_merlin_master_agent_171/     
vmap       altera_merlin_master_agent_171      ./libraries/altera_merlin_master_agent_171/     
ensure_lib                                     ./libraries/altera_merlin_slave_agent_171/      
vmap       altera_merlin_slave_agent_171       ./libraries/altera_merlin_slave_agent_171/      
ensure_lib                                     ./libraries/altera_avalon_sc_fifo_171/          
vmap       altera_avalon_sc_fifo_171           ./libraries/altera_avalon_sc_fifo_171/          
ensure_lib                                     ./libraries/altera_merlin_router_171/           
vmap       altera_merlin_router_171            ./libraries/altera_merlin_router_171/           
ensure_lib                                     ./libraries/altera_merlin_demultiplexer_171/    
vmap       altera_merlin_demultiplexer_171     ./libraries/altera_merlin_demultiplexer_171/    
ensure_lib                                     ./libraries/altera_merlin_multiplexer_171/      
vmap       altera_merlin_multiplexer_171       ./libraries/altera_merlin_multiplexer_171/      
ensure_lib                                     ./libraries/error_adapter_171/                  
vmap       error_adapter_171                   ./libraries/error_adapter_171/                  
ensure_lib                                     ./libraries/altera_avalon_st_adapter_171/       
vmap       altera_avalon_st_adapter_171        ./libraries/altera_avalon_st_adapter_171/       
ensure_lib                                     ./libraries/altera_mm_interconnect_171/         
vmap       altera_mm_interconnect_171          ./libraries/altera_mm_interconnect_171/         
ensure_lib                                     ./libraries/altera_merlin_burst_adapter_171/    
vmap       altera_merlin_burst_adapter_171     ./libraries/altera_merlin_burst_adapter_171/    
ensure_lib                                     ./libraries/altera_merlin_width_adapter_171/    
vmap       altera_merlin_width_adapter_171     ./libraries/altera_merlin_width_adapter_171/    
ensure_lib                                     ./libraries/altera_merlin_traffic_limiter_171/  
vmap       altera_merlin_traffic_limiter_171   ./libraries/altera_merlin_traffic_limiter_171/  
ensure_lib                                     ./libraries/timing_adapter_171/                 
vmap       timing_adapter_171                  ./libraries/timing_adapter_171/                 
ensure_lib                                     ./libraries/altera_reset_controller_171/        
vmap       altera_reset_controller_171         ./libraries/altera_reset_controller_171/        
ensure_lib                                     ./libraries/ep_g3x8_avmm256/                    
vmap       ep_g3x8_avmm256                     ./libraries/ep_g3x8_avmm256/                    

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if [string is false -strict [modelsim_ae_select $FORCE_MODELSIM_AE_SELECTION]] {
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                 -work altera_ver       
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                          -work lpm_ver          
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                             -work sgate_ver        
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                         -work altera_mf_ver    
    eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                     -work altera_lnsim_ver 
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_atoms.v"                    -work twentynm_ver     
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/twentynm_atoms_ncrypt.v"      -work twentynm_ver     
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/twentynm_hssi_atoms_ncrypt.v" -work twentynm_hssi_ver
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hssi_atoms.v"               -work twentynm_hssi_ver
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/twentynm_hip_atoms_ncrypt.v"  -work twentynm_hip_ver 
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hip_atoms.v"                -work twentynm_hip_ver 
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_clk_0/sim/ep_g3x8_avmm256_clk_0.v"                                                                                                                              -work ep_g3x8_avmm256_clk_0              
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_dma_control_0/dma_control_171/sim/dma_controller.sv"                                                                                                            -work dma_control_171                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_dma_control_0/dma_control_171/sim/altpcie_dynamic_control.sv"                                                                                                   -work dma_control_171                    
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_dma_control_0/sim/ep_g3x8_avmm256_dma_control_0.v"                                                                                                              -work ep_g3x8_avmm256_dma_control_0      
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_onchip_memory2_0/altera_avalon_onchip_memory2_171/sim/ep_g3x8_avmm256_onchip_memory2_0_altera_avalon_onchip_memory2_171_2hwxsvq.v"                              -work altera_avalon_onchip_memory2_171   
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_onchip_memory2_0/sim/ep_g3x8_avmm256_onchip_memory2_0.v"                                                                                                        -work ep_g3x8_avmm256_onchip_memory2_0   
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/altera_xcvr_native_a10_functions_h.sv"                                                                                      -work altera_common_sv_packages          
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_resync.sv"                                                                            -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_arbiter.sv"                                                                           -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/mentor/alt_xcvr_resync.sv"                                                                     -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/mentor/alt_xcvr_arbiter.sv"                                                                    -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/twentynm_pcs.sv"                                                                               -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/twentynm_pma.sv"                                                                               -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/twentynm_xcvr_avmm.sv"                                                                         -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/twentynm_xcvr_native.sv"                                                                       -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/mentor/twentynm_pcs.sv"                                                                        -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/mentor/twentynm_pma.sv"                                                                        -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/mentor/twentynm_xcvr_avmm.sv"                                                                  -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/mentor/twentynm_xcvr_native.sv"                                                                -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/a10_avmm_h.sv"                                                                                 -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_pipe_retry.sv"                                                                 -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_avmm_csr.sv"                                                                   -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_prbs_accum.sv"                                                                 -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_odi_accel.sv"                                                                  -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_rcfg_arb.sv"                                                                   -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/altera_xcvr_native_pcie_dfe_params_h.sv"                                                       -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/pcie_mgmt_commands_h.sv"                                                                       -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/pcie_mgmt_functions_h.sv"                                                                      -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/pcie_mgmt_program.sv"                                                                          -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/pcie_mgmt_cpu.sv"                                                                              -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/pcie_mgmt_master.sv"                                                                           -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/altera_xcvr_native_pcie_dfe_ip.sv"                                                             -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/ep_g3x8_avmm256_DUT_altera_xcvr_native_a10_1711_qsxpgua.sv"                                    -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_rcfg_opt_logic_qsxpgua.sv"                                                     -L altera_common_sv_packages -work altera_xcvr_native_a10_1711        
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/phy_g3x8.v"                                                                                                                     -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/twentynm_xcvr_avmm.sv"                                                                            -L altera_common_sv_packages -work altera_xcvr_fpll_a10_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/mentor/twentynm_xcvr_avmm.sv"                                                                     -L altera_common_sv_packages -work altera_xcvr_fpll_a10_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/alt_xcvr_resync.sv"                                                                               -L altera_common_sv_packages -work altera_xcvr_fpll_a10_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/mentor/alt_xcvr_resync.sv"                                                                        -L altera_common_sv_packages -work altera_xcvr_fpll_a10_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/altera_xcvr_fpll_a10.sv"                                                                          -L altera_common_sv_packages -work altera_xcvr_fpll_a10_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/mentor/altera_xcvr_fpll_a10.sv"                                                                   -L altera_common_sv_packages -work altera_xcvr_fpll_a10_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/a10_avmm_h.sv"                                                                                    -L altera_common_sv_packages -work altera_xcvr_fpll_a10_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/alt_xcvr_native_avmm_nf.sv"                                                                       -L altera_common_sv_packages -work altera_xcvr_fpll_a10_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/alt_xcvr_pll_embedded_debug.sv"                                                                   -L altera_common_sv_packages -work altera_xcvr_fpll_a10_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/alt_xcvr_pll_avmm_csr.sv"                                                                         -L altera_common_sv_packages -work altera_xcvr_fpll_a10_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/mentor/alt_xcvr_pll_embedded_debug.sv"                                                            -L altera_common_sv_packages -work altera_xcvr_fpll_a10_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/mentor/alt_xcvr_pll_avmm_csr.sv"                                                                  -L altera_common_sv_packages -work altera_xcvr_fpll_a10_171           
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/fpll_g3.v"                                                                                                                      -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/twentynm_xcvr_avmm.sv"                                                                         -L altera_common_sv_packages -work altera_xcvr_atx_pll_a10_171        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/mentor/twentynm_xcvr_avmm.sv"                                                                  -L altera_common_sv_packages -work altera_xcvr_atx_pll_a10_171        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/alt_xcvr_resync.sv"                                                                            -L altera_common_sv_packages -work altera_xcvr_atx_pll_a10_171        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/alt_xcvr_arbiter.sv"                                                                           -L altera_common_sv_packages -work altera_xcvr_atx_pll_a10_171        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/mentor/alt_xcvr_resync.sv"                                                                     -L altera_common_sv_packages -work altera_xcvr_atx_pll_a10_171        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/mentor/alt_xcvr_arbiter.sv"                                                                    -L altera_common_sv_packages -work altera_xcvr_atx_pll_a10_171        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/a10_avmm_h.sv"                                                                                 -L altera_common_sv_packages -work altera_xcvr_atx_pll_a10_171        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/alt_xcvr_atx_pll_rcfg_arb.sv"                                                                  -L altera_common_sv_packages -work altera_xcvr_atx_pll_a10_171        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/a10_xcvr_atx_pll.sv"                                                                           -L altera_common_sv_packages -work altera_xcvr_atx_pll_a10_171        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/alt_xcvr_pll_embedded_debug.sv"                                                                -L altera_common_sv_packages -work altera_xcvr_atx_pll_a10_171        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/alt_xcvr_pll_avmm_csr.sv"                                                                      -L altera_common_sv_packages -work altera_xcvr_atx_pll_a10_171        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/mentor/alt_xcvr_atx_pll_rcfg_arb.sv"                                                           -L altera_common_sv_packages -work altera_xcvr_atx_pll_a10_171        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/mentor/a10_xcvr_atx_pll.sv"                                                                    -L altera_common_sv_packages -work altera_xcvr_atx_pll_a10_171        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/mentor/alt_xcvr_pll_embedded_debug.sv"                                                         -L altera_common_sv_packages -work altera_xcvr_atx_pll_a10_171        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/mentor/alt_xcvr_pll_avmm_csr.sv"                                                               -L altera_common_sv_packages -work altera_xcvr_atx_pll_a10_171        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/ep_g3x8_avmm256_DUT_altera_xcvr_atx_pll_a10_171_pufnv4i.sv"                                    -L altera_common_sv_packages -work altera_xcvr_atx_pll_a10_171        
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/alt_xcvr_atx_pll_rcfg_opt_logic_pufnv4i.sv"                                                    -L altera_common_sv_packages -work altera_xcvr_atx_pll_a10_171        
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/lcpll_g3xn.v"                                                                                                                   -work altera_pcie_a10_hip_171            
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/ep_g3x8_avmm256_DUT_altera_pcie_a10_hip_171_ik6fnxi.v"                                                                          -work altera_pcie_a10_hip_171            
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_a10_hip_pipen1b.v"                                                                                                      -work altera_pcie_a10_hip_171            
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_sc_bitsync.v"                                                                                                           -work altera_pcie_a10_hip_171            
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_reset_delay_sync.v"                                                                                                     -work altera_pcie_a10_hip_171            
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_rs_a10_hip.v"                                                                                                           -work altera_pcie_a10_hip_171            
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_a10_hip_pllnphy.v"                                                                                                      -work altera_pcie_a10_hip_171            
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/skp_det_g3.v"                                                                                                                   -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altera_xcvr_functions.sv"                                                                          -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_monitor_a10_dlhip_sim.sv"                                                                  -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_tlp_inspector_a10.v"                                                                                                    -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_tlp_inspector_cseb_a10.sv"                                                                 -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_tlp_inspector_monitor_a10.sv"                                                              -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_tlp_inspector_trigger_a10.v"                                                                                            -work altera_pcie_a10_hip_171            
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_tlp_inspector_pcsig_drive_a10.v"                                                                                        -work altera_pcie_a10_hip_171            
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_a10_gbfifo.v"                                                                                                           -work altera_pcie_a10_hip_171            
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_scfifo_a10.v"                                                                                                           -work altera_pcie_a10_hip_171            
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_a10_scfifo_ext.v"                                                                                                       -work altera_pcie_a10_hip_171            
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcierd_hip_rs.v"                                                                                                             -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_256_app.sv"                                                                              -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_hip_interface.sv"                                                                        -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_rxm.sv"                                                                              -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_txs.sv"                                                                              -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_rd.sv"                                                                               -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_wr_2.sv"                                                                             -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_wr_readmem_2.sv"                                                                     -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_wr_tlpgen_2.sv"                                                                      -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_wr_wdalign_2.sv"                                                                     -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav128_dma_wr.sv"                                                                            -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav128_dma_wr_readmem.sv"                                                                    -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav128_dma_wr_tlpgen.sv"                                                                     -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav128_dma_wr_wdalign.sv"                                                                    -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_arbiter.sv"                                                                              -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_cra.sv"                                                                                  -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_fifo.sv"                                                                                                                -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_hprxm_rdwr.sv"                                                                       -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_hprxm_cpl.sv"                                                                        -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_hprxm_txctrl.sv"                                                                     -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_hprxm.sv"                                                                            -L altera_common_sv_packages -work altera_pcie_a10_hip_171            
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/sim/ep_g3x8_avmm256_DUT.v"                                                                                                                                  -work ep_g3x8_avmm256_DUT                
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_master_translator_171/sim/altera_merlin_master_translator.sv"                                                                                                                           -work altera_merlin_master_translator_171
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                                                                                                                             -work altera_merlin_slave_translator_171 
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_master_agent_171/sim/altera_merlin_master_agent.sv"                                                                                                                                     -work altera_merlin_master_agent_171     
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_slave_agent_171/sim/altera_merlin_slave_agent.sv"                                                                                                                                       -work altera_merlin_slave_agent_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_slave_agent_171/sim/altera_merlin_burst_uncompressor.sv"                                                                                                                                -work altera_merlin_slave_agent_171      
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../altera_avalon_sc_fifo_171/sim/altera_avalon_sc_fifo.v"                                                                                                                                                -work altera_avalon_sc_fifo_171          
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_23jcmrq.sv"                                                                                                                     -work altera_merlin_router_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_vyttjzq.sv"                                                                                                                     -work altera_merlin_router_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_demultiplexer_171_xojy6ca.sv"                                                                                                       -work altera_merlin_demultiplexer_171    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_iamyjly.sv"                                                                                                           -work altera_merlin_multiplexer_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                                                                        -work altera_merlin_multiplexer_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_demultiplexer_171_bdho4xy.sv"                                                                                                       -work altera_merlin_demultiplexer_171    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_lgwlboa.sv"                                                                                                           -work altera_merlin_multiplexer_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                                                                        -work altera_merlin_multiplexer_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../error_adapter_171/sim/ep_g3x8_avmm256_error_adapter_171_nt3czwq.sv"                                                                                                                                   -work error_adapter_171                  
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../altera_avalon_st_adapter_171/sim/ep_g3x8_avmm256_altera_avalon_st_adapter_171_yxzsrmq.v"                                                                                                              -work altera_avalon_st_adapter_171       
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../altera_mm_interconnect_171/sim/ep_g3x8_avmm256_altera_mm_interconnect_171_7t36psq.v"                                                                                                                  -work altera_mm_interconnect_171         
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_gwxgora.sv"                                                                                                                     -work altera_merlin_router_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_g6qpmsi.sv"                                                                                                                     -work altera_merlin_router_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_tdiu6gq.sv"                                                                                                                     -work altera_merlin_router_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_ts3z7ji.sv"                                                                                                                     -work altera_merlin_router_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter.sv"                                                                                                                                   -work altera_merlin_burst_adapter_171    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter_uncmpr.sv"                                                                                                                            -work altera_merlin_burst_adapter_171    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter_13_1.sv"                                                                                                                              -work altera_merlin_burst_adapter_171    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter_new.sv"                                                                                                                               -work altera_merlin_burst_adapter_171    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_incr_burst_converter.sv"                                                                                                                                   -work altera_merlin_burst_adapter_171    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_wrap_burst_converter.sv"                                                                                                                                   -work altera_merlin_burst_adapter_171    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_default_burst_converter.sv"                                                                                                                                -work altera_merlin_burst_adapter_171    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_address_alignment.sv"                                                                                                                               -work altera_merlin_burst_adapter_171    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_avalon_st_pipeline_stage.sv"                                                                                                                               -work altera_merlin_burst_adapter_171    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_avalon_st_pipeline_base.v"                                                                                                                                 -work altera_merlin_burst_adapter_171    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_demultiplexer_171_eqvhaxq.sv"                                                                                                       -work altera_merlin_demultiplexer_171    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_demultiplexer_171_uehjzdy.sv"                                                                                                       -work altera_merlin_demultiplexer_171    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_sdxk4oa.sv"                                                                                                           -work altera_merlin_multiplexer_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                                                                        -work altera_merlin_multiplexer_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_cckx4ta.sv"                                                                                                           -work altera_merlin_multiplexer_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                                                                        -work altera_merlin_multiplexer_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_demultiplexer_171_3kxwkza.sv"                                                                                                       -work altera_merlin_demultiplexer_171    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_wyhqm3q.sv"                                                                                                           -work altera_merlin_multiplexer_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                                                                        -work altera_merlin_multiplexer_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_36d27bi.sv"                                                                                                           -work altera_merlin_multiplexer_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                                                                        -work altera_merlin_multiplexer_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_width_adapter_171/sim/altera_merlin_width_adapter.sv"                                                                                                                                   -work altera_merlin_width_adapter_171    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_width_adapter_171/sim/altera_merlin_address_alignment.sv"                                                                                                                               -work altera_merlin_width_adapter_171    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_width_adapter_171/sim/altera_merlin_burst_uncompressor.sv"                                                                                                                              -work altera_merlin_width_adapter_171    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../error_adapter_171/sim/ep_g3x8_avmm256_error_adapter_171_t2hnnza.sv"                                                                                                                                   -work error_adapter_171                  
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../altera_avalon_st_adapter_171/sim/ep_g3x8_avmm256_altera_avalon_st_adapter_171_l5ksb3y.v"                                                                                                              -work altera_avalon_st_adapter_171       
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../altera_mm_interconnect_171/sim/ep_g3x8_avmm256_altera_mm_interconnect_171_m6w4bsa.v"                                                                                                                  -work altera_mm_interconnect_171         
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_eb7dply.sv"                                                                                                                     -work altera_merlin_router_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_fpb3wlq.sv"                                                                                                                     -work altera_merlin_router_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_demultiplexer_171_zgmngca.sv"                                                                                                       -work altera_merlin_demultiplexer_171    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_frt5vea.sv"                                                                                                           -work altera_merlin_multiplexer_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                                                                        -work altera_merlin_multiplexer_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_mhqksua.sv"                                                                                                           -work altera_merlin_multiplexer_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                                                                        -work altera_merlin_multiplexer_171      
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../altera_mm_interconnect_171/sim/ep_g3x8_avmm256_altera_mm_interconnect_171_glb5asi.v"                                                                                                                  -work altera_mm_interconnect_171         
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_oruwnoi.sv"                                                                                                                     -work altera_merlin_router_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_j5jg6hi.sv"                                                                                                                     -work altera_merlin_router_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_merlin_traffic_limiter.sv"                                                                                                                               -work altera_merlin_traffic_limiter_171  
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_merlin_reorder_memory.sv"                                                                                                                                -work altera_merlin_traffic_limiter_171  
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_avalon_sc_fifo.v"                                                                                                                                        -work altera_merlin_traffic_limiter_171  
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_avalon_st_pipeline_base.v"                                                                                                                               -work altera_merlin_traffic_limiter_171  
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_demultiplexer_171_wuqxuai.sv"                                                                                                       -work altera_merlin_demultiplexer_171    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_l5g5vfy.sv"                                                                                                           -work altera_merlin_multiplexer_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                                                                        -work altera_merlin_multiplexer_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_azrzo4q.sv"                                                                                                           -work altera_merlin_multiplexer_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                                                                        -work altera_merlin_multiplexer_171      
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../altera_mm_interconnect_171/sim/ep_g3x8_avmm256_altera_mm_interconnect_171_66vd26y.v"                                                                                                                  -work altera_mm_interconnect_171         
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../timing_adapter_171/sim/ep_g3x8_avmm256_timing_adapter_171_cjew6aq.sv"                                                                                                                                 -work timing_adapter_171                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../altera_avalon_st_adapter_171/sim/ep_g3x8_avmm256_altera_avalon_st_adapter_171_5moluky.v"                                                                                                              -work altera_avalon_st_adapter_171       
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../altera_reset_controller_171/sim/altera_reset_controller.v"                                                                                                                                            -work altera_reset_controller_171        
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../altera_reset_controller_171/sim/altera_reset_synchronizer.v"                                                                                                                                          -work altera_reset_controller_171        
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/ep_g3x8_avmm256.v"                                                                                                                                                                                       -work ep_g3x8_avmm256                    
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L ep_g3x8_avmm256_clk_0 -L dma_control_171 -L ep_g3x8_avmm256_dma_control_0 -L altera_avalon_onchip_memory2_171 -L ep_g3x8_avmm256_onchip_memory2_0 -L altera_common_sv_packages -L altera_xcvr_native_a10_1711 -L altera_pcie_a10_hip_171 -L altera_xcvr_fpll_a10_171 -L altera_xcvr_atx_pll_a10_171 -L ep_g3x8_avmm256_DUT -L altera_merlin_master_translator_171 -L altera_merlin_slave_translator_171 -L altera_merlin_master_agent_171 -L altera_merlin_slave_agent_171 -L altera_avalon_sc_fifo_171 -L altera_merlin_router_171 -L altera_merlin_demultiplexer_171 -L altera_merlin_multiplexer_171 -L error_adapter_171 -L altera_avalon_st_adapter_171 -L altera_mm_interconnect_171 -L altera_merlin_burst_adapter_171 -L altera_merlin_width_adapter_171 -L altera_merlin_traffic_limiter_171 -L timing_adapter_171 -L altera_reset_controller_171 -L ep_g3x8_avmm256 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L twentynm_ver -L twentynm_hssi_ver -L twentynm_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -novopt -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L ep_g3x8_avmm256_clk_0 -L dma_control_171 -L ep_g3x8_avmm256_dma_control_0 -L altera_avalon_onchip_memory2_171 -L ep_g3x8_avmm256_onchip_memory2_0 -L altera_common_sv_packages -L altera_xcvr_native_a10_1711 -L altera_pcie_a10_hip_171 -L altera_xcvr_fpll_a10_171 -L altera_xcvr_atx_pll_a10_171 -L ep_g3x8_avmm256_DUT -L altera_merlin_master_translator_171 -L altera_merlin_slave_translator_171 -L altera_merlin_master_agent_171 -L altera_merlin_slave_agent_171 -L altera_avalon_sc_fifo_171 -L altera_merlin_router_171 -L altera_merlin_demultiplexer_171 -L altera_merlin_multiplexer_171 -L error_adapter_171 -L altera_avalon_st_adapter_171 -L altera_mm_interconnect_171 -L altera_merlin_burst_adapter_171 -L altera_merlin_width_adapter_171 -L altera_merlin_traffic_limiter_171 -L timing_adapter_171 -L altera_reset_controller_171 -L ep_g3x8_avmm256 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L twentynm_ver -L twentynm_hssi_ver -L twentynm_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
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
  echo "elab_debug                                        -- Elaborate the top level design with novopt option"
  echo
  echo "ld                                                -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                                          -- Compile all the design files and elaborate the top level design with -novopt"
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
  echo
  echo "FORCE_MODELSIM_AE_SELECTION                       -- Set to true to force to select Modelsim AE always."
}
file_copy
h
