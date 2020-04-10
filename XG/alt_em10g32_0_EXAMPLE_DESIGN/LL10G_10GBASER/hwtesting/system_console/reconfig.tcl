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


global jtag_master

#==============================================================================
# TX VOD               
#==============================================================================
proc tx_vod {value} {
    global jtag_master
	
    puts "Configure tx vod\n"
    puts "tx vod before write:[rd32 0x8000 0x400 0x24]\n"
    wr32 0x8000 0x400 0x24 $value
    puts "tx vod after write:[rd32 0x8000 0x400 0x24]\n"
    
}

proc rx_vco {value} {
    global jtag_master
	
    puts "Configure rx vco\n"
    puts "rx vco before write:[rd32 0x8000 0x400 0xDC]\n"
    #wr32 0x8000 0x400 0xDC $value
    puts "rx vco after write:[rd32 0x8000 0x400 0xDC]\n"
    
}

proc rx_acgain {value} {

    global jtag_master
	
    puts "Configure rx ac gain\n"
    puts "ac gain before write:[rd32 0x8000 0x500 0x9C]\n"
    #wr32 0x8000 0x500 0x9C $value
    puts "ac gain after write:[rd32 0x8000 0x500 0x9C]\n"


}

proc rx_variable_gain_amplifier_setting {value} {

    global jtag_master
	
    puts "Configure rx gain setting gain\n"
    puts "rx gain setting before write:[rd32 0x8000 0x500 0x80]\n"
    #wr32 0x8000 0x500 0x80 $value
    puts "rx gain setting after write:[rd32 0x8000 0x500 0x80]\n"


}