
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
# vcs - auto-generated simulation script

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
# ACDS 17.1.2 304 linux 2019.04.20.11:04:21
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="ep_g3x8_avmm256"
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
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_clk_0/sim/ep_g3x8_avmm256_clk_0.v \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_dma_control_0/dma_control_171/sim/dma_controller.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_dma_control_0/dma_control_171/sim/altpcie_dynamic_control.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_dma_control_0/sim/ep_g3x8_avmm256_dma_control_0.v \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_onchip_memory2_0/altera_avalon_onchip_memory2_171/sim/ep_g3x8_avmm256_onchip_memory2_0_altera_avalon_onchip_memory2_171_2hwxsvq.v \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_onchip_memory2_0/sim/ep_g3x8_avmm256_onchip_memory2_0.v \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/altera_xcvr_native_a10_functions_h.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_resync.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_arbiter.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/twentynm_pcs.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/twentynm_pma.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/twentynm_xcvr_avmm.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/twentynm_xcvr_native.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/a10_avmm_h.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_pipe_retry.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_avmm_csr.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_prbs_accum.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_odi_accel.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_rcfg_arb.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/altera_xcvr_native_pcie_dfe_params_h.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/pcie_mgmt_commands_h.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/pcie_mgmt_functions_h.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/pcie_mgmt_program.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/pcie_mgmt_cpu.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/pcie_mgmt_master.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/altera_xcvr_native_pcie_dfe_ip.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/ep_g3x8_avmm256_DUT_altera_xcvr_native_a10_1711_qsxpgua.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_rcfg_opt_logic_qsxpgua.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/phy_g3x8.v \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/altera_xcvr_fpll_a10.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/alt_xcvr_native_avmm_nf.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/alt_xcvr_pll_embedded_debug.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_fpll_a10_171/sim/alt_xcvr_pll_avmm_csr.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/fpll_g3.v \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/alt_xcvr_atx_pll_rcfg_arb.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/a10_xcvr_atx_pll.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/ep_g3x8_avmm256_DUT_altera_xcvr_atx_pll_a10_171_pufnv4i.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_xcvr_atx_pll_a10_171/sim/alt_xcvr_atx_pll_rcfg_opt_logic_pufnv4i.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/lcpll_g3xn.v \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/ep_g3x8_avmm256_DUT_altera_pcie_a10_hip_171_ik6fnxi.v \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_a10_hip_pipen1b.v \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_sc_bitsync.v \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_reset_delay_sync.v \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_rs_a10_hip.v \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_a10_hip_pllnphy.v \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/skp_det_g3.v \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altera_xcvr_functions.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_monitor_a10_dlhip_sim.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_tlp_inspector_a10.v \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_tlp_inspector_cseb_a10.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_tlp_inspector_monitor_a10.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_tlp_inspector_trigger_a10.v \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_tlp_inspector_pcsig_drive_a10.v \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_a10_gbfifo.v \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_scfifo_a10.v \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_a10_scfifo_ext.v \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcierd_hip_rs.v \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_256_app.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_hip_interface.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_rxm.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_txs.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_rd.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_wr_2.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_wr_readmem_2.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_wr_tlpgen_2.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_wr_wdalign_2.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav128_dma_wr.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav128_dma_wr_readmem.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav128_dma_wr_tlpgen.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav128_dma_wr_wdalign.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_arbiter.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_cra.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcie_fifo.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_hprxm_rdwr.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_hprxm_cpl.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_hprxm_txctrl.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/altera_pcie_a10_hip_171/sim/altpcieav_dma_hprxm.sv \
  $QSYS_SIMDIR/../../ip/ep_g3x8_avmm256/ep_g3x8_avmm256_DUT/sim/ep_g3x8_avmm256_DUT.v \
  $QSYS_SIMDIR/../altera_merlin_master_translator_171/sim/altera_merlin_master_translator.sv \
  $QSYS_SIMDIR/../altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv \
  $QSYS_SIMDIR/../altera_merlin_master_agent_171/sim/altera_merlin_master_agent.sv \
  $QSYS_SIMDIR/../altera_merlin_slave_agent_171/sim/altera_merlin_slave_agent.sv \
  $QSYS_SIMDIR/../altera_merlin_slave_agent_171/sim/altera_merlin_burst_uncompressor.sv \
  $QSYS_SIMDIR/../altera_avalon_sc_fifo_171/sim/altera_avalon_sc_fifo.v \
  $QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_23jcmrq.sv \
  $QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_vyttjzq.sv \
  $QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_demultiplexer_171_xojy6ca.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_iamyjly.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv \
  $QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_demultiplexer_171_bdho4xy.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_lgwlboa.sv \
  $QSYS_SIMDIR/../error_adapter_171/sim/ep_g3x8_avmm256_error_adapter_171_nt3czwq.sv \
  $QSYS_SIMDIR/../altera_avalon_st_adapter_171/sim/ep_g3x8_avmm256_altera_avalon_st_adapter_171_yxzsrmq.v \
  $QSYS_SIMDIR/../altera_mm_interconnect_171/sim/ep_g3x8_avmm256_altera_mm_interconnect_171_7t36psq.v \
  $QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_gwxgora.sv \
  $QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_g6qpmsi.sv \
  $QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_tdiu6gq.sv \
  $QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_ts3z7ji.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter_uncmpr.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter_13_1.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_burst_adapter_new.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_incr_burst_converter.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_wrap_burst_converter.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_default_burst_converter.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_merlin_address_alignment.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_avalon_st_pipeline_stage.sv \
  $QSYS_SIMDIR/../altera_merlin_burst_adapter_171/sim/altera_avalon_st_pipeline_base.v \
  $QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_demultiplexer_171_eqvhaxq.sv \
  $QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_demultiplexer_171_uehjzdy.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_sdxk4oa.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_cckx4ta.sv \
  $QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_demultiplexer_171_3kxwkza.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_wyhqm3q.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_36d27bi.sv \
  $QSYS_SIMDIR/../altera_merlin_width_adapter_171/sim/altera_merlin_width_adapter.sv \
  $QSYS_SIMDIR/../error_adapter_171/sim/ep_g3x8_avmm256_error_adapter_171_t2hnnza.sv \
  $QSYS_SIMDIR/../altera_avalon_st_adapter_171/sim/ep_g3x8_avmm256_altera_avalon_st_adapter_171_l5ksb3y.v \
  $QSYS_SIMDIR/../altera_mm_interconnect_171/sim/ep_g3x8_avmm256_altera_mm_interconnect_171_m6w4bsa.v \
  $QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_eb7dply.sv \
  $QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_fpb3wlq.sv \
  $QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_demultiplexer_171_zgmngca.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_frt5vea.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_mhqksua.sv \
  $QSYS_SIMDIR/../altera_mm_interconnect_171/sim/ep_g3x8_avmm256_altera_mm_interconnect_171_glb5asi.v \
  $QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_oruwnoi.sv \
  $QSYS_SIMDIR/../altera_merlin_router_171/sim/ep_g3x8_avmm256_altera_merlin_router_171_j5jg6hi.sv \
  $QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_merlin_traffic_limiter.sv \
  $QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_merlin_reorder_memory.sv \
  $QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_demultiplexer_171_wuqxuai.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_l5g5vfy.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/ep_g3x8_avmm256_altera_merlin_multiplexer_171_azrzo4q.sv \
  $QSYS_SIMDIR/../altera_mm_interconnect_171/sim/ep_g3x8_avmm256_altera_mm_interconnect_171_66vd26y.v \
  $QSYS_SIMDIR/../timing_adapter_171/sim/ep_g3x8_avmm256_timing_adapter_171_cjew6aq.sv \
  $QSYS_SIMDIR/../altera_avalon_st_adapter_171/sim/ep_g3x8_avmm256_altera_avalon_st_adapter_171_5moluky.v \
  $QSYS_SIMDIR/../altera_reset_controller_171/sim/altera_reset_controller.v \
  $QSYS_SIMDIR/../altera_reset_controller_171/sim/altera_reset_synchronizer.v \
  $QSYS_SIMDIR/ep_g3x8_avmm256.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
