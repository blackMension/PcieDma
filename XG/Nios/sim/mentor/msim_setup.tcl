
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
#     Nios_nios2_gen2_0.Nios_nios2_gen2_0
#     Nios_clock_in.Nios_clock_in
#     Nios_onchip_memory2_0.Nios_onchip_memory2_0
#     Nios_reset_in.Nios_reset_in
#     Nios.Nios
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
# ACDS 17.1.2 304 linux 2019.06.06.16:26:14

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "Nios.Nios"
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
  file copy -force $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_rf_ram_b.dat ./
  file copy -force $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_ic_tag_ram.mif ./
  file copy -force $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_rf_ram_a.mif ./
  file copy -force $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_rf_ram_a.dat ./
  file copy -force $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_rf_ram_a.hex ./
  file copy -force $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_ociram_default_contents.mif ./
  file copy -force $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_rf_ram_b.mif ./
  file copy -force $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_ociram_default_contents.hex ./
  file copy -force $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_dc_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_rf_ram_b.hex ./
  file copy -force $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_bht_ram.dat ./
  file copy -force $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_ic_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_ic_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_bht_ram.mif ./
  file copy -force $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_bht_ram.hex ./
  file copy -force $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_dc_tag_ram.mif ./
  file copy -force $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_dc_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_ociram_default_contents.dat ./
  file copy -force $QSYS_SIMDIR/../../ip/Nios/Nios_onchip_memory2_0/altera_avalon_onchip_memory2_171/sim/Nios_onchip_memory2_0_onchip_memory2_0.hex ./
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
ensure_lib                                     ./libraries/altera_nios2_gen2_unit_171/         
vmap       altera_nios2_gen2_unit_171          ./libraries/altera_nios2_gen2_unit_171/         
ensure_lib                                     ./libraries/altera_nios2_gen2_171/              
vmap       altera_nios2_gen2_171               ./libraries/altera_nios2_gen2_171/              
ensure_lib                                     ./libraries/Nios_nios2_gen2_0/                  
vmap       Nios_nios2_gen2_0                   ./libraries/Nios_nios2_gen2_0/                  
ensure_lib                                     ./libraries/Nios_clock_in/                      
vmap       Nios_clock_in                       ./libraries/Nios_clock_in/                      
ensure_lib                                     ./libraries/altera_avalon_onchip_memory2_171/   
vmap       altera_avalon_onchip_memory2_171    ./libraries/altera_avalon_onchip_memory2_171/   
ensure_lib                                     ./libraries/Nios_onchip_memory2_0/              
vmap       Nios_onchip_memory2_0               ./libraries/Nios_onchip_memory2_0/              
ensure_lib                                     ./libraries/Nios_reset_in/                      
vmap       Nios_reset_in                       ./libraries/Nios_reset_in/                      
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
ensure_lib                                     ./libraries/altera_merlin_traffic_limiter_171/  
vmap       altera_merlin_traffic_limiter_171   ./libraries/altera_merlin_traffic_limiter_171/  
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
ensure_lib                                     ./libraries/altera_irq_mapper_171/              
vmap       altera_irq_mapper_171               ./libraries/altera_irq_mapper_171/              
ensure_lib                                     ./libraries/altera_reset_controller_171/        
vmap       altera_reset_controller_171         ./libraries/altera_reset_controller_171/        
ensure_lib                                     ./libraries/Nios/                               
vmap       Nios                                ./libraries/Nios/                               

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
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey.vo"                    -work altera_nios2_gen2_unit_171         
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_test_bench.v"          -work altera_nios2_gen2_unit_171         
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_debug_slave_tck.v"     -work altera_nios2_gen2_unit_171         
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_debug_slave_wrapper.v" -work altera_nios2_gen2_unit_171         
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_mult_cell.v"           -work altera_nios2_gen2_unit_171         
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_debug_slave_sysclk.v"  -work altera_nios2_gen2_unit_171         
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_171_2az3xjq.v"                               -work altera_nios2_gen2_171              
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/sim/Nios_nios2_gen2_0.v"                                                                                   -work Nios_nios2_gen2_0                  
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/Nios/Nios_clock_in/sim/Nios_clock_in.v"                                                                                           -work Nios_clock_in                      
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/Nios/Nios_onchip_memory2_0/altera_avalon_onchip_memory2_171/sim/Nios_onchip_memory2_0_altera_avalon_onchip_memory2_171_kcyxzai.v" -work altera_avalon_onchip_memory2_171   
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/Nios/Nios_onchip_memory2_0/sim/Nios_onchip_memory2_0.v"                                                                           -work Nios_onchip_memory2_0              
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../../ip/Nios/Nios_reset_in/sim/Nios_reset_in.v"                                                                                           -work Nios_reset_in                      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_master_translator_171/sim/altera_merlin_master_translator.sv"                                                             -work altera_merlin_master_translator_171
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                                                               -work altera_merlin_slave_translator_171 
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_master_agent_171/sim/altera_merlin_master_agent.sv"                                                                       -work altera_merlin_master_agent_171     
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_slave_agent_171/sim/altera_merlin_slave_agent.sv"                                                                         -work altera_merlin_slave_agent_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_slave_agent_171/sim/altera_merlin_burst_uncompressor.sv"                                                                  -work altera_merlin_slave_agent_171      
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../altera_avalon_sc_fifo_171/sim/altera_avalon_sc_fifo.v"                                                                                  -work altera_avalon_sc_fifo_171          
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_171/sim/Nios_altera_merlin_router_171_bvdyedq.sv"                                                                  -work altera_merlin_router_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_router_171/sim/Nios_altera_merlin_router_171_exfq7ma.sv"                                                                  -work altera_merlin_router_171           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_merlin_traffic_limiter.sv"                                                                 -work altera_merlin_traffic_limiter_171  
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_merlin_reorder_memory.sv"                                                                  -work altera_merlin_traffic_limiter_171  
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_avalon_sc_fifo.v"                                                                          -work altera_merlin_traffic_limiter_171  
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_avalon_st_pipeline_base.v"                                                                 -work altera_merlin_traffic_limiter_171  
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/Nios_altera_merlin_demultiplexer_171_3ssvi5a.sv"                                                    -work altera_merlin_demultiplexer_171    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/Nios_altera_merlin_multiplexer_171_rreylyq.sv"                                                        -work altera_merlin_multiplexer_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                          -work altera_merlin_multiplexer_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/Nios_altera_merlin_demultiplexer_171_wqjhr4q.sv"                                                    -work altera_merlin_demultiplexer_171    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/Nios_altera_merlin_multiplexer_171_v6nl2fq.sv"                                                        -work altera_merlin_multiplexer_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                          -work altera_merlin_multiplexer_171      
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../error_adapter_171/sim/Nios_error_adapter_171_nt3czwq.sv"                                                                                -work error_adapter_171                  
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../altera_avalon_st_adapter_171/sim/Nios_altera_avalon_st_adapter_171_yxzsrmq.v"                                                           -work altera_avalon_st_adapter_171       
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../altera_mm_interconnect_171/sim/Nios_altera_mm_interconnect_171_gpud3si.v"                                                               -work altera_mm_interconnect_171         
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_irq_mapper_171/sim/Nios_altera_irq_mapper_171_p76tqpi.sv"                                                                        -work altera_irq_mapper_171              
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../altera_reset_controller_171/sim/altera_reset_controller.v"                                                                              -work altera_reset_controller_171        
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/../altera_reset_controller_171/sim/altera_reset_synchronizer.v"                                                                            -work altera_reset_controller_171        
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/Nios.v"                                                                                                                                    -work Nios                               
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L altera_nios2_gen2_unit_171 -L altera_nios2_gen2_171 -L Nios_nios2_gen2_0 -L Nios_clock_in -L altera_avalon_onchip_memory2_171 -L Nios_onchip_memory2_0 -L Nios_reset_in -L altera_merlin_master_translator_171 -L altera_merlin_slave_translator_171 -L altera_merlin_master_agent_171 -L altera_merlin_slave_agent_171 -L altera_avalon_sc_fifo_171 -L altera_merlin_router_171 -L altera_merlin_traffic_limiter_171 -L altera_merlin_demultiplexer_171 -L altera_merlin_multiplexer_171 -L error_adapter_171 -L altera_avalon_st_adapter_171 -L altera_mm_interconnect_171 -L altera_irq_mapper_171 -L altera_reset_controller_171 -L Nios -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L twentynm_ver -L twentynm_hssi_ver -L twentynm_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -novopt -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L altera_nios2_gen2_unit_171 -L altera_nios2_gen2_171 -L Nios_nios2_gen2_0 -L Nios_clock_in -L altera_avalon_onchip_memory2_171 -L Nios_onchip_memory2_0 -L Nios_reset_in -L altera_merlin_master_translator_171 -L altera_merlin_slave_translator_171 -L altera_merlin_master_agent_171 -L altera_merlin_slave_agent_171 -L altera_avalon_sc_fifo_171 -L altera_merlin_router_171 -L altera_merlin_traffic_limiter_171 -L altera_merlin_demultiplexer_171 -L altera_merlin_multiplexer_171 -L error_adapter_171 -L altera_avalon_st_adapter_171 -L altera_mm_interconnect_171 -L altera_irq_mapper_171 -L altera_reset_controller_171 -L Nios -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L twentynm_ver -L twentynm_hssi_ver -L twentynm_hip_ver $TOP_LEVEL_NAME
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
