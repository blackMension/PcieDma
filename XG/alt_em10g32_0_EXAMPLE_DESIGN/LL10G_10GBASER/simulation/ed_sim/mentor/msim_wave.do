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


onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider tb_top
add wave -noupdate /tb_top/clk_156p25
add wave -noupdate /tb_top/clk_ref
add wave -noupdate /tb_top/clk_50
add wave -noupdate /tb_top/reset
add wave -noupdate /tb_top/avalon_mm_csr_clk
add wave -noupdate /tb_top/avalon_st_rx_clk
add wave -noupdate /tb_top/avalon_st_tx_clk
add wave -noupdate /tb_top/avalon_mm_csr_address
add wave -noupdate /tb_top/avalon_mm_csr_read
add wave -noupdate /tb_top/avalon_mm_csr_readdata
add wave -noupdate /tb_top/avalon_mm_csr_write
add wave -noupdate /tb_top/avalon_mm_csr_writedata
add wave -noupdate /tb_top/avalon_mm_csr_waitrequest
add wave -noupdate -divider mac
add wave -noupdate {/tb_top/dut/CHANNEL[0]/wrapper_inst/mac_inst/avalon_st_tx_ready}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/wrapper_inst/mac_inst/avalon_st_tx_data}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/wrapper_inst/mac_inst/avalon_st_tx_empty}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/wrapper_inst/mac_inst/avalon_st_tx_startofpacket}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/wrapper_inst/mac_inst/avalon_st_tx_endofpacket}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/wrapper_inst/mac_inst/avalon_st_tx_error}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/wrapper_inst/mac_inst/avalon_st_tx_valid}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/wrapper_inst/mac_inst/avalon_st_rx_valid}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/wrapper_inst/mac_inst/avalon_st_rx_data}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/wrapper_inst/mac_inst/avalon_st_rx_ready}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/wrapper_inst/mac_inst/avalon_st_rx_empty}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/wrapper_inst/mac_inst/avalon_st_rx_startofpacket}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/wrapper_inst/mac_inst/avalon_st_rx_endofpacket}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/wrapper_inst/mac_inst/avalon_st_rx_error}
add wave -noupdate -divider {Packet Generator}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/clk}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/avl_mm_read}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/avl_mm_readdata}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/avl_mm_write}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/avl_mm_baddress}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/avl_mm_writedata}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/avl_mm_waitrequest}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/GEN/address}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/GEN/write}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/GEN/read}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/GEN/writedata}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/GEN/number_packet}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/GEN/start_reg}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/GEN/start}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/GEN/tx_data}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/GEN/tx_valid}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/GEN/tx_sop}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/GEN/tx_eop}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/GEN/tx_empty}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/GEN/tx_error}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/GEN/tx_ready}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/GEN/pkt_length}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/GEN/config_setting}
add wave -noupdate -divider {Packet Monitor}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/MON/avalon_mm_address}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/MON/avalon_mm_read}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/MON/avalon_mm_readdata}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/MON/avalon_mm_waitrequest}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/MON/avalon_mm_write}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/MON/avalon_mm_writedata}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/MON/avalon_st_rx_data}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/MON/avalon_st_rx_empty}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/MON/avalon_st_rx_eop}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/MON/avalon_st_rx_error}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/MON/avalon_st_rx_ready}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/MON/avalon_st_rx_sop}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/MON/avalon_st_rx_valid}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/MON/gen_lpbk}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/MON/mac_rx_status_data}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/MON/mac_rx_status_error}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/MON/mac_rx_status_valid}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/MON/mon_active}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/MON/mon_done}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/MON/mon_error}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/MON/reset}
add wave -noupdate {/tb_top/dut/CHANNEL[0]/gen_mon_inst/MON/stop_mon}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {51660502 ps} 1} {{Cursor 3} {51797179 ps} 1}
quietly wave cursor active 2
configure wave -namecolwidth 415
configure wave -valuecolwidth 175
configure wave -justifyvalue left
configure wave -signalnamewidth 2
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {51781263 ps} {51896868 ps}
