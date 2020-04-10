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
#                       Configure do not remove CRC         
#==============================================================================
puts "Read CRC remove status\n"
puts "CRC remove status before write:[rd32 [expr {$CHANNEL*0x10000 + 0x0}] 0x100 0x00]\n"
wr32 [expr {$CHANNEL*0x10000 + 0x0}] 0x100 0x0 0x0
puts "CRC remove status after write:[rd32 [expr {$CHANNEL*0x10000 + 0x0}] 0x100 0x00]\n"

#==============================================================================
#                       Configure generator         
#==============================================================================
puts "Configure generator\n"
puts "Generator packet length before write:[rd32 [expr {$CHANNEL*0x10000 + 0xC000}] 0x30 0x04]\n"
wr32 [expr {$CHANNEL*0x10000 + 0xC000}] 0x30 0x4 0x64
puts "Generator packet length after write:[rd32 [expr {$CHANNEL*0x10000 + 0xC000}] 0x30 0x04]\n"

#puts "Generator payload status before write:[rd32 0xC000 0x00 0x08]\n"
#wr32 0xC000 0x008 0x0 0x01
#puts "Generator payload status after write:[rd32 0xC000 0x00 0x08]\n"

puts "Generator number of packets before write:[rd32 [expr {$CHANNEL*0x10000 + 0xC000}] 0x00 0x00]\n"
# 0xC000 0x00 0x0 0x01F4
# wr32 0xC000 0x00 0x0 0x03e8
wr32 [expr {$CHANNEL*0x10000 + 0xC000}] 0x00 0x0 0x186A0
puts "Generator number of packets after write:[rd32 [expr {$CHANNEL*0x10000 + 0xC000}] 0x00 0x00]\n"

puts "Generator random/fix packet length before write:[rd32 [expr {$CHANNEL*0x10000 + 0xC000}] 0x0 0x04]\n" 
wr32 [expr {$CHANNEL*0x10000 + 0xC000}] 0x0 0x4 0x1 
puts "Generator random/fix packet length after write:[rd32 [expr {$CHANNEL*0x10000 + 0xC000}] 0x0 0x04]\n" 

puts "Generator random/incremental payload pattern status before write:[rd32 [expr {$CHANNEL*0x10000 + 0xC000}] 0x00 0x08]\n" 
wr32 [expr {$CHANNEL*0x10000 + 0xC000}] 0x0 0x8 0x1 
puts "Generator payload pattern after write:[rd32 [expr {$CHANNEL*0x10000 + 0xC000}] 0x00 0x08]\n" 

puts "Generator start send packet before write:[rd32 [expr {$CHANNEL*0x10000 + 0xC000}] 0x00 0x0C]\n"
wr32 [expr {$CHANNEL*0x10000 + 0xC000}] 0x0C 0x0 0x1
puts "Generator after send packets after write:[rd32 [expr {$CHANNEL*0x10000 + 0xC000}] 0x00 0x0C]\n"

close_jtag