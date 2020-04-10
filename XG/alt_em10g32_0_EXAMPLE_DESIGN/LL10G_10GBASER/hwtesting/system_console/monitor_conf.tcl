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


source common.tcl
source csr_pkg.tcl

global CHANNEL

open_jtag


#==============================================================================
#                       Configure monitor         
#==============================================================================
puts "Configure monitor\n"
puts "Check number of good packet:[rd32 [expr {$CHANNEL*0x10000 + 0xC000}] 0x400 0x04]\n"
puts "Check number of bad packet:[rd32 [expr {$CHANNEL*0x10000 + 0xC000}] 0x400 0x08]\n"

close_jtag