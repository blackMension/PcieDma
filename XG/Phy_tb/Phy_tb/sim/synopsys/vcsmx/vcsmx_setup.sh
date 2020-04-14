
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
# vcsmx - auto-generated simulation script

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
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "vcsmx_sim.sh", and modify text as directed.
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
# # the simulator. In this case, you must also copy the generated library
# # setup "synopsys_sim.setup" into the location from which you launch the
# # simulator, or incorporate into any existing library setup.
# #
# # Run Quartus-generated IP simulation script once to compile Quartus EDA
# # simulation libraries and Quartus-generated IP simulation files, and copy
# # any ROM/RAM initialization files to the simulation directory.
# #
# # - If necessary, specify any compilation options:
# #   USER_DEFINED_COMPILE_OPTIONS
# #   USER_DEFINED_VHDL_COMPILE_OPTIONS applied to vhdl compiler
# #   USER_DEFINED_VERILOG_COMPILE_OPTIONS applied to verilog compiler
# #
# source <script generation output directory>/synopsys/vcsmx/vcsmx_setup.sh \
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
# vlogan <compilation options> <design and testbench files>
# #
# # TOP_LEVEL_NAME is used in this script to set the top-level simulation or
# # testbench module/entity name.
# #
# # Run the IP script again to elaborate and simulate the top level:
# # - Specify TOP_LEVEL_NAME and USER_DEFINED_ELAB_OPTIONS.
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# #
# source <script generation output directory>/synopsys/vcsmx/vcsmx_setup.sh \
# SKIP_FILE_COPY=1 \
# SKIP_DEV_COM=1 \
# SKIP_COM=1 \
# TOP_LEVEL_NAME="'-top <simulation top>'" \
# QSYS_SIMDIR=<script generation output directory> \
# USER_DEFINED_ELAB_OPTIONS=<elaboration options for your design> \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# ACDS 17.1.2 304 linux 2019.05.30.09:37:05
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="Phy_tb.Phy_tb"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="/home/tools/intelFPGA_pro/17.1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
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
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/altera_common_sv_packages/
mkdir -p ./libraries/altera_xcvr_native_a10_1711/
mkdir -p ./libraries/Phy/
mkdir -p ./libraries/altera_conduit_bfm_171/
mkdir -p ./libraries/Phy_inst_rx_enh_fifo_del_bfm_ip/
mkdir -p ./libraries/Phy_inst_tx_cal_busy_bfm_ip/
mkdir -p ./libraries/Phy_inst_rx_enh_blk_lock_bfm_ip/
mkdir -p ./libraries/Phy_inst_tx_enh_fifo_full_bfm_ip/
mkdir -p ./libraries/Phy_inst_rx_coreclkin_bfm_ip/
mkdir -p ./libraries/Phy_inst_rx_enh_fifo_full_bfm_ip/
mkdir -p ./libraries/Phy_inst_tx_parallel_data_bfm_ip/
mkdir -p ./libraries/Phy_inst_rx_analogreset_bfm_ip/
mkdir -p ./libraries/Phy_inst_tx_clkout_bfm_ip/
mkdir -p ./libraries/Phy_inst_unused_tx_parallel_data_bfm_ip/
mkdir -p ./libraries/Phy_inst_rx_cal_busy_bfm_ip/
mkdir -p ./libraries/Phy_inst_reconfig_clk_bfm_ip/
mkdir -p ./libraries/Phy_inst_rx_clkout_bfm_ip/
mkdir -p ./libraries/Phy_inst_rx_digitalreset_bfm_ip/
mkdir -p ./libraries/Phy_inst_tx_enh_fifo_pfull_bfm_ip/
mkdir -p ./libraries/Phy_inst_tx_serial_clk0_bfm_ip/
mkdir -p ./libraries/Phy_inst_reconfig_reset_bfm_ip/
mkdir -p ./libraries/Phy_inst_tx_enh_fifo_empty_bfm_ip/
mkdir -p ./libraries/Phy_inst_tx_control_bfm_ip/
mkdir -p ./libraries/Phy_inst_rx_pma_div_clkout_bfm_ip/
mkdir -p ./libraries/Phy_inst_rx_cdr_refclk0_bfm_ip/
mkdir -p ./libraries/Phy_inst_rx_parallel_data_bfm_ip/
mkdir -p ./libraries/Phy_inst_rx_control_bfm_ip/
mkdir -p ./libraries/Phy_inst_rx_enh_highber_bfm_ip/
mkdir -p ./libraries/Phy_inst_tx_coreclkin_bfm_ip/
mkdir -p ./libraries/Phy_inst_tx_digitalreset_bfm_ip/
mkdir -p ./libraries/Phy_inst_reconfig_avmm_bfm_ip/
mkdir -p ./libraries/Phy_inst_tx_serial_data_bfm_ip/
mkdir -p ./libraries/Phy_inst_rx_enh_fifo_empty_bfm_ip/
mkdir -p ./libraries/Phy_inst_rx_enh_fifo_insert_bfm_ip/
mkdir -p ./libraries/Phy_inst_tx_pma_div_clkout_bfm_ip/
mkdir -p ./libraries/Phy_inst_rx_enh_data_valid_bfm_ip/
mkdir -p ./libraries/Phy_inst_tx_err_ins_bfm_ip/
mkdir -p ./libraries/Phy_inst_tx_enh_fifo_pempty_bfm_ip/
mkdir -p ./libraries/Phy_inst_unused_rx_parallel_data_bfm_ip/
mkdir -p ./libraries/Phy_inst_tx_analogreset_bfm_ip/
mkdir -p ./libraries/Phy_inst_unused_tx_control_bfm_ip/
mkdir -p ./libraries/Phy_inst_rx_serial_data_bfm_ip/
mkdir -p ./libraries/Phy_inst_unused_rx_control_bfm_ip/
mkdir -p ./libraries/Phy_inst_rx_is_lockedtoref_bfm_ip/
mkdir -p ./libraries/Phy_inst_rx_is_lockedtodata_bfm_ip/
mkdir -p ./libraries/Phy_inst_tx_enh_data_valid_bfm_ip/
mkdir -p ./libraries/Phy_tb/
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
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                   -work altera_ver       
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                            -work lpm_ver          
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                               -work sgate_ver        
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                           -work altera_mf_ver    
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                       -work altera_lnsim_ver 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_atoms.v"                      -work twentynm_ver     
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/twentynm_atoms_ncrypt.v"      -work twentynm_ver     
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/twentynm_hssi_atoms_ncrypt.v" -work twentynm_hssi_ver
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hssi_atoms.v"                 -work twentynm_hssi_ver
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/twentynm_hip_atoms_ncrypt.v"  -work twentynm_hip_ver 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/twentynm_hip_atoms.v"                  -work twentynm_hip_ver 
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/altera_xcvr_native_a10_functions_h.sv"                                                                           -work altera_common_sv_packages              
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_resync.sv"                                                                                              -work altera_xcvr_native_a10_1711            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_arbiter.sv"                                                                                             -work altera_xcvr_native_a10_1711            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/twentynm_pcs.sv"                                                                                                 -work altera_xcvr_native_a10_1711            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/twentynm_pma.sv"                                                                                                 -work altera_xcvr_native_a10_1711            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/twentynm_xcvr_avmm.sv"                                                                                           -work altera_xcvr_native_a10_1711            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/twentynm_xcvr_native.sv"                                                                                         -work altera_xcvr_native_a10_1711            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/a10_avmm_h.sv"                                                                                                   -work altera_xcvr_native_a10_1711            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_pipe_retry.sv"                                                                                   -work altera_xcvr_native_a10_1711            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_avmm_csr.sv"                                                                                     -work altera_xcvr_native_a10_1711            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_prbs_accum.sv"                                                                                   -work altera_xcvr_native_a10_1711            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_odi_accel.sv"                                                                                    -work altera_xcvr_native_a10_1711            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_rcfg_arb.sv"                                                                                     -work altera_xcvr_native_a10_1711            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/altera_xcvr_native_pcie_dfe_params_h.sv"                                                                         -work altera_xcvr_native_a10_1711            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/pcie_mgmt_commands_h.sv"                                                                                         -work altera_xcvr_native_a10_1711            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/pcie_mgmt_functions_h.sv"                                                                                        -work altera_xcvr_native_a10_1711            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/pcie_mgmt_program.sv"                                                                                            -work altera_xcvr_native_a10_1711            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/pcie_mgmt_cpu.sv"                                                                                                -work altera_xcvr_native_a10_1711            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/pcie_mgmt_master.sv"                                                                                             -work altera_xcvr_native_a10_1711            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/altera_xcvr_native_pcie_dfe_ip.sv"                                                                               -work altera_xcvr_native_a10_1711            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/Phy_altera_xcvr_native_a10_1711_y7cueai.sv"                                                                      -work altera_xcvr_native_a10_1711            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../../Phy/altera_xcvr_native_a10_1711/sim/alt_xcvr_native_rcfg_opt_logic_y7cueai.sv"                                                                       -work altera_xcvr_native_a10_1711            
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../../Phy/sim/Phy.v"                                                                                                                                       -work Phy                                    
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_del_bfm_ip/altera_conduit_bfm_171/sim/verbosity_pkg.sv"                                                                  -work altera_common_sv_packages              
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_del_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_enh_fifo_del_bfm_ip_altera_conduit_bfm_171_oi4ohtq.sv"                 -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_del_bfm_ip/sim/Phy_inst_rx_enh_fifo_del_bfm_ip.v"                                                                        -work Phy_inst_rx_enh_fifo_del_bfm_ip        
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_cal_busy_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_cal_busy_bfm_ip_altera_conduit_bfm_171_s7zyary.sv"                         -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_cal_busy_bfm_ip/sim/Phy_inst_tx_cal_busy_bfm_ip.v"                                                                                -work Phy_inst_tx_cal_busy_bfm_ip            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_blk_lock_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_enh_blk_lock_bfm_ip_altera_conduit_bfm_171_tqzop6q.sv"                 -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_blk_lock_bfm_ip/sim/Phy_inst_rx_enh_blk_lock_bfm_ip.v"                                                                        -work Phy_inst_rx_enh_blk_lock_bfm_ip        
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_full_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_enh_fifo_full_bfm_ip_altera_conduit_bfm_171_bkhzbdi.sv"               -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_full_bfm_ip/sim/Phy_inst_tx_enh_fifo_full_bfm_ip.v"                                                                      -work Phy_inst_tx_enh_fifo_full_bfm_ip       
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_coreclkin_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_coreclkin_bfm_ip_altera_conduit_bfm_171_sfxe7bq.sv"                       -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_coreclkin_bfm_ip/sim/Phy_inst_rx_coreclkin_bfm_ip.v"                                                                              -work Phy_inst_rx_coreclkin_bfm_ip           
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_full_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_enh_fifo_full_bfm_ip_altera_conduit_bfm_171_4lsjyvq.sv"               -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_full_bfm_ip/sim/Phy_inst_rx_enh_fifo_full_bfm_ip.v"                                                                      -work Phy_inst_rx_enh_fifo_full_bfm_ip       
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_parallel_data_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_parallel_data_bfm_ip_altera_conduit_bfm_171_krd3h5a.sv"               -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_parallel_data_bfm_ip/sim/Phy_inst_tx_parallel_data_bfm_ip.v"                                                                      -work Phy_inst_tx_parallel_data_bfm_ip       
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_analogreset_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_analogreset_bfm_ip_altera_conduit_bfm_171_suzcfci.sv"                   -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_analogreset_bfm_ip/sim/Phy_inst_rx_analogreset_bfm_ip.v"                                                                          -work Phy_inst_rx_analogreset_bfm_ip         
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_clkout_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_clkout_bfm_ip_altera_conduit_bfm_171_dvp26vy.sv"                             -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_clkout_bfm_ip/sim/Phy_inst_tx_clkout_bfm_ip.v"                                                                                    -work Phy_inst_tx_clkout_bfm_ip              
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_tx_parallel_data_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_unused_tx_parallel_data_bfm_ip_altera_conduit_bfm_171_pvaewry.sv" -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_tx_parallel_data_bfm_ip/sim/Phy_inst_unused_tx_parallel_data_bfm_ip.v"                                                        -work Phy_inst_unused_tx_parallel_data_bfm_ip
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_cal_busy_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_cal_busy_bfm_ip_altera_conduit_bfm_171_3ukswuy.sv"                         -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_cal_busy_bfm_ip/sim/Phy_inst_rx_cal_busy_bfm_ip.v"                                                                                -work Phy_inst_rx_cal_busy_bfm_ip            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_reconfig_clk_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_reconfig_clk_bfm_ip_altera_conduit_bfm_171_sfxe7bq.sv"                       -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_reconfig_clk_bfm_ip/sim/Phy_inst_reconfig_clk_bfm_ip.v"                                                                              -work Phy_inst_reconfig_clk_bfm_ip           
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_clkout_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_clkout_bfm_ip_altera_conduit_bfm_171_dvp26vy.sv"                             -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_clkout_bfm_ip/sim/Phy_inst_rx_clkout_bfm_ip.v"                                                                                    -work Phy_inst_rx_clkout_bfm_ip              
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_digitalreset_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_digitalreset_bfm_ip_altera_conduit_bfm_171_jemqyza.sv"                 -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_digitalreset_bfm_ip/sim/Phy_inst_rx_digitalreset_bfm_ip.v"                                                                        -work Phy_inst_rx_digitalreset_bfm_ip        
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_pfull_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_enh_fifo_pfull_bfm_ip_altera_conduit_bfm_171_7va4hdi.sv"             -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_pfull_bfm_ip/sim/Phy_inst_tx_enh_fifo_pfull_bfm_ip.v"                                                                    -work Phy_inst_tx_enh_fifo_pfull_bfm_ip      
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_serial_clk0_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_serial_clk0_bfm_ip_altera_conduit_bfm_171_sfxe7bq.sv"                   -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_serial_clk0_bfm_ip/sim/Phy_inst_tx_serial_clk0_bfm_ip.v"                                                                          -work Phy_inst_tx_serial_clk0_bfm_ip         
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_reconfig_reset_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_reconfig_reset_bfm_ip_altera_conduit_bfm_171_tzm3ryi.sv"                   -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_reconfig_reset_bfm_ip/sim/Phy_inst_reconfig_reset_bfm_ip.v"                                                                          -work Phy_inst_reconfig_reset_bfm_ip         
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_empty_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_enh_fifo_empty_bfm_ip_altera_conduit_bfm_171_rpvn5oi.sv"             -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_empty_bfm_ip/sim/Phy_inst_tx_enh_fifo_empty_bfm_ip.v"                                                                    -work Phy_inst_tx_enh_fifo_empty_bfm_ip      
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_control_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_control_bfm_ip_altera_conduit_bfm_171_od2ecna.sv"                           -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_control_bfm_ip/sim/Phy_inst_tx_control_bfm_ip.v"                                                                                  -work Phy_inst_tx_control_bfm_ip             
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_pma_div_clkout_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_pma_div_clkout_bfm_ip_altera_conduit_bfm_171_dvp26vy.sv"             -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_pma_div_clkout_bfm_ip/sim/Phy_inst_rx_pma_div_clkout_bfm_ip.v"                                                                    -work Phy_inst_rx_pma_div_clkout_bfm_ip      
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_cdr_refclk0_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_cdr_refclk0_bfm_ip_altera_conduit_bfm_171_sfxe7bq.sv"                   -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_cdr_refclk0_bfm_ip/sim/Phy_inst_rx_cdr_refclk0_bfm_ip.v"                                                                          -work Phy_inst_rx_cdr_refclk0_bfm_ip         
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_parallel_data_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_parallel_data_bfm_ip_altera_conduit_bfm_171_2fwttky.sv"               -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_parallel_data_bfm_ip/sim/Phy_inst_rx_parallel_data_bfm_ip.v"                                                                      -work Phy_inst_rx_parallel_data_bfm_ip       
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_control_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_control_bfm_ip_altera_conduit_bfm_171_zi5pipy.sv"                           -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_control_bfm_ip/sim/Phy_inst_rx_control_bfm_ip.v"                                                                                  -work Phy_inst_rx_control_bfm_ip             
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_highber_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_enh_highber_bfm_ip_altera_conduit_bfm_171_yxtgjaq.sv"                   -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_highber_bfm_ip/sim/Phy_inst_rx_enh_highber_bfm_ip.v"                                                                          -work Phy_inst_rx_enh_highber_bfm_ip         
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_coreclkin_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_coreclkin_bfm_ip_altera_conduit_bfm_171_sfxe7bq.sv"                       -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_coreclkin_bfm_ip/sim/Phy_inst_tx_coreclkin_bfm_ip.v"                                                                              -work Phy_inst_tx_coreclkin_bfm_ip           
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_digitalreset_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_digitalreset_bfm_ip_altera_conduit_bfm_171_kpoqata.sv"                 -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_digitalreset_bfm_ip/sim/Phy_inst_tx_digitalreset_bfm_ip.v"                                                                        -work Phy_inst_tx_digitalreset_bfm_ip        
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_reconfig_avmm_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_reconfig_avmm_bfm_ip_altera_conduit_bfm_171_k2a7pti.sv"                     -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_reconfig_avmm_bfm_ip/sim/Phy_inst_reconfig_avmm_bfm_ip.v"                                                                            -work Phy_inst_reconfig_avmm_bfm_ip          
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_serial_data_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_serial_data_bfm_ip_altera_conduit_bfm_171_ydb2hoq.sv"                   -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_serial_data_bfm_ip/sim/Phy_inst_tx_serial_data_bfm_ip.v"                                                                          -work Phy_inst_tx_serial_data_bfm_ip         
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_empty_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_enh_fifo_empty_bfm_ip_altera_conduit_bfm_171_aw4q3sa.sv"             -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_empty_bfm_ip/sim/Phy_inst_rx_enh_fifo_empty_bfm_ip.v"                                                                    -work Phy_inst_rx_enh_fifo_empty_bfm_ip      
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_insert_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_enh_fifo_insert_bfm_ip_altera_conduit_bfm_171_te4nuui.sv"           -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_fifo_insert_bfm_ip/sim/Phy_inst_rx_enh_fifo_insert_bfm_ip.v"                                                                  -work Phy_inst_rx_enh_fifo_insert_bfm_ip     
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_pma_div_clkout_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_pma_div_clkout_bfm_ip_altera_conduit_bfm_171_dvp26vy.sv"             -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_pma_div_clkout_bfm_ip/sim/Phy_inst_tx_pma_div_clkout_bfm_ip.v"                                                                    -work Phy_inst_tx_pma_div_clkout_bfm_ip      
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_data_valid_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_enh_data_valid_bfm_ip_altera_conduit_bfm_171_cp6emyy.sv"             -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_enh_data_valid_bfm_ip/sim/Phy_inst_rx_enh_data_valid_bfm_ip.v"                                                                    -work Phy_inst_rx_enh_data_valid_bfm_ip      
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_err_ins_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_err_ins_bfm_ip_altera_conduit_bfm_171_b5kmjbi.sv"                           -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_err_ins_bfm_ip/sim/Phy_inst_tx_err_ins_bfm_ip.v"                                                                                  -work Phy_inst_tx_err_ins_bfm_ip             
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_pempty_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_enh_fifo_pempty_bfm_ip_altera_conduit_bfm_171_zii6uui.sv"           -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_fifo_pempty_bfm_ip/sim/Phy_inst_tx_enh_fifo_pempty_bfm_ip.v"                                                                  -work Phy_inst_tx_enh_fifo_pempty_bfm_ip     
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_rx_parallel_data_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_unused_rx_parallel_data_bfm_ip_altera_conduit_bfm_171_lmva6xi.sv" -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_rx_parallel_data_bfm_ip/sim/Phy_inst_unused_rx_parallel_data_bfm_ip.v"                                                        -work Phy_inst_unused_rx_parallel_data_bfm_ip
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_analogreset_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_analogreset_bfm_ip_altera_conduit_bfm_171_wvxppvq.sv"                   -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_analogreset_bfm_ip/sim/Phy_inst_tx_analogreset_bfm_ip.v"                                                                          -work Phy_inst_tx_analogreset_bfm_ip         
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_tx_control_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_unused_tx_control_bfm_ip_altera_conduit_bfm_171_fgfakmq.sv"             -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_tx_control_bfm_ip/sim/Phy_inst_unused_tx_control_bfm_ip.v"                                                                    -work Phy_inst_unused_tx_control_bfm_ip      
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_serial_data_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_serial_data_bfm_ip_altera_conduit_bfm_171_xh3a7uq.sv"                   -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_serial_data_bfm_ip/sim/Phy_inst_rx_serial_data_bfm_ip.v"                                                                          -work Phy_inst_rx_serial_data_bfm_ip         
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_rx_control_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_unused_rx_control_bfm_ip_altera_conduit_bfm_171_a6vkyjy.sv"             -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_unused_rx_control_bfm_ip/sim/Phy_inst_unused_rx_control_bfm_ip.v"                                                                    -work Phy_inst_unused_rx_control_bfm_ip      
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_is_lockedtoref_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_is_lockedtoref_bfm_ip_altera_conduit_bfm_171_cht2buy.sv"             -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_is_lockedtoref_bfm_ip/sim/Phy_inst_rx_is_lockedtoref_bfm_ip.v"                                                                    -work Phy_inst_rx_is_lockedtoref_bfm_ip      
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_is_lockedtodata_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_rx_is_lockedtodata_bfm_ip_altera_conduit_bfm_171_hqmdh2y.sv"           -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_rx_is_lockedtodata_bfm_ip/sim/Phy_inst_rx_is_lockedtodata_bfm_ip.v"                                                                  -work Phy_inst_rx_is_lockedtodata_bfm_ip     
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_data_valid_bfm_ip/altera_conduit_bfm_171/sim/Phy_inst_tx_enh_data_valid_bfm_ip_altera_conduit_bfm_171_ku5zdby.sv"             -work altera_conduit_bfm_171                 
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/../../ip/Phy_tb/Phy_inst_tx_enh_data_valid_bfm_ip/sim/Phy_inst_tx_enh_data_valid_bfm_ip.v"                                                                    -work Phy_inst_tx_enh_data_valid_bfm_ip      
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/Phy_tb.v"                                                                                                                                                     -work Phy_tb                                 
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  vcs -lca -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
