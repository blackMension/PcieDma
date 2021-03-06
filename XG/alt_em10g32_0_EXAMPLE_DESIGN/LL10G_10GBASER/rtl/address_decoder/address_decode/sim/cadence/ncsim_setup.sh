
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
# ncsim - auto-generated simulation script

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
# ACDS 17.1.2 304 linux 2019.05.31.10:46:30
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="address_decode.address_decode"
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
mkdir -p ./libraries/altera_merlin_slave_translator_171/
mkdir -p ./libraries/address_decode_mm_to_mac_3/
mkdir -p ./libraries/address_decode_mm_to_phy_5/
mkdir -p ./libraries/address_decode_rx_sc_fifo_6/
mkdir -p ./libraries/address_decode_tx_xcvr_clk/
mkdir -p ./libraries/address_decode_tx_sc_fifo_5/
mkdir -p ./libraries/address_decode_mm_to_phy_1/
mkdir -p ./libraries/address_decode_tx_sc_fifo_9/
mkdir -p ./libraries/address_decode_mm_to_phy_9/
mkdir -p ./libraries/address_decode_mm_to_mac_10/
mkdir -p ./libraries/address_decode_rx_sc_fifo_2/
mkdir -p ./libraries/address_decode_eth_gen_mon_3/
mkdir -p ./libraries/address_decode_mm_to_mac_6/
mkdir -p ./libraries/address_decode_rx_sc_fifo_10/
mkdir -p ./libraries/address_decode_eth_gen_mon_7/
mkdir -p ./libraries/address_decode_eth_gen_mon_8/
mkdir -p ./libraries/address_decode_mm_to_mac_4/
mkdir -p ./libraries/address_decode_eth_gen_mon_0/
mkdir -p ./libraries/address_decode_mm_to_mac_0/
mkdir -p ./libraries/address_decode_tx_sc_fifo_1/
mkdir -p ./libraries/address_decode_mm_to_phy_4/
mkdir -p ./libraries/address_decode_tx_sc_fifo_11/
mkdir -p ./libraries/address_decode_mm_to_phy_0/
mkdir -p ./libraries/address_decode_tx_sc_fifo_4/
mkdir -p ./libraries/address_decode_mm_to_mac_9/
mkdir -p ./libraries/address_decode_mm_to_mac_11/
mkdir -p ./libraries/address_decode_tx_sc_fifo_8/
mkdir -p ./libraries/address_decode_mm_to_phy_8/
mkdir -p ./libraries/address_decode_rx_sc_fifo_7/
mkdir -p ./libraries/address_decode_eth_gen_mon_4/
mkdir -p ./libraries/address_decode_mm_to_mac_5/
mkdir -p ./libraries/address_decode_rx_sc_fifo_3/
mkdir -p ./libraries/address_decode_eth_gen_mon_9/
mkdir -p ./libraries/address_decode_tx_sc_fifo_10/
mkdir -p ./libraries/address_decode_eth_gen_mon_1/
mkdir -p ./libraries/address_decode_rx_xcvr_clk/
mkdir -p ./libraries/address_decode_mm_to_mac_1/
mkdir -p ./libraries/address_decode_mm_to_phy_10/
mkdir -p ./libraries/address_decode_mm_to_phy_3/
mkdir -p ./libraries/address_decode_tx_sc_fifo_2/
mkdir -p ./libraries/address_decode_mm_to_mac_8/
mkdir -p ./libraries/address_decode_rx_sc_fifo_0/
mkdir -p ./libraries/address_decode_tx_sc_fifo_3/
mkdir -p ./libraries/address_decode_eth_gen_mon_11/
mkdir -p ./libraries/altera_jtag_dc_streaming_171/
mkdir -p ./libraries/timing_adapter_171/
mkdir -p ./libraries/altera_avalon_sc_fifo_171/
mkdir -p ./libraries/altera_avalon_st_bytes_to_packets_171/
mkdir -p ./libraries/altera_avalon_st_packets_to_bytes_171/
mkdir -p ./libraries/altera_avalon_packets_to_master_171/
mkdir -p ./libraries/channel_adapter_171/
mkdir -p ./libraries/altera_reset_controller_171/
mkdir -p ./libraries/altera_jtag_avalon_master_171/
mkdir -p ./libraries/address_decode_master_0/
mkdir -p ./libraries/address_decode_tx_sc_fifo_7/
mkdir -p ./libraries/address_decode_mm_to_phy_7/
mkdir -p ./libraries/address_decode_rx_sc_fifo_8/
mkdir -p ./libraries/address_decode_eth_gen_mon_5/
mkdir -p ./libraries/address_decode_rx_sc_fifo_4/
mkdir -p ./libraries/address_decode_mm_to_mac_2/
mkdir -p ./libraries/altera_merlin_master_translator_171/
mkdir -p ./libraries/address_decode_merlin_master_translator_0/
mkdir -p ./libraries/address_decode_mm_to_phy_11/
mkdir -p ./libraries/address_decode_mm_to_mac_7/
mkdir -p ./libraries/address_decode_rx_sc_fifo_5/
mkdir -p ./libraries/address_decode_clk_csr/
mkdir -p ./libraries/address_decode_tx_sc_fifo_6/
mkdir -p ./libraries/address_decode_mm_to_phy_2/
mkdir -p ./libraries/address_decode_tx_sc_fifo_0/
mkdir -p ./libraries/address_decode_eth_gen_mon_2/
mkdir -p ./libraries/address_decode_mm_to_phy_6/
mkdir -p ./libraries/address_decode_eth_gen_mon_6/
mkdir -p ./libraries/address_decode_rx_sc_fifo_1/
mkdir -p ./libraries/address_decode_tx_xcvr_half_clk/
mkdir -p ./libraries/address_decode_rx_sc_fifo_11/
mkdir -p ./libraries/address_decode_eth_gen_mon_10/
mkdir -p ./libraries/address_decode_rx_sc_fifo_9/
mkdir -p ./libraries/altera_merlin_master_agent_171/
mkdir -p ./libraries/altera_merlin_slave_agent_171/
mkdir -p ./libraries/altera_merlin_router_171/
mkdir -p ./libraries/altera_merlin_traffic_limiter_171/
mkdir -p ./libraries/altera_merlin_burst_adapter_171/
mkdir -p ./libraries/altera_merlin_demultiplexer_171/
mkdir -p ./libraries/altera_merlin_multiplexer_171/
mkdir -p ./libraries/altera_avalon_st_handshake_clock_crosser_171/
mkdir -p ./libraries/error_adapter_171/
mkdir -p ./libraries/altera_avalon_st_adapter_171/
mkdir -p ./libraries/altera_mm_interconnect_171/
mkdir -p ./libraries/address_decode/
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
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_3/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_3/sim/address_decode_mm_to_mac_3.v"                                                               -work address_decode_mm_to_mac_3                                                                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_5/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_5/sim/address_decode_mm_to_phy_5.v"                                                               -work address_decode_mm_to_phy_5                                                                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_6/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_6/sim/address_decode_rx_sc_fifo_6.v"                                                             -work address_decode_rx_sc_fifo_6                                                                                         
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_xcvr_clk/sim/address_decode_tx_xcvr_clk.v"                                                               -work address_decode_tx_xcvr_clk                                                                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_5/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_5/sim/address_decode_tx_sc_fifo_5.v"                                                             -work address_decode_tx_sc_fifo_5                                                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_1/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_1/sim/address_decode_mm_to_phy_1.v"                                                               -work address_decode_mm_to_phy_1                                                                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_9/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_9/sim/address_decode_tx_sc_fifo_9.v"                                                             -work address_decode_tx_sc_fifo_9                                                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_9/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_9/sim/address_decode_mm_to_phy_9.v"                                                               -work address_decode_mm_to_phy_9                                                                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_10/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_10/sim/address_decode_mm_to_mac_10.v"                                                             -work address_decode_mm_to_mac_10                                                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_2/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_2/sim/address_decode_rx_sc_fifo_2.v"                                                             -work address_decode_rx_sc_fifo_2                                                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_3/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_3/sim/address_decode_eth_gen_mon_3.v"                                                           -work address_decode_eth_gen_mon_3                                                                                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_6/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_6/sim/address_decode_mm_to_mac_6.v"                                                               -work address_decode_mm_to_mac_6                                                                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_10/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_10/sim/address_decode_rx_sc_fifo_10.v"                                                           -work address_decode_rx_sc_fifo_10                                                                                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_7/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_7/sim/address_decode_eth_gen_mon_7.v"                                                           -work address_decode_eth_gen_mon_7                                                                                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_8/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_8/sim/address_decode_eth_gen_mon_8.v"                                                           -work address_decode_eth_gen_mon_8                                                                                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_4/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_4/sim/address_decode_mm_to_mac_4.v"                                                               -work address_decode_mm_to_mac_4                                                                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_0/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_0/sim/address_decode_eth_gen_mon_0.v"                                                           -work address_decode_eth_gen_mon_0                                                                                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_0/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_0/sim/address_decode_mm_to_mac_0.v"                                                               -work address_decode_mm_to_mac_0                                                                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_1/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_1/sim/address_decode_tx_sc_fifo_1.v"                                                             -work address_decode_tx_sc_fifo_1                                                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_4/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_4/sim/address_decode_mm_to_phy_4.v"                                                               -work address_decode_mm_to_phy_4                                                                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_11/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_11/sim/address_decode_tx_sc_fifo_11.v"                                                           -work address_decode_tx_sc_fifo_11                                                                                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_0/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_0/sim/address_decode_mm_to_phy_0.v"                                                               -work address_decode_mm_to_phy_0                                                                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_4/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_4/sim/address_decode_tx_sc_fifo_4.v"                                                             -work address_decode_tx_sc_fifo_4                                                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_9/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_9/sim/address_decode_mm_to_mac_9.v"                                                               -work address_decode_mm_to_mac_9                                                                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_11/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_11/sim/address_decode_mm_to_mac_11.v"                                                             -work address_decode_mm_to_mac_11                                                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_8/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_8/sim/address_decode_tx_sc_fifo_8.v"                                                             -work address_decode_tx_sc_fifo_8                                                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_8/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_8/sim/address_decode_mm_to_phy_8.v"                                                               -work address_decode_mm_to_phy_8                                                                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_7/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_7/sim/address_decode_rx_sc_fifo_7.v"                                                             -work address_decode_rx_sc_fifo_7                                                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_4/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_4/sim/address_decode_eth_gen_mon_4.v"                                                           -work address_decode_eth_gen_mon_4                                                                                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_5/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_5/sim/address_decode_mm_to_mac_5.v"                                                               -work address_decode_mm_to_mac_5                                                                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_3/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_3/sim/address_decode_rx_sc_fifo_3.v"                                                             -work address_decode_rx_sc_fifo_3                                                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_9/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_9/sim/address_decode_eth_gen_mon_9.v"                                                           -work address_decode_eth_gen_mon_9                                                                                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_10/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_10/sim/address_decode_tx_sc_fifo_10.v"                                                           -work address_decode_tx_sc_fifo_10                                                                                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_1/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_1/sim/address_decode_eth_gen_mon_1.v"                                                           -work address_decode_eth_gen_mon_1                                                                                        
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_xcvr_clk/sim/address_decode_rx_xcvr_clk.v"                                                               -work address_decode_rx_xcvr_clk                                                                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_1/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_1/sim/address_decode_mm_to_mac_1.v"                                                               -work address_decode_mm_to_mac_1                                                                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_10/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_10/sim/address_decode_mm_to_phy_10.v"                                                             -work address_decode_mm_to_phy_10                                                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_3/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_3/sim/address_decode_mm_to_phy_3.v"                                                               -work address_decode_mm_to_phy_3                                                                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_2/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_2/sim/address_decode_tx_sc_fifo_2.v"                                                             -work address_decode_tx_sc_fifo_2                                                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_8/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_8/sim/address_decode_mm_to_mac_8.v"                                                               -work address_decode_mm_to_mac_8                                                                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_0/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_0/sim/address_decode_rx_sc_fifo_0.v"                                                             -work address_decode_rx_sc_fifo_0                                                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_3/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_3/sim/address_decode_tx_sc_fifo_3.v"                                                             -work address_decode_tx_sc_fifo_3                                                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_11/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                    -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_11/sim/address_decode_eth_gen_mon_11.v"                                                         -work address_decode_eth_gen_mon_11                                                                                       
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_avalon_st_jtag_interface.v"                                -work altera_jtag_dc_streaming_171                 -cdslib ./cds_libs/altera_jtag_dc_streaming_171.cds.lib                
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_jtag_dc_streaming.v"                                       -work altera_jtag_dc_streaming_171                 -cdslib ./cds_libs/altera_jtag_dc_streaming_171.cds.lib                
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_jtag_sld_node.v"                                           -work altera_jtag_dc_streaming_171                 -cdslib ./cds_libs/altera_jtag_dc_streaming_171.cds.lib                
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_jtag_streaming.v"                                          -work altera_jtag_dc_streaming_171                 -cdslib ./cds_libs/altera_jtag_dc_streaming_171.cds.lib                
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_avalon_st_clock_crosser.v"                                 -work altera_jtag_dc_streaming_171                 -cdslib ./cds_libs/altera_jtag_dc_streaming_171.cds.lib                
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_std_synchronizer_nocut.v"                                  -work altera_jtag_dc_streaming_171                 -cdslib ./cds_libs/altera_jtag_dc_streaming_171.cds.lib                
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_avalon_st_pipeline_base.v"                                 -work altera_jtag_dc_streaming_171                 -cdslib ./cds_libs/altera_jtag_dc_streaming_171.cds.lib                
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_avalon_st_idle_remover.v"                                  -work altera_jtag_dc_streaming_171                 -cdslib ./cds_libs/altera_jtag_dc_streaming_171.cds.lib                
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_avalon_st_idle_inserter.v"                                 -work altera_jtag_dc_streaming_171                 -cdslib ./cds_libs/altera_jtag_dc_streaming_171.cds.lib                
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_avalon_st_pipeline_stage.sv"                               -work altera_jtag_dc_streaming_171                 -cdslib ./cds_libs/altera_jtag_dc_streaming_171.cds.lib                
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/timing_adapter_171/sim/address_decode_master_0_timing_adapter_171_xf5weri.sv"                      -work timing_adapter_171                           -cdslib ./cds_libs/timing_adapter_171.cds.lib                          
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_avalon_sc_fifo_171/sim/altera_avalon_sc_fifo.v"                                             -work altera_avalon_sc_fifo_171                    -cdslib ./cds_libs/altera_avalon_sc_fifo_171.cds.lib                   
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_avalon_st_bytes_to_packets_171/sim/altera_avalon_st_bytes_to_packets.v"                     -work altera_avalon_st_bytes_to_packets_171        -cdslib ./cds_libs/altera_avalon_st_bytes_to_packets_171.cds.lib       
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_avalon_st_packets_to_bytes_171/sim/altera_avalon_st_packets_to_bytes.v"                     -work altera_avalon_st_packets_to_bytes_171        -cdslib ./cds_libs/altera_avalon_st_packets_to_bytes_171.cds.lib       
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_avalon_packets_to_master_171/sim/altera_avalon_packets_to_master.v"                         -work altera_avalon_packets_to_master_171          -cdslib ./cds_libs/altera_avalon_packets_to_master_171.cds.lib         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/channel_adapter_171/sim/address_decode_master_0_channel_adapter_171_2swajja.sv"                    -work channel_adapter_171                          -cdslib ./cds_libs/channel_adapter_171.cds.lib                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/channel_adapter_171/sim/address_decode_master_0_channel_adapter_171_vh2yu6y.sv"                    -work channel_adapter_171                          -cdslib ./cds_libs/channel_adapter_171.cds.lib                         
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_reset_controller_171/sim/altera_reset_controller.v"                                         -work altera_reset_controller_171                  -cdslib ./cds_libs/altera_reset_controller_171.cds.lib                 
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_reset_controller_171/sim/altera_reset_synchronizer.v"                                       -work altera_reset_controller_171                  -cdslib ./cds_libs/altera_reset_controller_171.cds.lib                 
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_avalon_master_171/sim/address_decode_master_0_altera_jtag_avalon_master_171_wqhllki.v" -work altera_jtag_avalon_master_171                                                                                       
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/sim/address_decode_master_0.v"                                                                     -work address_decode_master_0                                                                                             
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_7/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_7/sim/address_decode_tx_sc_fifo_7.v"                                                             -work address_decode_tx_sc_fifo_7                                                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_7/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_7/sim/address_decode_mm_to_phy_7.v"                                                               -work address_decode_mm_to_phy_7                                                                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_8/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_8/sim/address_decode_rx_sc_fifo_8.v"                                                             -work address_decode_rx_sc_fifo_8                                                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_5/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_5/sim/address_decode_eth_gen_mon_5.v"                                                           -work address_decode_eth_gen_mon_5                                                                                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_4/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_4/sim/address_decode_rx_sc_fifo_4.v"                                                             -work address_decode_rx_sc_fifo_4                                                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_2/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_2/sim/address_decode_mm_to_mac_2.v"                                                               -work address_decode_mm_to_mac_2                                                                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_merlin_master_translator_0/altera_merlin_master_translator_171/sim/altera_merlin_master_translator.sv"      -work altera_merlin_master_translator_171          -cdslib ./cds_libs/altera_merlin_master_translator_171.cds.lib         
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_merlin_master_translator_0/sim/address_decode_merlin_master_translator_0.v"                                 -work address_decode_merlin_master_translator_0                                                                           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_11/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_11/sim/address_decode_mm_to_phy_11.v"                                                             -work address_decode_mm_to_phy_11                                                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_7/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_7/sim/address_decode_mm_to_mac_7.v"                                                               -work address_decode_mm_to_mac_7                                                                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_5/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_5/sim/address_decode_rx_sc_fifo_5.v"                                                             -work address_decode_rx_sc_fifo_5                                                                                         
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_clk_csr/sim/address_decode_clk_csr.v"                                                                       -work address_decode_clk_csr                                                                                              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_6/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_6/sim/address_decode_tx_sc_fifo_6.v"                                                             -work address_decode_tx_sc_fifo_6                                                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_2/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_2/sim/address_decode_mm_to_phy_2.v"                                                               -work address_decode_mm_to_phy_2                                                                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_0/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_0/sim/address_decode_tx_sc_fifo_0.v"                                                             -work address_decode_tx_sc_fifo_0                                                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_2/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_2/sim/address_decode_eth_gen_mon_2.v"                                                           -work address_decode_eth_gen_mon_2                                                                                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_6/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                       -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_6/sim/address_decode_mm_to_phy_6.v"                                                               -work address_decode_mm_to_phy_6                                                                                          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_6/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_6/sim/address_decode_eth_gen_mon_6.v"                                                           -work address_decode_eth_gen_mon_6                                                                                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_1/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_1/sim/address_decode_rx_sc_fifo_1.v"                                                             -work address_decode_rx_sc_fifo_1                                                                                         
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_xcvr_half_clk/sim/address_decode_tx_xcvr_half_clk.v"                                                     -work address_decode_tx_xcvr_half_clk                                                                                     
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_11/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                     -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_11/sim/address_decode_rx_sc_fifo_11.v"                                                           -work address_decode_rx_sc_fifo_11                                                                                        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_10/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                    -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_10/sim/address_decode_eth_gen_mon_10.v"                                                         -work address_decode_eth_gen_mon_10                                                                                       
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_9/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                      -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_9/sim/address_decode_rx_sc_fifo_9.v"                                                             -work address_decode_rx_sc_fifo_9                                                                                         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_master_translator_171/sim/altera_merlin_master_translator.sv"                                                                     -work altera_merlin_master_translator_171          -cdslib ./cds_libs/altera_merlin_master_translator_171.cds.lib         
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv"                                                                       -work altera_merlin_slave_translator_171           -cdslib ./cds_libs/altera_merlin_slave_translator_171.cds.lib          
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_master_agent_171/sim/altera_merlin_master_agent.sv"                                                                               -work altera_merlin_master_agent_171               -cdslib ./cds_libs/altera_merlin_master_agent_171.cds.lib              
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_slave_agent_171/sim/altera_merlin_slave_agent.sv"                                                                                 -work altera_merlin_slave_agent_171                -cdslib ./cds_libs/altera_merlin_slave_agent_171.cds.lib               
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_slave_agent_171/sim/altera_merlin_burst_uncompressor.sv"                                                                          -work altera_merlin_slave_agent_171                -cdslib ./cds_libs/altera_merlin_slave_agent_171.cds.lib               
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_avalon_sc_fifo_171/sim/altera_avalon_sc_fifo.v"                                                                                          -work altera_avalon_sc_fifo_171                    -cdslib ./cds_libs/altera_avalon_sc_fifo_171.cds.lib                   
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_router_171/sim/address_decode_altera_merlin_router_171_w3toeyq.sv"                                                                -work altera_merlin_router_171                     -cdslib ./cds_libs/altera_merlin_router_171.cds.lib                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_router_171/sim/address_decode_altera_merlin_router_171_bqlzivi.sv"                                                                -work altera_merlin_router_171                     -cdslib ./cds_libs/altera_merlin_router_171.cds.lib                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_merlin_traffic_limiter.sv"                                                                         -work altera_merlin_traffic_limiter_171            -cdslib ./cds_libs/altera_merlin_traffic_limiter_171.cds.lib           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_merlin_reorder_memory.sv"                                                                          -work altera_merlin_traffic_limiter_171            -cdslib ./cds_libs/altera_merlin_traffic_limiter_171.cds.lib           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_avalon_sc_fifo.v"                                                                                  -work altera_merlin_traffic_limiter_171            -cdslib ./cds_libs/altera_merlin_traffic_limiter_171.cds.lib           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_avalon_st_pipeline_base.v"                                                                         -work altera_merlin_traffic_limiter_171            -cdslib ./cds_libs/altera_merlin_traffic_limiter_171.cds.lib           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter.sv"                                                                             -work altera_merlin_burst_adapter_171              -cdslib ./cds_libs/altera_merlin_burst_adapter_171.cds.lib             
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter_uncmpr.sv"                                                                      -work altera_merlin_burst_adapter_171              -cdslib ./cds_libs/altera_merlin_burst_adapter_171.cds.lib             
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter_13_1.sv"                                                                        -work altera_merlin_burst_adapter_171              -cdslib ./cds_libs/altera_merlin_burst_adapter_171.cds.lib             
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter_new.sv"                                                                         -work altera_merlin_burst_adapter_171              -cdslib ./cds_libs/altera_merlin_burst_adapter_171.cds.lib             
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_incr_burst_converter.sv"                                                                             -work altera_merlin_burst_adapter_171              -cdslib ./cds_libs/altera_merlin_burst_adapter_171.cds.lib             
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_wrap_burst_converter.sv"                                                                             -work altera_merlin_burst_adapter_171              -cdslib ./cds_libs/altera_merlin_burst_adapter_171.cds.lib             
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_default_burst_converter.sv"                                                                          -work altera_merlin_burst_adapter_171              -cdslib ./cds_libs/altera_merlin_burst_adapter_171.cds.lib             
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_address_alignment.sv"                                                                         -work altera_merlin_burst_adapter_171              -cdslib ./cds_libs/altera_merlin_burst_adapter_171.cds.lib             
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_avalon_st_pipeline_stage.sv"                                                                         -work altera_merlin_burst_adapter_171              -cdslib ./cds_libs/altera_merlin_burst_adapter_171.cds.lib             
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_avalon_st_pipeline_base.v"                                                                           -work altera_merlin_burst_adapter_171              -cdslib ./cds_libs/altera_merlin_burst_adapter_171.cds.lib             
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/address_decode_altera_merlin_demultiplexer_171_onh36ji.sv"                                                  -work altera_merlin_demultiplexer_171              -cdslib ./cds_libs/altera_merlin_demultiplexer_171.cds.lib             
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/address_decode_altera_merlin_multiplexer_171_fakbnaa.sv"                                                      -work altera_merlin_multiplexer_171                -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib               
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                  -work altera_merlin_multiplexer_171                -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib               
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/address_decode_altera_merlin_demultiplexer_171_7pyrkka.sv"                                                  -work altera_merlin_demultiplexer_171              -cdslib ./cds_libs/altera_merlin_demultiplexer_171.cds.lib             
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/address_decode_altera_merlin_multiplexer_171_hwli37a.sv"                                                      -work altera_merlin_multiplexer_171                -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib               
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv"                                                                                  -work altera_merlin_multiplexer_171                -cdslib ./cds_libs/altera_merlin_multiplexer_171.cds.lib               
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_avalon_st_handshake_clock_crosser_171/sim/altera_avalon_st_handshake_clock_crosser.v"                                                    -work altera_avalon_st_handshake_clock_crosser_171 -cdslib ./cds_libs/altera_avalon_st_handshake_clock_crosser_171.cds.lib
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_avalon_st_handshake_clock_crosser_171/sim/altera_avalon_st_clock_crosser.v"                                                              -work altera_avalon_st_handshake_clock_crosser_171 -cdslib ./cds_libs/altera_avalon_st_handshake_clock_crosser_171.cds.lib
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_avalon_st_handshake_clock_crosser_171/sim/altera_avalon_st_pipeline_base.v"                                                              -work altera_avalon_st_handshake_clock_crosser_171 -cdslib ./cds_libs/altera_avalon_st_handshake_clock_crosser_171.cds.lib
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../altera_avalon_st_handshake_clock_crosser_171/sim/altera_std_synchronizer_nocut.v"                                                               -work altera_avalon_st_handshake_clock_crosser_171 -cdslib ./cds_libs/altera_avalon_st_handshake_clock_crosser_171.cds.lib
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/../error_adapter_171/sim/address_decode_error_adapter_171_nt3czwq.sv"                                                                              -work error_adapter_171                            -cdslib ./cds_libs/error_adapter_171.cds.lib                           
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_avalon_st_adapter_171/sim/address_decode_altera_avalon_st_adapter_171_yxzsrmq.v"                                                         -work altera_avalon_st_adapter_171                                                                                        
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../altera_mm_interconnect_171/sim/address_decode_altera_mm_interconnect_171_efl2mvi.v"                                                             -work altera_mm_interconnect_171                                                                                          
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_reset_controller_171/sim/altera_reset_controller.v"                                                                                      -work altera_reset_controller_171                  -cdslib ./cds_libs/altera_reset_controller_171.cds.lib                 
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../altera_reset_controller_171/sim/altera_reset_synchronizer.v"                                                                                    -work altera_reset_controller_171                  -cdslib ./cds_libs/altera_reset_controller_171.cds.lib                 
  ncvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/address_decode.v"                                                                                                                                  -work address_decode                                                                                                      
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
