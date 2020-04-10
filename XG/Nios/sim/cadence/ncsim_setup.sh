
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

# ACDS 17.1.2 304 linux 2019.06.06.16:26:14

# ----------------------------------------
# ncsim - auto-generated simulation script

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
# ACDS 17.1.2 304 linux 2019.06.06.16:26:14
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="Nios.Nios"
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
mkdir -p ./libraries/altera_nios2_gen2_unit_171/
mkdir -p ./libraries/altera_nios2_gen2_171/
mkdir -p ./libraries/Nios_nios2_gen2_0/
mkdir -p ./libraries/Nios_clock_in/
mkdir -p ./libraries/altera_avalon_onchip_memory2_171/
mkdir -p ./libraries/Nios_onchip_memory2_0/
mkdir -p ./libraries/Nios_reset_in/
mkdir -p ./libraries/altera_merlin_master_translator_171/
mkdir -p ./libraries/altera_merlin_slave_translator_171/
mkdir -p ./libraries/altera_merlin_master_agent_171/
mkdir -p ./libraries/altera_merlin_slave_agent_171/
mkdir -p ./libraries/altera_avalon_sc_fifo_171/
mkdir -p ./libraries/altera_merlin_router_171/
mkdir -p ./libraries/altera_merlin_traffic_limiter_171/
mkdir -p ./libraries/altera_merlin_demultiplexer_171/
mkdir -p ./libraries/altera_merlin_multiplexer_171/
mkdir -p ./libraries/error_adapter_171/
mkdir -p ./libraries/altera_avalon_st_adapter_171/
mkdir -p ./libraries/altera_mm_interconnect_171/
mkdir -p ./libraries/altera_irq_mapper_171/
mkdir -p ./libraries/altera_reset_controller_171/
mkdir -p ./libraries/Nios/
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
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_rf_ram_b.dat ./
  cp -f $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_ic_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_rf_ram_a.mif ./
  cp -f $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_rf_ram_a.dat ./
  cp -f $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_rf_ram_a.hex ./
  cp -f $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_ociram_default_contents.mif ./
  cp -f $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_rf_ram_b.mif ./
  cp -f $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_ociram_default_contents.hex ./
  cp -f $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_dc_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_rf_ram_b.hex ./
  cp -f $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_bht_ram.dat ./
  cp -f $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_ic_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_ic_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_bht_ram.mif ./
  cp -f $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_bht_ram.hex ./
  cp -f $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_dc_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_dc_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_ociram_default_contents.dat ./
  cp -f $QSYS_SIMDIR/../../ip/Nios/Nios_onchip_memory2_0/altera_avalon_onchip_memory2_171/sim/Nios_onchip_memory2_0_onchip_memory2_0.hex ./
