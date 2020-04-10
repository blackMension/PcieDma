
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
# vcs - auto-generated simulation script

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
# testbench files, follow the guidelines below.
# 
# 1) Copy the shell script text from the TOP-LEVEL TEMPLATE section
# below into a new file, e.g. named "vcs_sim.sh".
# 
# 2) Copy the text from the DESIGN FILE LIST & OPTIONS TEMPLATE section into
# a separate file, e.g. named "filelist.f".
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # TOP_LEVEL_NAME is used in the Quartus-generated IP simulation script to
# # set the top-level simulation or testbench module/entity name.
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# # Source the Quartus-generated IP simulation script and do the following:
# # - Compile the Quartus EDA simulation library and IP simulation files.
# # - Specify TOP_LEVEL_NAME and QSYS_SIMDIR.
# # - Compile the design and top-level simulation module/entity using
# #   information specified in "filelist.f".
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# # - Run the simulation.
# #
# source <script generation output directory>/synopsys/vcs/vcs_setup.sh \
# TOP_LEVEL_NAME=<simulation top> \
# QSYS_SIMDIR=<script generation output directory> \
# USER_DEFINED_ELAB_OPTIONS="\"-f filelist.f\"" \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# ----------------------------------------
# # DESIGN FILE LIST & OPTIONS TEMPLATE - BEGIN
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the Quartus-generated IP simulation script)
# #
# +systemverilogext+.sv
# <design and testbench files, compile-time options, elaboration options>
# #
# # DESIGN FILE LIST & OPTIONS TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# ACDS 17.1.2 304 linux 2019.05.31.10:46:30
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="address_decode"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="/home/tools/intelFPGA_pro/17.1/quartus/"
SKIP_FILE_COPY=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"
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
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# copy RAM/ROM files to simulation directory

