
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
# vcs - auto-generated simulation script

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
# ACDS 17.1.2 304 linux 2019.06.06.16:26:14
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="Nios"
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
  $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey.vo \
  $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_test_bench.v \
  $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_debug_slave_tck.v \
  $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_debug_slave_wrapper.v \
  $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_mult_cell.v \
  $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_unit_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_unit_171_yoexwey_debug_slave_sysclk.v \
  $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/altera_nios2_gen2_171/sim/Nios_nios2_gen2_0_altera_nios2_gen2_171_2az3xjq.v \
  $QSYS_SIMDIR/../../ip/Nios/Nios_nios2_gen2_0/sim/Nios_nios2_gen2_0.v \
  $QSYS_SIMDIR/../../ip/Nios/Nios_clock_in/sim/Nios_clock_in.v \
  $QSYS_SIMDIR/../../ip/Nios/Nios_onchip_memory2_0/altera_avalon_onchip_memory2_171/sim/Nios_onchip_memory2_0_altera_avalon_onchip_memory2_171_kcyxzai.v \
  $QSYS_SIMDIR/../../ip/Nios/Nios_onchip_memory2_0/sim/Nios_onchip_memory2_0.v \
  $QSYS_SIMDIR/../../ip/Nios/Nios_reset_in/sim/Nios_reset_in.v \
  $QSYS_SIMDIR/../altera_merlin_master_translator_171/sim/altera_merlin_master_translator.sv \
  $QSYS_SIMDIR/../altera_merlin_slave_translator_171/sim/altera_merlin_slave_translator.sv \
  $QSYS_SIMDIR/../altera_merlin_master_agent_171/sim/altera_merlin_master_agent.sv \
  $QSYS_SIMDIR/../altera_merlin_slave_agent_171/sim/altera_merlin_slave_agent.sv \
  $QSYS_SIMDIR/../altera_merlin_slave_agent_171/sim/altera_merlin_burst_uncompressor.sv \
  $QSYS_SIMDIR/../altera_avalon_sc_fifo_171/sim/altera_avalon_sc_fifo.v \
  $QSYS_SIMDIR/../altera_merlin_router_171/sim/Nios_altera_merlin_router_171_bvdyedq.sv \
  $QSYS_SIMDIR/../altera_merlin_router_171/sim/Nios_altera_merlin_router_171_exfq7ma.sv \
  $QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_merlin_traffic_limiter.sv \
  $QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_merlin_reorder_memory.sv \
  $QSYS_SIMDIR/../altera_merlin_traffic_limiter_171/sim/altera_avalon_st_pipeline_base.v \
  $QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/Nios_altera_merlin_demultiplexer_171_3ssvi5a.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/Nios_altera_merlin_multiplexer_171_rreylyq.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/altera_merlin_arbitrator.sv \
  $QSYS_SIMDIR/../altera_merlin_demultiplexer_171/sim/Nios_altera_merlin_demultiplexer_171_wqjhr4q.sv \
  $QSYS_SIMDIR/../altera_merlin_multiplexer_171/sim/Nios_altera_merlin_multiplexer_171_v6nl2fq.sv \
  $QSYS_SIMDIR/../error_adapter_171/sim/Nios_error_adapter_171_nt3czwq.sv \
  $QSYS_SIMDIR/../altera_avalon_st_adapter_171/sim/Nios_altera_avalon_st_adapter_171_yxzsrmq.v \
  $QSYS_SIMDIR/../altera_mm_interconnect_171/sim/Nios_altera_mm_interconnect_171_gpud3si.v \
  $QSYS_SIMDIR/../altera_irq_mapper_171/sim/Nios_altera_irq_mapper_171_p76tqpi.sv \
  $QSYS_SIMDIR/../altera_reset_controller_171/sim/altera_reset_controller.v \
  $QSYS_SIMDIR/../altera_reset_controller_171/sim/altera_reset_synchronizer.v \
  $QSYS_SIMDIR/Nios.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
