
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

# ACDS 17.1.2 304 linux 2019.04.20.11:04:21

# ----------------------------------------
# ncsim - auto-generated simulation script

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
# To write a top-level shell script that compiles Intel simulation libraries
# and the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "ncsim.sh", and modify text as directed.
# 
# You can also modify the simulation flow to suit your needs. Set the
# following variables to 1 to disable their corresponding processes:
# - SKIP_FILE_COPY: skip copying ROM/RAM initialization files
# - SKIP_DEV_COM: skip compiling the Quartus EDA simulation library
# - SKIP_COM: skip compiling Quartus-generated IP simulation files
# - SKIP_ELAB and SKIP_SIM: skip elaboration and simulation
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
# # the simulator. In this case, you must also copy the generated files
# # "cds.lib" and "hdl.var" - plus the directory "cds_libs" if generated - 
# # into the location from which you launch the simulator, or incorporate
# # into any existing library setup.
# #
# # Run Quartus-generated IP simulation script once to compile Quartus EDA
# # simulation libraries and Quartus-generated IP simulation files, and copy
# # any ROM/RAM initialization files to the simulation directory.
# # - If necessary, specify any compilation options:
# #   USER_DEFINED_COMPILE_OPTIONS
# #   USER_DEFINED_VHDL_COMPILE_OPTIONS applied to vhdl compiler
# #   USER_DEFINED_VERILOG_COMPILE_OPTIONS applied to verilog compiler
# #
# source <script generation output directory>/cadence/ncsim_setup.sh \
# SKIP_ELAB=1 \
# SKIP_SIM=1 \
# USER_DEFINED_COMPILE_OPTIONS=<compilation options for your design> \
# USER_DEFINED_VHDL_COMPILE_OPTIONS=<VHDL compilation options for your design> \
# USER_DEFINED_VERILOG_COMPILE_OPTIONS=<Verilog compilation options for your design> \
# QSYS_SIMDIR=<script generation output directory>
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the IP script)
# #
# ncvlog <compilation options> <design and testbench files>
# #
# # TOP_LEVEL_NAME is used in this script to set the top-level simulation or
# # testbench module/entity name.
# #
# # Run the IP script again to elaborate and simulate the top level:
# # - Specify TOP_LEVEL_NAME and USER_DEFINED_ELAB_OPTIONS.
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# #
# source <script generation output directory>/cadence/ncsim_setup.sh \
# SKIP_FILE_COPY=1 \
# SKIP_DEV_COM=1 \
# SKIP_COM=1 \
# TOP_LEVEL_NAME=<simulation top> \
# USER_DEFINED_ELAB_OPTIONS=<elaboration options for your design> \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# ACDS 17.1.2 304 linux 2019.04.20.11:04:21
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="ep_g3x8_avmm256.ep_g3x8_avmm256"
QSYS_SIMDIR="./../"
QUARTUS_INSTALL_DIR="/home/tools/intelFPGA_pro/17.1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `ncsim -version` != *"ncsim(64)"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/ep_g3x8_avmm256_clk_0/
mkdir -p ./libraries/dma_control_171/
mkdir -p ./libraries/ep_g3x8_avmm256_dma_control_0/
mkdir -p ./libraries/altera_avalon_onchip_memory2_171/
mkdir -p ./libraries/ep_g3x8_avmm256_onchip_memory2_0/
mkdir -p ./libraries/altera_common_sv_packages/
mkdir -p ./libraries/altera_xcvr_native_a10_1711/
mkdir -p ./libraries/altera_pcie_a10_hip_171/
mkdir -p ./libraries/altera_xcvr_fpll_a10_171/
mkdir -p ./libraries/altera_xcvr_atx_pll_a10_171/
mkdir -p ./libraries/ep_g3x8_avmm256_DUT/
mkdir -p ./libraries/altera_merlin_master_translator_171/
mkdir -p ./libraries/altera_merlin_slave_translator_171/
mkdir -p ./libraries/altera_merlin_master_agent_171/
mkdir -p ./libraries/altera_merlin_slave_agent_171/
mkdir -p ./libraries/altera_avalon_sc_fifo_171/
mkdir -p ./libraries/altera_merlin_router_171/
mkdir -p ./libraries/altera_merlin_demultiplexer_171/
mkdir -p ./libraries/altera_merlin_multiplexer_171/
mkdir -p ./libraries/error_adapter_171/
mkdir -p ./libraries/altera_avalon_st_adapter_171/
mkdir -p ./libraries/altera_mm_interconnect_171/
mkdir -p ./libraries/altera_merlin_burst_adapter_171/
mkdir -p ./libraries/altera_merlin_width_adapter_171/
mkdir -p ./libraries/altera_merlin_traffic_limiter_171/
mkdir -p ./libraries/timing_adapter_171/
mkdir -p ./libraries/altera_reset_controller_171/
mkdir -p ./libraries/ep_g3x8_avmm256/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/twentynm_ver/
mkdir -p ./libraries/twentynm_hssi_ver/
mkdir -p ./libraries/twentynm_hip_ver/