vcs -lca -timescale=1ps/1ps -sverilog +verilog2001ext+.v $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v \
  $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/twentynm_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/twentynm_hssi_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hssi_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/twentynm_hip_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hip_atoms.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_3/altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_3/sim/address_decode_mm_to_mac_3.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_5/sim/address_decode_mm_to_phy_5.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_6/sim/address_decode_rx_sc_fifo_6.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_xcvr_clk/sim/address_decode_tx_xcvr_clk.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_5/sim/address_decode_tx_sc_fifo_5.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_1/sim/address_decode_mm_to_phy_1.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_9/sim/address_decode_tx_sc_fifo_9.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_9/sim/address_decode_mm_to_phy_9.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_10/sim/address_decode_mm_to_mac_10.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_2/sim/address_decode_rx_sc_fifo_2.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_3/sim/address_decode_eth_gen_mon_3.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_6/sim/address_decode_mm_to_mac_6.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_10/sim/address_decode_rx_sc_fifo_10.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_7/sim/address_decode_eth_gen_mon_7.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_8/sim/address_decode_eth_gen_mon_8.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_4/sim/address_decode_mm_to_mac_4.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_0/sim/address_decode_eth_gen_mon_0.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_0/sim/address_decode_mm_to_mac_0.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_1/sim/address_decode_tx_sc_fifo_1.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_4/sim/address_decode_mm_to_phy_4.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_11/sim/address_decode_tx_sc_fifo_11.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_0/sim/address_decode_mm_to_phy_0.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_4/sim/address_decode_tx_sc_fifo_4.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_9/sim/address_decode_mm_to_mac_9.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_11/sim/address_decode_mm_to_mac_11.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_8/sim/address_decode_tx_sc_fifo_8.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_8/sim/address_decode_mm_to_phy_8.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_7/sim/address_decode_rx_sc_fifo_7.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_4/sim/address_decode_eth_gen_mon_4.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_5/sim/address_decode_mm_to_mac_5.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_3/sim/address_decode_rx_sc_fifo_3.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_9/sim/address_decode_eth_gen_mon_9.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_10/sim/address_decode_tx_sc_fifo_10.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_1/sim/address_decode_eth_gen_mon_1.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_xcvr_clk/sim/address_decode_rx_xcvr_clk.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_1/sim/address_decode_mm_to_mac_1.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_10/sim/address_decode_mm_to_phy_10.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_3/sim/address_decode_mm_to_phy_3.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_2/sim/address_decode_tx_sc_fifo_2.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_8/sim/address_decode_mm_to_mac_8.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_0/sim/address_decode_rx_sc_fifo_0.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_3/sim/address_decode_tx_sc_fifo_3.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_11/sim/address_decode_eth_gen_mon_11.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_avalon_st_jtag_interface.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_jtag_dc_streaming.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_jtag_sld_node.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_jtag_streaming.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_avalon_st_clock_crosser.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_std_synchronizer_nocut.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_avalon_st_pipeline_base.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_avalon_st_idle_remover.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_avalon_st_idle_inserter.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_dc_streaming_171/sim/altera_avalon_st_pipeline_stage.sv \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/timing_adapter_171/sim/address_decode_master_0_timing_adapter_171_xf5weri.sv \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_avalon_sc_fifo_171/sim/altera_avalon_sc_fifo.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_avalon_st_bytes_to_packets_171/sim/altera_avalon_st_bytes_to_packets.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_avalon_st_packets_to_bytes_171/sim/altera_avalon_st_packets_to_bytes.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_avalon_packets_to_master_171/sim/altera_avalon_packets_to_master.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/channel_adapter_171/sim/address_decode_master_0_channel_adapter_171_2swajja.sv \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/channel_adapter_171/sim/address_decode_master_0_channel_adapter_171_vh2yu6y.sv \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_reset_controller_171/sim/altera_reset_controller.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_reset_controller_171/sim/altera_reset_synchronizer.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/altera_jtag_avalon_master_171/sim/address_decode_master_0_altera_jtag_avalon_master_171_wqhllki.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_master_0/sim/address_decode_master_0.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_7/sim/address_decode_tx_sc_fifo_7.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_7/sim/address_decode_mm_to_phy_7.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_8/sim/address_decode_rx_sc_fifo_8.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_5/sim/address_decode_eth_gen_mon_5.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_4/sim/address_decode_rx_sc_fifo_4.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_2/sim/address_decode_mm_to_mac_2.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_merlin_master_translator_0/altera_merlin_master_translator_171/sim/altera_merlin_master_translator.sv \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_merlin_master_translator_0/sim/address_decode_merlin_master_translator_0.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_11/sim/address_decode_mm_to_phy_11.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_mac_7/sim/address_decode_mm_to_mac_7.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_5/sim/address_decode_rx_sc_fifo_5.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_clk_csr/sim/address_decode_clk_csr.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_6/sim/address_decode_tx_sc_fifo_6.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_2/sim/address_decode_mm_to_phy_2.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_sc_fifo_0/sim/address_decode_tx_sc_fifo_0.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_2/sim/address_decode_eth_gen_mon_2.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_mm_to_phy_6/sim/address_decode_mm_to_phy_6.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_6/sim/address_decode_eth_gen_mon_6.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_1/sim/address_decode_rx_sc_fifo_1.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_tx_xcvr_half_clk/sim/address_decode_tx_xcvr_half_clk.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_11/sim/address_decode_rx_sc_fifo_11.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_eth_gen_mon_10/sim/address_decode_eth_gen_mon_10.v \
  $QSYS_SIMDIR/../../ip/address_decode/address_decode_rx_sc_fifo_9/sim/address_decode_rx_sc_fifo_9.v \
  $QSYS_SIMDIR/../altera_merlin_master_agent_171/sim/altera_merlin_master_agent.sv \
  $QSYS_SIMDIR/../altera_merlin_slave_agent_171/sim/altera_merlin_slave_agent.sv \
  $QSYS_SIMDIR/../altera_merlin_slave_agent_171/sim/altera_merlin_burst_uncompressor.sv \
  $QSYS_SIMDIR/../altera_merlin_router_171/sim/address_decode_altera_merlin_router_171_w3toeyq.sv \
  $QSYS_SIMDIR/../altera_merlin_router_171/sim/address_decode_altera_merlin_router_171_bqlzivi.sv \
  $QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_merlin_traffic_limiter.sv \
  $QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_merlin_reorder_memory.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter_uncmpr.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter_13_1.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter_new.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_incr_burst_converter.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_wrap_burst_converter.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_default_burst_converter.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_address_alignment.sv \
  $QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/address_decode_altera_merlin_demultiplexer_171_onh36ji.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/address_decode_altera_merlin_multiplexer_171_fakbnaa.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv \
  $QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/address_decode_altera_merlin_demultiplexer_171_7pyrkka.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/address_decode_altera_merlin_multiplexer_171_hwli37a.sv \
  $QSYS_SIMDIR/../altera_avalon_st_handshake_clock_crosser_171/sim/altera_avalon_st_handshake_clock_crosser.v \
  $QSYS_SIMDIR/../error_adapter_171/sim/address_decode_error_adapter_171_nt3czwq.sv \
  $QSYS_SIMDIR/../altera_avalon_st_adapter_171/sim/address_decode_altera_avalon_st_adapter_171_yxzsrmq.v \
  $QSYS_SIMDIR/../altera_mm_interconnect_171/sim/address_decode_altera_mm_interconnect_171_efl2mvi.v \
  $QSYS_SIMDIR/address_decode.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