fi

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
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey.vo"                    -work altera_nios2_gen2_unit_171          -cdslib ./cds_libs/altera_nios2_gen2_unit_171.cds.lib         
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_test_bench.v"          -work altera_nios2_gen2_unit_171          -cdslib ./cds_libs/altera_nios2_gen2_unit_171.cds.lib         
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_debug_slave_tck.v"     -work altera_nios2_gen2_unit_171          -cdslib ./cds_libs/altera_nios2_gen2_unit_171.cds.lib         
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_debug_slave_wrapper.v" -work altera_nios2_gen2_unit_171          -cdslib ./cds_libs/altera_nios2_gen2_unit_171.cds.lib         
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_mult_cell.v"           -work altera_nios2_gen2_unit_171          -cdslib ./cds_libs/altera_nios2_gen2_unit_171.cds.lib         
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_debug_slave_sysclk.v"  -work altera_nios2_gen2_unit_171          -cdslib ./cds_libs/altera_nios2_gen2_unit_171.cds.lib         
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_171_2az3xjq.v"                               -work altera_nios2_gen2_171                                                                             
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/sim/Nios_nios2_gen2_0.v"                                                                                   -work Nios_nios2_gen2_0                                                                                 
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Nios/Nios_clock_in/sim/Nios_clock_in.v"                                                                                           -work Nios_clock_in                                                                                     
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Nios/Nios_onchip_memory2_0/altera_avalon_onchip_memory2_171/sim/Nios_onchip_memory2_0_altera_avalon_onchip_memory2_171_kcyxzai.v" -work altera_avalon_onchip_memory2_171    -cdslib ./cds_libs/altera_avalon_onchip_memory2_171.cds.lib   
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Nios/Nios_onchip_memory2_0/sim/Nios_onchip_memory2_0.v"                                                                           -work Nios_onchip_memory2_0                                                                             
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Nios/Nios_reset_in/sim/Nios_reset_in.v"                                                                                           -work Nios_reset_in                                                                                     
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_master_translator_171/sim/altera_merlin_master_translator.sv"                                                             -work altera_merlin_master_translator_171 -cdslib ./cds_libs/altera_merlin_master_translator_171.cds.lib
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                                                               -work altera_merlin_slave_translator_171  -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib 
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_master_agent_171/sim/altera_merlin_master_agent.sv"                                                                       -work altera_merlin_master_agent_171      -cdslib ./cds_libs/altera_merlin_master_agent_171.cds.lib     
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_slave_agent_171/sim/altera_merlin_slave_agent.sv"                                                                         -work altera_merlin_slave_agent_171       -cdslib ./cds_libs/altera_merlin_slave_agent_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_slave_agent_171/sim/altera_merlin_burst_uncompressor.sv"                                                                  -work altera_merlin_slave_agent_171       -cdslib ./cds_libs/altera_merlin_slave_agent_171.cds.lib      
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_avalon_sc_fifo_171/sim/altera_avalon_sc_fifo.v"                                                                                  -work altera_avalon_sc_fifo_171           -cdslib ./cds_libs/altera_avalon_sc_fifo_171.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_router_171/sim/Nios_altera_merlin_router_171_bvdyedq.sv"                                                                  -work altera_merlin_router_171            -cdslib ./cds_libs/altera_merlin_router_171.cds.lib           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_router_171/sim/Nios_altera_merlin_router_171_exfq7ma.sv"                                                                  -work altera_merlin_router_171            -cdslib ./cds_libs/altera_merlin_router_171.cds.lib           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_merlin_traffic_limiter.sv"                                                                 -work altera_merlin_traffic_limiter_171   -cdslib ./cds_libs/altera_merlin_traffic_limiter_171.cds.lib  
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_merlin_reorder_memory.sv"                                                                  -work altera_merlin_traffic_limiter_171   -cdslib ./cds_libs/altera_merlin_traffic_limiter_171.cds.lib  
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_avalon_sc_fifo.v"                                                                          -work altera_merlin_traffic_limiter_171   -cdslib ./cds_libs/altera_merlin_traffic_limiter_171.cds.lib  
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_avalon_st_pipeline_base.v"                                                                 -work altera_merlin_traffic_limiter_171   -cdslib ./cds_libs/altera_merlin_traffic_limiter_171.cds.lib  
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/Nios_altera_merlin_demultiplexer_171_3ssvi5a.sv"                                                    -work altera_merlin_demultiplexer_171     -cdslib ./cds_libs/altera_merlin_demultiplexer_171.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/Nios_altera_merlin_multiplexer_171_rreylyq.sv"                                                        -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                          -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/Nios_altera_merlin_demultiplexer_171_wqjhr4q.sv"                                                    -work altera_merlin_demultiplexer_171     -cdslib ./cds_libs/altera_merlin_demultiplexer_171.cds.lib    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/Nios_altera_merlin_multiplexer_171_v6nl2fq.sv"                                                        -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                          -work altera_merlin_multiplexer_171       -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib      
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../error_adapter_171/sim/Nios_error_adapter_171_nt3czwq.sv"                                                                                -work error_adapter_171                   -cdslib ./cds_libs/error_adapter_171.cds.lib                  
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_avalon_st_adapter_171/sim/Nios_altera_avalon_st_adapter_171_yxzsrmq.v"                                                           -work altera_avalon_st_adapter_171                                                                      
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_mm_interconnect_171/sim/Nios_altera_mm_interconnect_171_gpud3si.v"                                                               -work altera_mm_interconnect_171                                                                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_irq_mapper_171/sim/Nios_altera_irq_mapper_171_p76tqpi.sv"                                                                        -work altera_irq_mapper_171               -cdslib ./cds_libs/altera_irq_mapper_171.cds.lib              
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_reset_controller_171/sim/altera_reset_controller.v"                                                                              -work altera_reset_controller_171         -cdslib ./cds_libs/altera_reset_controller_171.cds.lib        
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_reset_controller_171/sim/altera_reset_synchronizer.v"                                                                            -work altera_reset_controller_171         -cdslib ./cds_libs/altera_reset_controller_171.cds.lib        
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/Nios.v"                                                                                                                                    -work Nios                                                                                              
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
