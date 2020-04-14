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

puts "=============================================================================="
puts "                      Accessing Ethernet 10G MAC CSR			    "
puts "==============================================================================\n\n"

#==============================================================================
#                       Configuring RX fifo                
#============================================================================
puts "Read RX FIFO status\n"
puts "FIFO drop on error status before write:[rd32 [expr {$CHANNEL*0x10000 + 0xd000}] 0x400 0x14]\n"
wr32 [expr {$CHANNEL*0x10000 + 0xd000}] 0x414 0x0 0x1
puts "FIFO drop on error status after write:[rd32 [expr {$CHANNEL*0x10000 + 0xd000}] 0x400 0x14]\n"

puts "Read RX FIFO almost full threshold\n"
puts "RX FIFO almost full threshold before write:[rd32 [expr {$CHANNEL*0x10000 + 0xd000}] 0x400 0x08]\n"
wr32 [expr {$CHANNEL*0x10000 + 0xd000}] 0x408 0x0 0x370
puts "RX FIFO almost full threshold after write:[rd32 [expr {$CHANNEL*0x10000 + 0xd000}] 0x400 0x08]\n"

puts "Read RX FIFO almost empty threshold\n"
puts "RX FIFO almost empty threshold before write:[rd32 [expr {$CHANNEL*0x10000 + 0xd000}] 0x400 0x0C]\n"
wr32 [expr {$CHANNEL*0x10000 + 0xd000}] 0x40C 0x0 0x03
puts "RX FIFO almost empty threshold after write:[rd32 [expr {$CHANNEL*0x10000 + 0xd000}] 0x400 0x0C]\n"

#==============================================================================
#                       Configuring MAC Source Address               
#==============================================================================
read_address_inserter
set_address_inserter 1
read_address_inserter

#============================================================================
#		By default the mac address is configure as 48'h22446688AACC
#		if you want to configure different MAC address, please change the
#		value 0x00002244 and 0x6688AACC to the value you want. 
#		
#============================================================================
puts "Write to MAC address on transmit path\n"
puts "MAC ADDRESS before write:[rd32 [expr {$CHANNEL*0x10000 + $MAC_BASE_ADDR}] $ADDRESS_INSERTER_BASE_ADDR 0x04]\n"
puts "MAC ADDRESS before write:[rd32 [expr {$CHANNEL*0x10000 + $MAC_BASE_ADDR}] $ADDRESS_INSERTER_BASE_ADDR 0x08]\n"
wr32 [expr {$CHANNEL*0x10000 + $MAC_BASE_ADDR}] $ADDRESS_INSERTER_BASE_ADDR 0x4 0x6688AACC
wr32 [expr {$CHANNEL*0x10000 + $MAC_BASE_ADDR}] $ADDRESS_INSERTER_BASE_ADDR 0x8 0x00002244
puts "MAC ADDRESS after write:[rd32 [expr {$CHANNEL*0x10000 + $MAC_BASE_ADDR}] $ADDRESS_INSERTER_BASE_ADDR 0x04]\n"
puts "MAC ADDRESS after write:[rd32 [expr {$CHANNEL*0x10000 + $MAC_BASE_ADDR}] $ADDRESS_INSERTER_BASE_ADDR 0x08]\n"


puts "Write to MAC address on receive path\n"
puts "MAC ADDRESS before write:[rd32 [expr {$CHANNEL*0x10000 + $MAC_BASE_ADDR}] $RX_FRAME_DECODER_BASE_ADDR 0x08]\n"
puts "MAC ADDRESS before write:[rd32 [expr {$CHANNEL*0x10000 + $MAC_BASE_ADDR}] $RX_FRAME_DECODER_BASE_ADDR 0x0C]\n"

wr32 [expr {$CHANNEL*0x10000 + $MAC_BASE_ADDR}] $RX_FRAME_DECODER_BASE_ADDR 0x08 0x6688AACC
wr32 [expr {$CHANNEL*0x10000 + $MAC_BASE_ADDR}] $RX_FRAME_DECODER_BASE_ADDR 0x0C 0x00002244

puts "MAC ADDRESS after write:[rd32 [expr {$CHANNEL*0x10000 + $MAC_BASE_ADDR}] $RX_FRAME_DECODER_BASE_ADDR 0x08]\n"
puts "MAC ADDRESS after write:[rd32 [expr {$CHANNEL*0x10000 + $MAC_BASE_ADDR}] $RX_FRAME_DECODER_BASE_ADDR 0x0C]\n"





close_jtag
