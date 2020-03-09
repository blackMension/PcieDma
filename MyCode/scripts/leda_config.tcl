rule_deselect -all
rule_select -rule DCHDL_115 -ruleset RTL -policy DC
rule_select -rule DCHDL_178 -ruleset RTL -policy DC
rule_select -rule DCVER_192 -ruleset RTL -policy DC
rule_select -rule DCVER_274 -ruleset RTL -policy DC
rule_select -rule DCVHDL_165 -ruleset RTL -policy DC
rule_select -rule DFT_021 -ruleset INFORMATIONAL -policy DFT
rule_select -rule DFT_022 -ruleset INFORMATIONAL -policy DFT
rule_select -rule FM_2_10 -ruleset SIMULATION_MISMATCH -policy FORMALITY
rule_select -rule FM_2_12 -ruleset SIMULATION_MISMATCH -policy FORMALITY
rule_select -rule FM_2_13 -ruleset SIMULATION_MISMATCH -policy FORMALITY
rule_select -rule FM_2_18 -ruleset SIMULATION_MISMATCH -policy FORMALITY
rule_select -rule FM_2_4 -ruleset SIMULATION_MISMATCH -policy FORMALITY
rule_select -rule FM_2_7 -ruleset SIMULATION_MISMATCH -policy FORMALITY
rule_select -rule FM_2_9 -ruleset SIMULATION_MISMATCH -policy FORMALITY
rule_select -rule B_1204 -ruleset CLOCKS -policy LEDA
rule_select -rule C_1201 -ruleset CLOCKS -policy LEDA
rule_select -rule C_1203 -ruleset CLOCKS -policy LEDA
rule_select -rule C_1204 -ruleset CLOCKS -policy LEDA
rule_select -rule B_3010 -ruleset DATA_TYPES -policy LEDA
rule_select -rule B_1001 -ruleset DESIGN_STRUCTURE -policy LEDA
rule_select -rule B_1002 -ruleset DESIGN_STRUCTURE -policy LEDA
#rule_select -rule B_1011 -ruleset DESIGN_STRUCTURE -policy LEDA
rule_select -rule C_1000 -ruleset DESIGN_STRUCTURE -policy LEDA
rule_select -rule C_1001 -ruleset DESIGN_STRUCTURE -policy LEDA
rule_select -rule C_1005 -ruleset DESIGN_STRUCTURE -policy LEDA
rule_select -rule C_1007 -ruleset DESIGN_STRUCTURE -policy LEDA
rule_select -rule C_1009 -ruleset DESIGN_STRUCTURE -policy LEDA
rule_select -rule C_1406 -ruleset RESETS -policy LEDA
rule_select -rule B_3203 -ruleset EXPRESSIONS -policy LEDA
rule_select -rule B_3208 -ruleset EXPRESSIONS -policy LEDA
rule_select -rule B_3209 -ruleset EXPRESSIONS -policy LEDA
rule_select -rule B_2001 -ruleset RTL_SYNTHESIS -policy LEDA
rule_select -rule B_2011 -ruleset RTL_SYNTHESIS -policy LEDA
#rule_select -rule B_3602 -ruleset STATE_MACHINES -policy LEDA
rule_select -rule B_3604 -ruleset STATE_MACHINES -policy LEDA
#rule_select -rule B_3605_A -ruleset STATE_MACHINES -policy LEDA
rule_select -rule B_3605_B -ruleset STATE_MACHINES -policy LEDA
#rule_select -rule B_3607 -ruleset STATE_MACHINES -policy LEDA
rule_select -rule B_3408 -ruleset STATEMENTS -policy LEDA
rule_select -rule B_3409 -ruleset STATEMENTS -policy LEDA
rule_select -rule B_3410 -ruleset STATEMENTS -policy LEDA
rule_select -rule B_3416 -ruleset STATEMENTS -policy LEDA
rule_select -rule B_3417 -ruleset STATEMENTS -policy LEDA
rule_select -rule B_3419 -ruleset STATEMENTS -policy LEDA
rule_select -rule R_521_10 -ruleset BASIC_CODING_PRACTICES -policy RMM_RTL_CODING_GUIDELINES
#disable VHDL or Verilog reserved words rule
#rule_select -rule R_529_1 -ruleset BASIC_CODING_PRACTICES -policy RMM_RTL_CODING_GUIDELINES
#rule_select -rule G_546_1 -ruleset CLOCKS_AND_RESETS -policy RMM_RTL_CODING_GUIDELINES
rule_select -rule G_551_1_B -ruleset CODING_FOR_SYNTHESIS -policy RMM_RTL_CODING_GUIDELINES

#disabled rules
rule_deselect -policy LEDA -ruleset RESETS -rule C_1406
#C_1406 : Register with no reset/set is detected 

rule_deselect -policy LEDA -ruleset DESIGN_STRUCTURE -rule B_1001
#B_1001 : Reading from output port frPktReadEopCnt

#enable rules
rule_select -verilog -policy LEDA -ruleset DESIGN_STRUCTURE -rule C_1006
#C_1006 : Top-level inputs are not registered

