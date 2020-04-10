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

open_jtag

#==============================================================================
#                       Configure do not remove CRC         
#==============================================================================
puts "Read CRC remove status\n"
puts "CRC remove status before write:[rd32 0x0 0x100 0x00]\n"
wr32 0x0 0x100 0x0 0x0
puts "CRC remove status after write:[rd32 0x0 0x100 0x00]\n"

#==============================================================================
#                       Configure generator         
#==============================================================================
puts "Configure generator\n"
puts "Generator packet length before write:[rd32 0xE000 0x30 0x04]\n"
wr32 0xE000 0x00 0x4 0x41
puts "Generator packet length after write:[rd32 0xE000 0x30 0x04]\n"

puts "Generator payload status before write:[rd32 0xE000 0x00 0x08]\n"
wr32 0xE000 0x008 0x0 0x01
puts "Generator payload status after write:[rd32 0xE000 0x00 0x08]\n"

puts "Generator number of packets before write:[rd32 0xE000 0x00 0x00]\n"
wr32 0xE000 0x00 0x0 0x2000
puts "Generator number of packets after write:[rd32 0xE000 0x00 0x00]\n"

puts "Generator start send packet before write:[rd32 0xE000 0x00 0x0C]\n"
wr32 0xE000 0x0C 0x0 0x1
puts "Generator after send packets after write:[rd32 0xE000 0x00 0x0C]\n"


close_jtag