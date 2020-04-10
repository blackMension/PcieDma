verdiWindowResize -win $_Verdi_1 "0" "31" "1920" "1023"
debImport "-sv" "-f" "filelist.f"
verdiDockWidgetDisplay -dock widgetDock_WelcomePage
verdiWindowWorkMode -win $_Verdi_1 -hardwareDebug
srcHBSelect "tb_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_top" -delim "."
wvCreateWindow
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/home/dai/WorkStation/fpga/project/intel/IPs/XG/alt_em10g32_0_EXAMPLE_DESIGN/LL10G_10GBASER/simulation/ed_sim/synopsys/vcs/IpSim.fsdb}
srcHBSelect "tb_top.dut" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_top.dut" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "wrapper_inst" -win $_nTrace1
srcAction -pos 287 2 4 -win $_nTrace1 -name "wrapper_inst" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "tb_top.dut.wrapper_inst" -win $_nTrace1
srcHBSelect "tb_top.dut" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {301 308 1 1 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "mac_in_ready\[0\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mac_in_error\[0\]" -win $_nTrace1
srcSelect -signal "mac_in_ready\[0\]" -win $_nTrace1
srcSelect -signal "mac_in_empty\[0\]" -win $_nTrace1
srcSelect -signal "mac_in_data\[0\]" -win $_nTrace1
srcSelect -signal "mac_in_valid\[0\]" -win $_nTrace1
srcSelect -signal "mac_in_endofpacket\[0\]" -win $_nTrace1
srcSelect -signal "mac_in_startofpacket\[0\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "avalon_st_tx_startofpacket" -win $_nTrace1
srcSelect -signal "avalon_st_tx_endofpacket" -win $_nTrace1
srcSelect -signal "avalon_st_tx_valid" -win $_nTrace1
srcSelect -signal "avalon_st_tx_data" -win $_nTrace1
srcSelect -signal "avalon_st_tx_empty" -win $_nTrace1
srcSelect -signal "avalon_st_tx_ready" -win $_nTrace1
srcSelect -signal "avalon_st_tx_error" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "wrapper_inst" -win $_nTrace1
srcAction -pos 287 2 6 -win $_nTrace1 -name "wrapper_inst" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {33 40 6 1 3 1} -backward
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "tb_top.dut.wrapper_inst" -win $_nTrace1
srcHBSelect "tb_top.dut" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mac_in_valid\[portid\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "mac_in_data\[portid\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 51822399331.343285 61125827104.477615
wvZoom -win $_nWave2 54495399101.979340 55073970480.905602
wvZoom -win $_nWave2 54694013157.422302 54789722104.433731
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -inst "wrapper_inst" -win $_nTrace1
srcAction -pos 361 2 3 -win $_nTrace1 -name "wrapper_inst" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "tb_top.dut.wrapper_inst" -win $_nTrace1
srcHBSelect "tb_top.dut" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "wrapper_inst" -win $_nTrace1
srcAction -pos 361 2 7 -win $_nTrace1 -name "wrapper_inst" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "avalon_st_tx_valid" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "xgmii_tx_control" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "xgmii_tx_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiDockWidgetMaximize -dock widgetDock_MTB_SOURCE_TAB_1
verdiDockWidgetRestore -dock widgetDock_MTB_SOURCE_TAB_1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {288 288 3 4 1 1}
srcHBSelect "tb_top.dut" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "tb_top.dut.wrapper_inst" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_top.dut.wrapper_inst" -delim "."
srcBackwardHistory -win $_nTrace1
srcHBSelect "tb_top.dut.wrapper_inst" -win $_nTrace1
srcHBSelect "tb_top.dut" -win $_nTrace1
srcHBSelect "tb_top.dut.wrapper_inst" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_top.dut.wrapper_inst" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "avalon_st_txstatus_error" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "avalon_st_pause_data" -win $_nTrace1
srcAction -pos 50 11 10 -win $_nTrace1 -name "avalon_st_pause_data" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "tb_top.dut.wrapper_inst.mac_inst" -win $_nTrace1
srcHBSelect "tb_top.dut.wrapper_inst" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "avalon_st_txstatus_valid" -win $_nTrace1
srcAction -pos 51 5 13 -win $_nTrace1 -name "avalon_st_txstatus_valid" -ctrlKey \
          off
srcDeselectAll -win $_nTrace1
srcSelect -signal "avalon_st_txstatus_valid" -win $_nTrace1
srcAction -pos 317 5 14 -win $_nTrace1 -name "avalon_st_txstatus_valid" -ctrlKey \
          off
srcBackwardHistory -win $_nTrace1
srcHBSelect "tb_top.dut" -win $_nTrace1
srcHBSelect "tb_top.dut" -win $_nTrace1
wvSetCursor -win $_nWave2 54566639310.029175 -snap {("G2" 0)}
wvZoom -win $_nWave2 54120949885.140129 56437011170.033615
wvZoom -win $_nWave2 55520957079.739792 55809024403.731522
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 38924465373.134331 72082343283.582092
wvZoom -win $_nWave2 52554662698.258087 59998688771.436966
wvZoom -win $_nWave2 55142480219.958328 56392409971.051796
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 90823752537.313446 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 65835206865.671646 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "ref_clk_clk" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvZoom -win $_nWave2 18942183184.079601 25468481592.039799
wvZoom -win $_nWave2 21779174842.754189 22444792342.073513
wvZoom -win $_nWave2 22080938000.090664 22122746064.413582
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "mac_csr_read_32\[0\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 2)}
srcHBSelect "tb_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_top" -delim "."
srcHBSelect "tb_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_top" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -inst "U_AVALON_DRIVER" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "U_AVALON_DRIVER" -win $_nTrace1
srcAction -pos 273 3 9 -win $_nTrace1 -name "U_AVALON_DRIVER" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "tb_top" -win $_nTrace1
srcHBSelect "tb_top" -win $_nTrace1
wvSetCursor -win $_nWave2 21263184741.948215 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