#enable rules
rule_select -verilog -policy FORMALITY -ruleset SIMULATION_MISMATCH -rule FM_2_1A
#FM_2_1A : Redundant signals in the sensitivity list
rule_select -verilog -policy FORMALITY -ruleset SIMULATION_MISMATCH -rule FM_2_1B
#FM_2_1B : Missing signals in the sensitivity list
rule_select -verilog -policy FORMALITY -ruleset SIMULATION_MISMATCH -rule FM_2_15
#FM_2_15 : Use only non-blocking assignments in sequential always block
rule_select -verilog -policy FORMALITY -ruleset SIMULATION_MISMATCH -rule FM_2_16
#FM_2_16 : Use only blocking assignments in combinational always block
rule_select -verilog -policy FORMALITY -ruleset SIMULATION_MISMATCH -rule FM_2_17
#FM_2_17 : Avoid operand size mismatch assignments
rule_select -verilog -policy FORMALITY -ruleset SIMULATION_MISMATCH -rule FM_2_22
#FM_2_22 : Possible range overflow
rule_select -verilog -policy FORMALITY -ruleset SIMULATION_MISMATCH -rule FM_2_23
#FM_2_23 : Non-driven output ports or signals detected
rule_select -verilog -policy VERILINT -ruleset CHECKER_ERROR -rule E267
#E267 : Range index out of bound
rule_select -verilog -policy VERILINT -ruleset CHECKER_ERROR -rule E268
#E268 : Index out of bound

#enable rules
rule_select -verilog -policy DC -ruleset RTL -rule DCHDL_175
#DCHDL_175 : Clock variable is being used as data
rule_select -verilog -policy DC -ruleset RTL -rule DCVER_143
#DCVER_143 : Blocking delays and nonblocking assignments are not allowed in the same process
rule_select -verilog -policy DC -ruleset RTL -rule DCVER_256
#DCVER_256 : Illegal part selection
# rule_select -verilog -policy LEDA -ruleset EXPRESSIONS -rule B_3200
#B_3200 : Unequal length operand in bit/arithmetic operator
rule_select -verilog -policy LEDA -ruleset EXPRESSIONS -rule B_3201
#B_3201 : Unequal length operand in comparison operator
rule_select -verilog -policy LEDA -ruleset EXPRESSIONS -rule B_3211
#B_3211 : Unequal length between case expression and case item condition in case, casex or casez
#rule_select -verilog -policy LEDA -ruleset EXPRESSIONS -rule B_3212
#B_3212 : Signed and unsigned operands should not be used in same operation


#enable rules
rule_select -verilog -policy DESIGN -ruleset LANGUAGE -rule NTL_LAN15
#NTL_LAN15 Unused signals
rule_select -verilog -policy DESIGN -ruleset STRUCTURE -rule NTL_STR19
#NTL_STR19 Detected multiply-driven signal
rule_select -verilog -policy LEDA -ruleset DESIGN_STRUCTURE -rule C_1003
#C_1003 Latch detected in design (inferred or instantiated)
rule_select -verilog -policy LEDA -ruleset DESIGN_STRUCTURE -rule C_1008
#C_1008 Multiple drivers to a signal detected

#enable rules
rule_select -policy RMM_RTL_CODING_GUIDELINES -ruleset CLOCKS_AND_RESETS -rule G_541_1
#G_541_1 Avoid using both positive-edge and negative-edge triggered flip-flops in your design 
rule_select -policy DESIGN -ruleset RESETS -rule NTL_RST04
#NTL_RST04 Don't use one reset signal for both asynchronous reset and synchronous reset
rule_select -policy DESIGN -ruleset RESETS -rule NTL_RST07
#NTL_RST07 Reset/set must not be used as data
rule_select -policy LEDA -ruleset RESETS -rule B_1400
#B_1400 Asynchronous reset/set/load signal is not a primary input to the current unit
rule_select -policy LEDA -ruleset RESETS -rule B_1406
#B_1406 synchronous resets in this unit detected

#enable rules
rule_select -policy DESIGN -ruleset CONNECTIVITY -rule NTL_CON01
# Message: Unconnected top-level input port
rule_select -policy DESIGN -ruleset CONNECTIVITY -rule NTL_CON02
# Message: Unconnected top-level output port
rule_select -policy DESIGN -ruleset CONNECTIVITY -rule NTL_CON08
# Message: Floating output pin
rule_select -policy DESIGN -ruleset CONNECTIVITY -rule NTL_CON12
# Message: Undriven net
rule_select -policy DESIGN -ruleset CONNECTIVITY -rule NTL_CON12A
rule_select -policy DESIGN -ruleset CONNECTIVITY -rule NTL_CON12C

rule_select -policy DESIGN -ruleset CONNECTIVITY -rule NTL_CON13
# Message: Non-driving net
rule_select -policy DESIGN -ruleset CONNECTIVITY -rule NTL_CON13A
rule_select -policy DESIGN -ruleset CONNECTIVITY -rule NTL_CON13B
rule_select -policy DESIGN -ruleset CONNECTIVITY -rule NTL_CON13C

rule_select -policy DESIGN -ruleset CONNECTIVITY -rule NTL_CON18
# Message: There is output port, but it is not connected internally
rule_select -policy DESIGN -ruleset CONNECTIVITY -rule NTL_CON22
# Message: Incorrect connection: Module input is connected to output of its sub-module
rule_select -policy DESIGN -ruleset CONNECTIVITY -rule NTL_CON23
# Message: Incorrect connection: Module output is connected to input of its sub-module

