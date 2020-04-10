
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
# vcs - auto-generated simulation script

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
# ACDS 17.1.2 304 linux 2019.05.30.09:37:05
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="Phy_tb"
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
  $QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/altera_xcvr_native_a10_functions_h.sv \
  $QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_resync.sv \
  $QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_arbiter.sv \
  $QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/twentynm_pcs.sv \
  $QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/twentynm_pma.sv \
  $QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/twentynm_xcvr_avmm.sv \
  $QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/twentynm_xcvr_native.sv \
  $QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/a10_avmm_h.sv \
  $QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_pipe_retry.sv \
  $QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_avmm_csr.sv \
  $QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_prbs_accum.sv \
  $QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_odi_accel.sv \
  $QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_rcfg_arb.sv \
  $QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/altera_xcvr_native_pcie_dfe_params_h.sv \
  $QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/pcie_mgmt_commands_h.sv \
  $QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/pcie_mgmt_functions_h.sv \
  $QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/pcie_mgmt_program.sv \
  $QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/pcie_mgmt_cpu.sv \
  $QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/pcie_mgmt_master.sv \
  $QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/altera_xcvr_native_pcie_dfe_ip.sv \
  $QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/Phy_altera_xcvr_native_a10_1711_y7cueai.sv \
  $QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_rcfg_opt_logic_y7cueai.sv \
  $QSYS_SIMDIR/../../../Phy/sim/Phy.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_del_bfm_ip/altera_conduit_bfm_171/sim/verbosity_pkg.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_del_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_enh_fifo_del_bfm_ip_altera_conduit_bfm_171_oi4ohtq.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_del_bfm_ip/sim/Phy_inst_rx_enh_fifo_del_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_cal_busy_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_cal_busy_bfm_ip_altera_conduit_bfm_171_s7zyary.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_cal_busy_bfm_ip/sim/Phy_inst_tx_cal_busy_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_blk_lock_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_enh_blk_lock_bfm_ip_altera_conduit_bfm_171_tqzop6q.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_blk_lock_bfm_ip/sim/Phy_inst_rx_enh_blk_lock_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_full_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_enh_fifo_full_bfm_ip_altera_conduit_bfm_171_bkhzbdi.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_full_bfm_ip/sim/Phy_inst_tx_enh_fifo_full_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_coreclkin_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_coreclkin_bfm_ip_altera_conduit_bfm_171_sfxe7bq.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_coreclkin_bfm_ip/sim/Phy_inst_rx_coreclkin_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_full_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_enh_fifo_full_bfm_ip_altera_conduit_bfm_171_4lsjyvq.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_full_bfm_ip/sim/Phy_inst_rx_enh_fifo_full_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_parallel_data_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_parallel_data_bfm_ip_altera_conduit_bfm_171_krd3h5a.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_parallel_data_bfm_ip/sim/Phy_inst_tx_parallel_data_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_analogreset_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_analogreset_bfm_ip_altera_conduit_bfm_171_suzcfci.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_analogreset_bfm_ip/sim/Phy_inst_rx_analogreset_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_clkout_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_clkout_bfm_ip_altera_conduit_bfm_171_dvp26vy.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_clkout_bfm_ip/sim/Phy_inst_tx_clkout_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_tx_parallel_data_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_unused_tx_parallel_data_bfm_ip_altera_conduit_bfm_171_pvaewry.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_tx_parallel_data_bfm_ip/sim/Phy_inst_unused_tx_parallel_data_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_cal_busy_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_cal_busy_bfm_ip_altera_conduit_bfm_171_3ukswuy.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_cal_busy_bfm_ip/sim/Phy_inst_rx_cal_busy_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_reconfig_clk_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_reconfig_clk_bfm_ip_altera_conduit_bfm_171_sfxe7bq.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_reconfig_clk_bfm_ip/sim/Phy_inst_reconfig_clk_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_clkout_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_clkout_bfm_ip_altera_conduit_bfm_171_dvp26vy.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_clkout_bfm_ip/sim/Phy_inst_rx_clkout_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_digitalreset_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_digitalreset_bfm_ip_altera_conduit_bfm_171_jemqyza.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_digitalreset_bfm_ip/sim/Phy_inst_rx_digitalreset_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_pfull_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_enh_fifo_pfull_bfm_ip_altera_conduit_bfm_171_7va4hdi.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_pfull_bfm_ip/sim/Phy_inst_tx_enh_fifo_pfull_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_serial_clk0_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_serial_clk0_bfm_ip_altera_conduit_bfm_171_sfxe7bq.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_serial_clk0_bfm_ip/sim/Phy_inst_tx_serial_clk0_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_reconfig_reset_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_reconfig_reset_bfm_ip_altera_conduit_bfm_171_tzm3ryi.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_reconfig_reset_bfm_ip/sim/Phy_inst_reconfig_reset_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_empty_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_enh_fifo_empty_bfm_ip_altera_conduit_bfm_171_rpvn5oi.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_empty_bfm_ip/sim/Phy_inst_tx_enh_fifo_empty_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_control_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_control_bfm_ip_altera_conduit_bfm_171_od2ecna.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_control_bfm_ip/sim/Phy_inst_tx_control_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_pma_div_clkout_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_pma_div_clkout_bfm_ip_altera_conduit_bfm_171_dvp26vy.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_pma_div_clkout_bfm_ip/sim/Phy_inst_rx_pma_div_clkout_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_cdr_refclk0_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_cdr_refclk0_bfm_ip_altera_conduit_bfm_171_sfxe7bq.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_cdr_refclk0_bfm_ip/sim/Phy_inst_rx_cdr_refclk0_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_parallel_data_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_parallel_data_bfm_ip_altera_conduit_bfm_171_2fwttky.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_parallel_data_bfm_ip/sim/Phy_inst_rx_parallel_data_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_control_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_control_bfm_ip_altera_conduit_bfm_171_zi5pipy.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_control_bfm_ip/sim/Phy_inst_rx_control_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_highber_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_enh_highber_bfm_ip_altera_conduit_bfm_171_yxtgjaq.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_highber_bfm_ip/sim/Phy_inst_rx_enh_highber_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_coreclkin_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_coreclkin_bfm_ip_altera_conduit_bfm_171_sfxe7bq.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_coreclkin_bfm_ip/sim/Phy_inst_tx_coreclkin_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_digitalreset_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_digitalreset_bfm_ip_altera_conduit_bfm_171_kpoqata.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_digitalreset_bfm_ip/sim/Phy_inst_tx_digitalreset_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_reconfig_avmm_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_reconfig_avmm_bfm_ip_altera_conduit_bfm_171_k2a7pti.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_reconfig_avmm_bfm_ip/sim/Phy_inst_reconfig_avmm_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_serial_data_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_serial_data_bfm_ip_altera_conduit_bfm_171_ydb2hoq.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_serial_data_bfm_ip/sim/Phy_inst_tx_serial_data_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_empty_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_enh_fifo_empty_bfm_ip_altera_conduit_bfm_171_aw4q3sa.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_empty_bfm_ip/sim/Phy_inst_rx_enh_fifo_empty_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_insert_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_enh_fifo_insert_bfm_ip_altera_conduit_bfm_171_te4nuui.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_insert_bfm_ip/sim/Phy_inst_rx_enh_fifo_insert_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_pma_div_clkout_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_pma_div_clkout_bfm_ip_altera_conduit_bfm_171_dvp26vy.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_pma_div_clkout_bfm_ip/sim/Phy_inst_tx_pma_div_clkout_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_data_valid_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_enh_data_valid_bfm_ip_altera_conduit_bfm_171_cp6emyy.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_data_valid_bfm_ip/sim/Phy_inst_rx_enh_data_valid_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_err_ins_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_err_ins_bfm_ip_altera_conduit_bfm_171_b5kmjbi.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_err_ins_bfm_ip/sim/Phy_inst_tx_err_ins_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_pempty_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_enh_fifo_pempty_bfm_ip_altera_conduit_bfm_171_zii6uui.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_pempty_bfm_ip/sim/Phy_inst_tx_enh_fifo_pempty_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_rx_parallel_data_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_unused_rx_parallel_data_bfm_ip_altera_conduit_bfm_171_lmva6xi.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_rx_parallel_data_bfm_ip/sim/Phy_inst_unused_rx_parallel_data_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_analogreset_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_analogreset_bfm_ip_altera_conduit_bfm_171_wvxppvq.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_analogreset_bfm_ip/sim/Phy_inst_tx_analogreset_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_tx_control_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_unused_tx_control_bfm_ip_altera_conduit_bfm_171_fgfakmq.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_tx_control_bfm_ip/sim/Phy_inst_unused_tx_control_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_serial_data_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_serial_data_bfm_ip_altera_conduit_bfm_171_xh3a7uq.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_serial_data_bfm_ip/sim/Phy_inst_rx_serial_data_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_rx_control_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_unused_rx_control_bfm_ip_altera_conduit_bfm_171_a6vkyjy.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_rx_control_bfm_ip/sim/Phy_inst_unused_rx_control_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_is_lockedtoref_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_is_lockedtoref_bfm_ip_altera_conduit_bfm_171_cht2buy.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_is_lockedtoref_bfm_ip/sim/Phy_inst_rx_is_lockedtoref_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_is_lockedtodata_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_is_lockedtodata_bfm_ip_altera_conduit_bfm_171_hqmdh2y.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_is_lockedtodata_bfm_ip/sim/Phy_inst_rx_is_lockedtodata_bfm_ip.v \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_data_valid_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_enh_data_valid_bfm_ip_altera_conduit_bfm_171_ku5zdby.sv \
  $QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_data_valid_bfm_ip/sim/Phy_inst_tx_enh_data_valid_bfm_ip.v \
  $QSYS_SIMDIR/Phy_tb.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
