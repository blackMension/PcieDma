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



global env ;

set QUARTUS_INSTALL_DIR "$env(QUARTUS_ROOTDIR)"
set SETUP_SCRIPTS ../setup_scripts
set tb_top_waveform msim_wave.do
set QSYS_SIMDIR "."

set TOP_LEVEL_NAME tb_top

source $SETUP_SCRIPTS/mentor/msim_setup.tcl

# Compile device library files
dev_com 

# Compile Avalon VIP
vlog -sv -work work $env(QUARTUS_ROOTDIR)/../ip/altera/sopc_builder_ip/verification/lib/verbosity_pkg.sv
vlog -sv -work work $env(QUARTUS_ROOTDIR)/../ip/altera/sopc_builder_ip/verification/lib/avalon_mm_pkg.sv
vlog -sv -work work $env(QUARTUS_ROOTDIR)/../ip/altera/sopc_builder_ip/verification/lib/avalon_utilities_pkg.sv
vlog -sv -work work $env(QUARTUS_ROOTDIR)/../ip/altera/sopc_builder_ip/verification/altera_avalon_mm_master_bfm/altera_avalon_mm_master_bfm.sv
vlog -sv -work work $env(QUARTUS_ROOTDIR)/../ip/altera/sopc_builder_ip/verification/altera_avalon_st_sink_bfm/altera_avalon_st_sink_bfm.sv
vlog -sv -work work $env(QUARTUS_ROOTDIR)/../ip/altera/sopc_builder_ip/verification/altera_avalon_st_source_bfm/altera_avalon_st_source_bfm.sv

# Compile the design files in correct order
com

# Some packages file has changed. Refresh the work libraries (Vsim-13)
vlog -work work -refresh -force_refresh

# Elaborate top level design
elab_debug

# Add waveform
do $tb_top_waveform

# Run the simulation
run -all
