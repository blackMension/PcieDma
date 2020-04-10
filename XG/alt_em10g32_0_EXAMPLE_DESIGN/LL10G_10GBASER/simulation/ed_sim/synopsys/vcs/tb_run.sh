# (C) 2001-2018 Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions and other 
# software and tools, and its AMPP partner logic functions, and any output 
# files from any of the foregoing (including device programming or simulation 
# files), and any associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License Subscription 
# Agreement, Intel FPGA IP License Agreement, or other applicable 
# license agreement, including, without limitation, that your use is for the 
# sole purpose of programming logic devices manufactured by Intel and sold by 
# Intel or its authorized distributors.  Please refer to the applicable 
# agreement for further details.



#!/usr/bin/env bash

# RUN_SCRIPT_PARAMETERS
QUARTUS_INSTALL_DIR="$QUARTUS_ROOTDIR"
SETUP_SCRIPTS="../../setup_scripts/synopsys/vcs/vcs_setup.sh"
dut_wave_do="vcs_wave.tcl"
USER_DEFINED_SIM_OPTIONS="+vcs+lic+wait\ +vcs+finish+5000000000000\ -ucli\ -i\ tb_top.ucli\ -l\ simulation.log"
# USER_DEFINED_ELAB_OPTIONS="\$QUARTUS_INSTALL_DIR/../ip/altera/sopc_builder_ip/verification/lib/verbosity_pkg.sv\ \\
# \$QUARTUS_INSTALL_DIR/../ip/altera/sopc_builder_ip/verification/lib/avalon_mm_pkg.sv\ \\
# \$QUARTUS_INSTALL_DIR/../ip/altera/sopc_builder_ip/verification/lib/avalon_utilities_pkg.sv\ \\
# \$QUARTUS_INSTALL_DIR/../ip/altera/sopc_builder_ip/verification/altera_avalon_mm_master_bfm/altera_avalon_mm_master_bfm.sv\ \\
# \$QUARTUS_INSTALL_DIR/../ip/altera/sopc_builder_ip/verification/altera_avalon_st_sink_bfm/altera_avalon_st_sink_bfm.sv\ \\
# \$QUARTUS_INSTALL_DIR/../ip/altera/sopc_builder_ip/verification/altera_avalon_st_source_bfm/altera_avalon_st_source_bfm.sv\ \\"

. $SETUP_SCRIPTS TOP_LEVEL_NAME="tb_top" SKIP_ELAB=1 SKIP_SIM=1 QUARTUS_INSTALL_DIR="$QUARTUS_INSTALL_DIR" QSYS_SIMDIR="./.." USER_DEFINED_SIM_OPTIONS="$USER_DEFINED_SIM_OPTIONS" USER_DEFINED_ELAB_OPTIONS="-debug_all\ -l\ compilation.log\ $USER_DEFINED_ELAB_OPTIONS"

# run the simulation
./simv $USER_DEFINED_SIM_OPTIONS

# For debug purpose
#dve -vpd result.vpd -session $dut_wave_do

