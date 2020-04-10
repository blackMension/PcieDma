
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

# ACDS 17.1.2 304 linux 2019.05.31.10:52:24

# ----------------------------------------
# vcs - auto-generated simulation script

# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     altera_eth_10gbaser_phy.altera_eth_10gbaser_phy
#     address_decode_tx_sc_fifo_1.address_decode_tx_sc_fifo_1
#     address_decode_tx_xcvr_half_clk.address_decode_tx_xcvr_half_clk
#     address_decode_mm_to_phy_8.address_decode_mm_to_phy_8
#     address_decode_eth_gen_mon_7.address_decode_eth_gen_mon_7
#     address_decode_rx_sc_fifo_9.address_decode_rx_sc_fifo_9
#     address_decode_tx_sc_fifo_3.address_decode_tx_sc_fifo_3
#     address_decode_eth_gen_mon_5.address_decode_eth_gen_mon_5
#     address_decode_rx_sc_fifo_7.address_decode_rx_sc_fifo_7
#     address_decode_rx_sc_fifo_5.address_decode_rx_sc_fifo_5
#     address_decode_mm_to_phy_5.address_decode_mm_to_phy_5
#     address_decode_mm_to_phy_1.address_decode_mm_to_phy_1
#     address_decode_mm_to_mac_0.address_decode_mm_to_mac_0
#     address_decode_eth_gen_mon_0.address_decode_eth_gen_mon_0
#     address_decode_tx_sc_fifo_11.address_decode_tx_sc_fifo_11
#     address_decode_tx_sc_fifo_0.address_decode_tx_sc_fifo_0
#     address_decode_rx_sc_fifo_3.address_decode_rx_sc_fifo_3
#     address_decode_eth_gen_mon_3.address_decode_eth_gen_mon_3
#     address_decode_mm_to_mac_10.address_decode_mm_to_mac_10
#     address_decode_master_0.address_decode_master_0
#     address_decode_rx_sc_fifo_4.address_decode_rx_sc_fifo_4
#     address_decode_clk_csr.address_decode_clk_csr
#     address_decode_mm_to_mac_4.address_decode_mm_to_mac_4
#     address_decode_rx_sc_fifo_6.address_decode_rx_sc_fifo_6
#     address_decode_mm_to_mac_2.address_decode_mm_to_mac_2
#     address_decode_mm_to_phy_9.address_decode_mm_to_phy_9
#     address_decode_mm_to_mac_11.address_decode_mm_to_mac_11
#     address_decode_tx_sc_fifo_10.address_decode_tx_sc_fifo_10
#     address_decode_tx_sc_fifo_4.address_decode_tx_sc_fifo_4
#     address_decode_mm_to_mac_5.address_decode_mm_to_mac_5
#     address_decode_mm_to_phy_3.address_decode_mm_to_phy_3
#     address_decode_rx_xcvr_clk.address_decode_rx_xcvr_clk
#     address_decode_mm_to_phy_2.address_decode_mm_to_phy_2
#     address_decode_rx_sc_fifo_8.address_decode_rx_sc_fifo_8
#     address_decode_mm_to_mac_8.address_decode_mm_to_mac_8
#     address_decode_eth_gen_mon_2.address_decode_eth_gen_mon_2
#     address_decode_mm_to_phy_10.address_decode_mm_to_phy_10
#     address_decode_mm_to_mac_7.address_decode_mm_to_mac_7
#     address_decode_mm_to_mac_1.address_decode_mm_to_mac_1
#     address_decode_eth_gen_mon_6.address_decode_eth_gen_mon_6
#     address_decode_mm_to_phy_4.address_decode_mm_to_phy_4
#     address_decode_tx_sc_fifo_8.address_decode_tx_sc_fifo_8
#     address_decode_mm_to_mac_9.address_decode_mm_to_mac_9
#     address_decode_tx_sc_fifo_5.address_decode_tx_sc_fifo_5
#     address_decode_eth_gen_mon_8.address_decode_eth_gen_mon_8
#     address_decode_rx_sc_fifo_2.address_decode_rx_sc_fifo_2
#     address_decode_rx_sc_fifo_0.address_decode_rx_sc_fifo_0
#     address_decode_eth_gen_mon_11.address_decode_eth_gen_mon_11
#     address_decode_mm_to_mac_6.address_decode_mm_to_mac_6
#     address_decode_mm_to_phy_7.address_decode_mm_to_phy_7
#     address_decode_tx_sc_fifo_9.address_decode_tx_sc_fifo_9
#     address_decode_eth_gen_mon_1.address_decode_eth_gen_mon_1
#     address_decode_rx_sc_fifo_10.address_decode_rx_sc_fifo_10
#     address_decode_tx_sc_fifo_6.address_decode_tx_sc_fifo_6
#     address_decode_tx_xcvr_clk.address_decode_tx_xcvr_clk
#     address_decode_mm_to_phy_0.address_decode_mm_to_phy_0
#     address_decode_mm_to_phy_11.address_decode_mm_to_phy_11
#     address_decode_mm_to_phy_6.address_decode_mm_to_phy_6
#     address_decode_eth_gen_mon_4.address_decode_eth_gen_mon_4
#     address_decode_mm_to_mac_3.address_decode_mm_to_mac_3
#     address_decode_eth_gen_mon_9.address_decode_eth_gen_mon_9
#     address_decode_eth_gen_mon_10.address_decode_eth_gen_mon_10
#     address_decode_rx_sc_fifo_11.address_decode_rx_sc_fifo_11
#     address_decode_merlin_master_translator_0.address_decode_merlin_master_translator_0
#     address_decode_tx_sc_fifo_2.address_decode_tx_sc_fifo_2
#     address_decode_tx_sc_fifo_7.address_decode_tx_sc_fifo_7
#     address_decode_rx_sc_fifo_1.address_decode_rx_sc_fifo_1
#     address_decode.address_decode
#     dc_fifo_0.dc_fifo_0
#     dc_fifo.dc_fifo
#     sc_fifo_rx_sc_fifo.sc_fifo_rx_sc_fifo
#     sc_fifo_tx_sc_fifo.sc_fifo_tx_sc_fifo
#     sc_fifo.sc_fifo
#     altera_xcvr_atx_pll_ip.altera_xcvr_atx_pll_ip
#     pll.pll
#     reset_control.reset_control
#     altera_eth_10g_mac.altera_eth_10g_mac
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
# ACDS 17.1.2 304 linux 2019.05.31.10:52:24
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="altera_eth_10g_mac"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="/home/tools/intelFPGA_pro/17.1/quartus/"
SKIP_FILE_COPY=0
SKIP_SIM=0
#USER_DEFINED_ELAB_OPTIONS="../../../lib/common/randomLib.a  -l compile.log"
#USER_DEFINED_SIM_OPTIONS="+vcs+finish+1000"
USER_DEFINED_SIM_OPTIONS="+vcs+finish+5000000000000 -l simulation.log"
# USER_DEFINED_ELAB_OPTIONS="$QUARTUS_INSTALL_DIR/../ip/altera/sopc_builder_ip/verification/lib/verbosity_pkg.sv\ \\
# $QUARTUS_INSTALL_DIR/../ip/altera/sopc_builder_ip/verification/lib/avalon_mm_pkg.sv\ \\
# $QUARTUS_INSTALL_DIR/../ip/altera/sopc_builder_ip/verification/lib/avalon_utilities_pkg.sv\ \\
# $QUARTUS_INSTALL_DIR/../ip/altera/sopc_builder_ip/verification/altera_avalon_mm_master_bfm/altera_avalon_mm_master_bfm.sv\ \\
# $QUARTUS_INSTALL_DIR/../ip/altera/sopc_builder_ip/verification/altera_avalon_st_sink_bfm/altera_avalon_st_sink_bfm.sv\ \\
# $QUARTUS_INSTALL_DIR/../ip/altera/sopc_builder_ip/verification/altera_avalon_st_source_bfm/altera_avalon_st_source_bfm.sv\ \\"
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
ELAB_OPTIONS="-full64 -lca  -LDFLAGS -Wl,--no-as-needed +notimingcheck -timescale=1ps/1ps -sverilog  -ntb_opts +vcs+lic+wait -notice +define+DEBUSSY -P $VERDI_HOME/share/PLI/VCS/LINUX64/novas.tab $VERDI_HOME/share/PLI/VCS/LINUX64/pli.a  -PP -Mupdate +v2k +notimingcheck -l compile.log +libext+.v+.vh+.vcs+.h+.sv+.c+.hgv +vcs+lic+wait -notice +lint=TFIPC-L -v2k_generate"
SIM_OPTIONS=""
INCLUDE_PATH="+incdir+$QSYS_SIMDIR/../models/"
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# copy RAM/ROM files to simulation directory

vcs  +verilog2001ext+.v $ELAB_OPTIONS $USER_DEFINED_SIM_OPTIONS $INCLUDE_PATH -f filelist.f  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS +dump -l log
fi