# ----------------------------------------
# copy RAM/ROM files to simulation directory

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                  -work altera_ver       
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                           -work lpm_ver          
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                              -work sgate_ver        
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                          -work altera_mf_ver    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                      -work altera_lnsim_ver 
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_atoms.v"                     -work twentynm_ver     
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/twentynm_atoms_ncrypt.v"      -work twentynm_ver     
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/twentynm_hssi_atoms_ncrypt.v" -work twentynm_hssi_ver
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hssi_atoms.v"                -work twentynm_hssi_ver
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/twentynm_hip_atoms_ncrypt.v"  -work twentynm_hip_ver 
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hip_atoms.v"                 -work twentynm_hip_ver 
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_clk_0/sim/ep_g3x8_avmm256_clk_0.v"                                                                                                 -work ep_g3x8_avmm256_clk_0                                                                             
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_dma_control_0/dma_control_171/sim/dma_controller.sv"                                                                               -work dma_control_171                     -cdslib ./cds_libs/dma_control_171.cds.lib                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_dma_control_0/dma_control_171/sim/altpcie_dynamic_control.sv"                                                                      -work dma_control_171                     -cdslib ./cds_libs/dma_control_171.cds.lib                    
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_dma_control_0/sim/ep_g3x8_avmm256_dma_control_0.v"                                                                                 -work ep_g3x8_avmm256_dma_control_0                                                                     
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_onchip_memory2_0/altera_avalon_onchip_memory2_171/sim/ep_g3x8_avmm256_onchip_memory2_0_altera_avalon_onchip_memory2_171_2hwxsvq.v" -work altera_avalon_onchip_memory2_171    -cdslib ./cds_libs/altera_avalon_onchip_memory2_171.cds.lib   
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_onchip_memory2_0/sim/ep_g3x8_avmm256_onchip_memory2_0.v"                                                                           -work ep_g3x8_avmm256_onchip_memory2_0                                                                  
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/altera_xcvr_native_a10_functions_h.sv"                                                         -work altera_common_sv_packages           -cdslib ./cds_libs/altera_common_sv_packages.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_resync.sv"                                                                            -work altera_xcvr_native_a10_1711         -cdslib ./cds_libs/altera_xcvr_native_a10_1711.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_arbiter.sv"                                                                           -work altera_xcvr_native_a10_1711         -cdslib ./cds_libs/altera_xcvr_native_a10_1711.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/twentynm_pcs.sv"                                                                               -work altera_xcvr_native_a10_1711         -cdslib ./cds_libs/altera_xcvr_native_a10_1711.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/twentynm_pma.sv"                                                                               -work altera_xcvr_native_a10_1711         -cdslib ./cds_libs/altera_xcvr_native_a10_1711.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/twentynm_xcvr_avmm.sv"                                                                         -work altera_xcvr_native_a10_1711         -cdslib ./cds_libs/altera_xcvr_native_a10_1711.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/twentynm_xcvr_native.sv"                                                                       -work altera_xcvr_native_a10_1711         -cdslib ./cds_libs/altera_xcvr_native_a10_1711.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/a10_avmm_h.sv"                                                                                 -work altera_xcvr_native_a10_1711         -cdslib ./cds_libs/altera_xcvr_native_a10_1711.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_pipe_retry.sv"                                                                 -work altera_xcvr_native_a10_1711         -cdslib ./cds_libs/altera_xcvr_native_a10_1711.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_avmm_csr.sv"                                                                   -work altera_xcvr_native_a10_1711         -cdslib ./cds_libs/altera_xcvr_native_a10_1711.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_prbs_accum.sv"                                                                 -work altera_xcvr_native_a10_1711         -cdslib ./cds_libs/altera_xcvr_native_a10_1711.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_odi_accel.sv"                                                                  -work altera_xcvr_native_a10_1711         -cdslib ./cds_libs/altera_xcvr_native_a10_1711.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_rcfg_arb.sv"                                                                   -work altera_xcvr_native_a10_1711         -cdslib ./cds_libs/altera_xcvr_native_a10_1711.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/altera_xcvr_native_pcie_dfe_params_h.sv"                                                       -work altera_xcvr_native_a10_1711         -cdslib ./cds_libs/altera_xcvr_native_a10_1711.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/pcie_mgmt_commands_h.sv"                                                                       -work altera_xcvr_native_a10_1711         -cdslib ./cds_libs/altera_xcvr_native_a10_1711.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/pcie_mgmt_functions_h.sv"                                                                      -work altera_xcvr_native_a10_1711         -cdslib ./cds_libs/altera_xcvr_native_a10_1711.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/pcie_mgmt_program.sv"                                                                          -work altera_xcvr_native_a10_1711         -cdslib ./cds_libs/altera_xcvr_native_a10_1711.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/pcie_mgmt_cpu.sv"                                                                              -work altera_xcvr_native_a10_1711         -cdslib ./cds_libs/altera_xcvr_native_a10_1711.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/pcie_mgmt_master.sv"                                                                           -work altera_xcvr_native_a10_1711         -cdslib ./cds_libs/altera_xcvr_native_a10_1711.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/altera_xcvr_native_pcie_dfe_ip.sv"                                                             -work altera_xcvr_native_a10_1711         -cdslib ./cds_libs/altera_xcvr_native_a10_1711.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/ep_g3x8_avmm256_DUT_altera_xcvr_native_a10_1711_qsxpgua.sv"                                    -work altera_xcvr_native_a10_1711         -cdslib ./cds_libs/altera_xcvr_native_a10_1711.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_rcfg_opt_logic_qsxpgua.sv"                                                     -work altera_xcvr_native_a10_1711         -cdslib ./cds_libs/altera_xcvr_native_a10_1711.cds.lib        
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/phy_g3x8.v"                                                                                        -work altera_pcie_a10_hip_171                                                                           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/twentynm_xcvr_avmm.sv"                                                                            -work altera_xcvr_fpll_a10_171            -cdslib ./cds_libs/altera_xcvr_fpll_a10_171.cds.lib           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/alt_xcvr_resync.sv"                                                                               -work altera_xcvr_fpll_a10_171            -cdslib ./cds_libs/altera_xcvr_fpll_a10_171.cds.lib           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/altera_xcvr_fpll_a10.sv"                                                                          -work altera_xcvr_fpll_a10_171            -cdslib ./cds_libs/altera_xcvr_fpll_a10_171.cds.lib           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/a10_avmm_h.sv"                                                                                    -work altera_xcvr_fpll_a10_171            -cdslib ./cds_libs/altera_xcvr_fpll_a10_171.cds.lib           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/alt_xcvr_native_avmm_nf.sv"                                                                       -work altera_xcvr_fpll_a10_171            -cdslib ./cds_libs/altera_xcvr_fpll_a10_171.cds.lib           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/alt_xcvr_pll_embedded_debug.sv"                                                                   -work altera_xcvr_fpll_a10_171            -cdslib ./cds_libs/altera_xcvr_fpll_a10_171.cds.lib           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/alt_xcvr_pll_avmm_csr.sv"                                                                         -work altera_xcvr_fpll_a10_171            -cdslib ./cds_libs/altera_xcvr_fpll_a10_171.cds.lib           
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/fpll_g3.v"                                                                                         -work altera_pcie_a10_hip_171                                                                           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/twentynm_xcvr_avmm.sv"                                                                         -work altera_xcvr_atx_pll_a10_171         -cdslib ./cds_libs/altera_xcvr_atx_pll_a10_171.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/alt_xcvr_resync.sv"                                                                            -work altera_xcvr_atx_pll_a10_171         -cdslib ./cds_libs/altera_xcvr_atx_pll_a10_171.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/alt_xcvr_arbiter.sv"                                                                           -work altera_xcvr_atx_pll_a10_171         -cdslib ./cds_libs/altera_xcvr_atx_pll_a10_171.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/a10_avmm_h.sv"                                                                                 -work altera_xcvr_atx_pll_a10_171         -cdslib ./cds_libs/altera_xcvr_atx_pll_a10_171.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/alt_xcvr_atx_pll_rcfg_arb.sv"                                                                  -work altera_xcvr_atx_pll_a10_171         -cdslib ./cds_libs/altera_xcvr_atx_pll_a10_171.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/a10_xcvr_atx_pll.sv"                                                                           -work altera_xcvr_atx_pll_a10_171         -cdslib ./cds_libs/altera_xcvr_atx_pll_a10_171.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/alt_xcvr_pll_embedded_debug.sv"                                                                -work altera_xcvr_atx_pll_a10_171         -cdslib ./cds_libs/altera_xcvr_atx_pll_a10_171.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/alt_xcvr_pll_avmm_csr.sv"                                                                      -work altera_xcvr_atx_pll_a10_171         -cdslib ./cds_libs/altera_xcvr_atx_pll_a10_171.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/ep_g3x8_avmm256_DUT_altera_xcvr_atx_pll_a10_171_pufnv4i.sv"                                    -work altera_xcvr_atx_pll_a10_171         -cdslib ./cds_libs/altera_xcvr_atx_pll_a10_171.cds.lib        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/alt_xcvr_atx_pll_rcfg_opt_logic_pufnv4i.sv"                                                    -work altera_xcvr_atx_pll_a10_171         -cdslib ./cds_libs/altera_xcvr_atx_pll_a10_171.cds.lib        
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/lcpll_g3xn.v"                                                                                      -work altera_pcie_a10_hip_171                                                                           
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/ep_g3x8_avmm256_DUT_altera_pcie_a10_hip_171_ik6fnxi.v"                                             -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_a10_hip_pipen1b.v"                                                                         -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_sc_bitsync.v"                                                                              -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_reset_delay_sync.v"                                                                        -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_rs_a10_hip.v"                                                                              -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_a10_hip_pllnphy.v"                                                                         -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/skp_det_g3.v"                                                                                      -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altera_xcvr_functions.sv"                                                                          -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_monitor_a10_dlhip_sim.sv"                                                                  -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_tlp_inspector_a10.v"                                                                       -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_tlp_inspector_cseb_a10.sv"                                                                 -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_tlp_inspector_monitor_a10.sv"                                                              -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_tlp_inspector_trigger_a10.v"                                                               -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_tlp_inspector_pcsig_drive_a10.v"                                                           -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_a10_gbfifo.v"                                                                              -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_scfifo_a10.v"                                                                              -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_a10_scfifo_ext.v"                                                                          -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcierd_hip_rs.v"                                                                                -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_256_app.sv"                                                                              -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_hip_interface.sv"                                                                        -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_rxm.sv"                                                                              -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_txs.sv"                                                                              -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_rd.sv"                                                                               -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_wr_2.sv"                                                                             -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_wr_readmem_2.sv"                                                                     -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_wr_tlpgen_2.sv"                                                                      -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_wr_wdalign_2.sv"                                                                     -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav128_dma_wr.sv"                                                                            -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav128_dma_wr_readmem.sv"                                                                    -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav128_dma_wr_tlpgen.sv"                                                                     -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav128_dma_wr_wdalign.sv"                                                                    -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_arbiter.sv"                                                                              -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_cra.sv"                                                                                  -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_fifo.sv"                                                                                   -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_hprxm_rdwr.sv"                                                                       -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_hprxm_cpl.sv"                                                                        -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_hprxm_txctrl.sv"                                                                     -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_hprxm.sv"                                                                            -work altera_pcie_a10_hip_171             -cdslib ./cds_libs/altera_pcie_a10_hip_171.cds.lib            
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/sim/ep_g3x8_avmm256_DUT.v"                                                                                                     -work ep_g3x8_avmm256_DUT                                                                               
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_master_translator_171/sim/altera_merlin_master_translator.sv"                                                                                              -work altera_merlin_master_translator_171 -cdslib ./cds_libs/altera_merlin_master_translator_171.cds.lib
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                                                                                                -work altera_merlin_slave_translator_171  -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib 
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_master_agent_171/sim/altera_merlin_master_agent.sv"                                                                                                        -work altera_merlin_master_agent_171      -cdslib ./cds_libs/altera_merlin_master_agent_171.cds.lib     
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_slave_agent_171/sim/altera_merlin_slave_agent.sv"                                                                                                          -work altera_merlin_slave_agent_171       -cdslib ./cds_libs/altera_merlin_slave_agent_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_slave_agent_171/sim/altera_merlin_burst_uncompressor.sv"                                                                                                   -work altera_merlin_slave_agent_171       -cdslib ./cds_libs/altera_merlin_slave_agent_171.cds.lib      
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_avalon_sc_fifo_171/sim/altera_avalon_sc_fifo.v"                                                                                                                   -work altera_avalon_sc_fifo_171           -cdslib ./cds_libs/altera_avalon_sc_fifo_171.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_23jcmrq.sv"                                                                                        -work altera_merlin_router_171            -cdslib ./cds_libs/altera_merlin_router_171.cds.lib           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_vyttjzq.sv"                                                                                        -work altera_merlin_router_171            -cdslib ./cds_libs/altera_merlin_router_171.cds.lib           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_demultiplexer_171_xojy6ca.sv"                                                                          -work altera_merlin_demultiplexer_171     -cdslib ./cds_libs/altera_merlin_demultiplexer_171.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_iamyjly.sv"                                                                              -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                                           -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_demultiplexer_171_bdho4xy.sv"                                                                          -work altera_merlin_demultiplexer_171     -cdslib ./cds_libs/altera_merlin_demultiplexer_171.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_lgwlboa.sv"                                                                              -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                                           -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../error_adapter_171/sim/ep_g3x8_avmm256_error_adapter_171_nt3czwq.sv"                                                                                                      -work error_adapter_171                   -cdslib ./cds_libs/error_adapter_171.cds.lib                  
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_avalon_st_adapter_171/sim/ep_g3x8_avmm256_altera_avalon_st_adapter_171_yxzsrmq.v"                                                                                 -work altera_avalon_st_adapter_171                                                                      
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_mm_interconnect_171/sim/ep_g3x8_avmm256_altera_mm_interconnect_171_7t36psq.v"                                                                                     -work altera_mm_interconnect_171                                                                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_gwxgora.sv"                                                                                        -work altera_merlin_router_171            -cdslib ./cds_libs/altera_merlin_router_171.cds.lib           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_g6qpmsi.sv"                                                                                        -work altera_merlin_router_171            -cdslib ./cds_libs/altera_merlin_router_171.cds.lib           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_tdiu6gq.sv"                                                                                        -work altera_merlin_router_171            -cdslib ./cds_libs/altera_merlin_router_171.cds.lib           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_ts3z7ji.sv"                                                                                        -work altera_merlin_router_171            -cdslib ./cds_libs/altera_merlin_router_171.cds.lib           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter.sv"                                                                                                      -work altera_merlin_burst_adapter_171     -cdslib ./cds_libs/altera_merlin_burst_adapter_171.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter_uncmpr.sv"                                                                                               -work altera_merlin_burst_adapter_171     -cdslib ./cds_libs/altera_merlin_burst_adapter_171.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter_13_1.sv"                                                                                                 -work altera_merlin_burst_adapter_171     -cdslib ./cds_libs/altera_merlin_burst_adapter_171.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter_new.sv"                                                                                                  -work altera_merlin_burst_adapter_171     -cdslib ./cds_libs/altera_merlin_burst_adapter_171.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_incr_burst_converter.sv"                                                                                                      -work altera_merlin_burst_adapter_171     -cdslib ./cds_libs/altera_merlin_burst_adapter_171.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_wrap_burst_converter.sv"                                                                                                      -work altera_merlin_burst_adapter_171     -cdslib ./cds_libs/altera_merlin_burst_adapter_171.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_default_burst_converter.sv"                                                                                                   -work altera_merlin_burst_adapter_171     -cdslib ./cds_libs/altera_merlin_burst_adapter_171.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_address_alignment.sv"                                                                                                  -work altera_merlin_burst_adapter_171     -cdslib ./cds_libs/altera_merlin_burst_adapter_171.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_avalon_st_pipeline_stage.sv"                                                                                                  -work altera_merlin_burst_adapter_171     -cdslib ./cds_libs/altera_merlin_burst_adapter_171.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_avalon_st_pipeline_base.v"                                                                                                    -work altera_merlin_burst_adapter_171     -cdslib ./cds_libs/altera_merlin_burst_adapter_171.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_demultiplexer_171_eqvhaxq.sv"                                                                          -work altera_merlin_demultiplexer_171     -cdslib ./cds_libs/altera_merlin_demultiplexer_171.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_demultiplexer_171_uehjzdy.sv"                                                                          -work altera_merlin_demultiplexer_171     -cdslib ./cds_libs/altera_merlin_demultiplexer_171.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_sdxk4oa.sv"                                                                              -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                                           -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_cckx4ta.sv"                                                                              -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                                           -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_demultiplexer_171_3kxwkza.sv"                                                                          -work altera_merlin_demultiplexer_171     -cdslib ./cds_libs/altera_merlin_demultiplexer_171.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_wyhqm3q.sv"                                                                              -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                                           -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_36d27bi.sv"                                                                              -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                                           -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_width_adapter_171/sim/altera_merlin_width_adapter.sv"                                                                                                      -work altera_merlin_width_adapter_171     -cdslib ./cds_libs/altera_merlin_width_adapter_171.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_width_adapter_171/sim/altera_merlin_address_alignment.sv"                                                                                                  -work altera_merlin_width_adapter_171     -cdslib ./cds_libs/altera_merlin_width_adapter_171.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_width_adapter_171/sim/altera_merlin_burst_uncompressor.sv"                                                                                                 -work altera_merlin_width_adapter_171     -cdslib ./cds_libs/altera_merlin_width_adapter_171.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../error_adapter_171/sim/ep_g3x8_avmm256_error_adapter_171_t2hnnza.sv"                                                                                                      -work error_adapter_171                   -cdslib ./cds_libs/error_adapter_171.cds.lib                  
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_avalon_st_adapter_171/sim/ep_g3x8_avmm256_altera_avalon_st_adapter_171_l5ksb3y.v"                                                                                 -work altera_avalon_st_adapter_171                                                                      
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_mm_interconnect_171/sim/ep_g3x8_avmm256_altera_mm_interconnect_171_m6w4bsa.v"                                                                                     -work altera_mm_interconnect_171                                                                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_eb7dply.sv"                                                                                        -work altera_merlin_router_171            -cdslib ./cds_libs/altera_merlin_router_171.cds.lib           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_fpb3wlq.sv"                                                                                        -work altera_merlin_router_171            -cdslib ./cds_libs/altera_merlin_router_171.cds.lib           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_demultiplexer_171_zgmngca.sv"                                                                          -work altera_merlin_demultiplexer_171     -cdslib ./cds_libs/altera_merlin_demultiplexer_171.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_frt5vea.sv"                                                                              -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                                           -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_mhqksua.sv"                                                                              -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                                           -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_mm_interconnect_171/sim/ep_g3x8_avmm256_altera_mm_interconnect_171_glb5asi.v"                                                                                     -work altera_mm_interconnect_171                                                                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_oruwnoi.sv"                                                                                        -work altera_merlin_router_171            -cdslib ./cds_libs/altera_merlin_router_171.cds.lib           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_j5jg6hi.sv"                                                                                        -work altera_merlin_router_171            -cdslib ./cds_libs/altera_merlin_router_171.cds.lib           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_merlin_traffic_limiter.sv"                                                                                                  -work altera_merlin_traffic_limiter_171   -cdslib ./cds_libs/altera_merlin_traffic_limiter_171.cds.lib  
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_merlin_reorder_memory.sv"                                                                                                   -work altera_merlin_traffic_limiter_171   -cdslib ./cds_libs/altera_merlin_traffic_limiter_171.cds.lib  
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_avalon_sc_fifo.v"                                                                                                           -work altera_merlin_traffic_limiter_171   -cdslib ./cds_libs/altera_merlin_traffic_limiter_171.cds.lib  
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_avalon_st_pipeline_base.v"                                                                                                  -work altera_merlin_traffic_limiter_171   -cdslib ./cds_libs/altera_merlin_traffic_limiter_171.cds.lib  
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_demultiplexer_171_wuqxuai.sv"                                                                          -work altera_merlin_demultiplexer_171     -cdslib ./cds_libs/altera_merlin_demultiplexer_171.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_l5g5vfy.sv"                                                                              -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                                           -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_azrzo4q.sv"                                                                              -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                                           -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_mm_interconnect_171/sim/ep_g3x8_avmm256_altera_mm_interconnect_171_66vd26y.v"                                                                                     -work altera_mm_interconnect_171                                                                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../timing_adapter_171/sim/ep_g3x8_avmm256_timing_adapter_171_cjew6aq.sv"                                                                                                    -work timing_adapter_171                  -cdslib ./cds_libs/timing_adapter_171.cds.lib                 
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_avalon_st_adapter_171/sim/ep_g3x8_avmm256_altera_avalon_st_adapter_171_5moluky.v"                                                                                 -work altera_avalon_st_adapter_171                                                                      
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_reset_controller_171/sim/altera_reset_controller.v"                                                                                                               -work altera_reset_controller_171         -cdslib ./cds_libs/altera_reset_controller_171.cds.lib        
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_reset_controller_171/sim/altera_reset_synchronizer.v"                                                                                                             -work altera_reset_controller_171         -cdslib ./cds_libs/altera_reset_controller_171.cds.lib        
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/ep_g3x8_avmm256.v"                                                                                                                                                          -work ep_g3x8_avmm256                                                                                   
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  export GENERIC_PARAM_COMPAT_CHECK=1
  ncelab -access +w+r+c -namemap_mixgen -relax $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim -licqueue $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi
