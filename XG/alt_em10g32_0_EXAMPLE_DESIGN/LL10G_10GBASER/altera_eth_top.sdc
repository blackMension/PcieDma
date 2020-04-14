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


create_clock -period "322.265625 Mhz" -name ref_clk_clk [get_ports ref_clk_clk]
create_clock -period "125 MHz" -name csr_clk [get_ports csr_clk]
derive_clock_uncertainty
derive_pll_clocks

# Function to constraint pointers
proc alt_em10g32_constraint_ptr_top {from_path from_reg to_path to_reg max_skew max_net_delay} {
    
    
    if { [string equal "quartus_sta" $::TimeQuestInfo(nameofexecutable)] } {
        # Check for instances
        set inst [get_registers -nowarn *${from_path}|${from_reg}\[0\]]
        
        # Check number of instances
        set inst_num [llength [query_collection -report -all $inst]]
        if {$inst_num > 0} {
            # Uncomment line below for debug purpose
            #puts "${inst_num} ${from_path}|${from_reg} instance(s) found"
        } else {
            # Uncomment line below for debug purpose
            #puts "No ${from_path}|${from_reg} instance found"
        }
        
        # Constraint one instance at a time to avoid set_max_skew apply to all instances
        foreach_in_collection each_inst_tmp $inst { 
            set each_inst [get_node_info -name $each_inst_tmp] 

            # Get the path to instance
            regexp "(.*|)(${from_reg})" $each_inst reg_path inst_name reg_name
            
            set_max_skew -from [get_registers ${inst_name}${from_reg}[*]] -to [get_registers *${to_path}|${to_reg}*] $max_skew
            
            set_max_delay -from [get_registers ${inst_name}${from_reg}[*]] -to [get_registers *${to_path}|${to_reg}*] 100ns
            set_min_delay -from [get_registers ${inst_name}${from_reg}[*]] -to [get_registers *${to_path}|${to_reg}*] -100ns
        }
        
    } else {
        set_net_delay -from [get_pins -compatibility_mode *${from_path}|${from_reg}[*]|q] -to [get_registers *${to_path}|${to_reg}*] -max $max_net_delay
    
        
        # Relax the fitter effort
        set_max_delay -from [get_registers *${from_path}|${from_reg}[*]] -to [get_registers *${to_path}|${to_reg}*] 3.2ns
        set_min_delay -from [get_registers *${from_path}|${from_reg}[*]] -to [get_registers *${to_path}|${to_reg}*] -100ns
    }
    
}

# this constraint is need when instantiate altera_eth_avalon_st_adapter
alt_em10g32_constraint_ptr_top  alt_em10g32_avalon_dc_fifo:*  in_wr_ptr_gray  alt_em10g32_avalon_dc_fifo:*|alt_em10g32_dcfifo_synchronizer_bundle:write_crosser|*  din_s1  3ns  2ns
alt_em10g32_constraint_ptr_top  alt_em10g32_avalon_dc_fifo:*  out_rd_ptr_gray  alt_em10g32_avalon_dc_fifo:*|alt_em10g32_dcfifo_synchronizer_bundle:read_crosser|*  din_s1  3ns  2ns
    

# add constraint for JTAG
create_clock -name altera_reserved_tck [get_ports {altera_reserved_tck}] -period 16MHz  
if { [string equal quartus_fit $::TimeQuestInfo(nameofexecutable)] } { set_max_delay -to [get_ports { altera_reserved_tdo } ] 0 }
set_clock_groups -asynchronous -group {altera_reserved_tck}


