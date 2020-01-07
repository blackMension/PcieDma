debImport "-sv" "-f" "filelist.f"
verdiDockWidgetDisplay -dock widgetDock_WelcomePage
verdiWindowResize -win $_Verdi_1 "60" "19" "1844" "858"
verdiWindowWorkMode -win $_Verdi_1 -hardwareDebug
wvCreateWindow
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/home/dalys/MySpace/FPGA/PcieDma/ep_g3x8_avmm256_tb/ep_g3x8_avmm256_tb/sim/synopsys/vcs/PcieDma.fsdb}
wvRestoreSignal -win $_nWave2 \
           "/home/dalys/MySpace/FPGA/PcieDma/ep_g3x8_avmm256_tb/ep_g3x8_avmm256_tb/sim/synopsys/vcs/save.rc" \
           -overWriteAutoAlias on
wvScrollDown -win $_nWave2 49
verdiWindowBeWindow -win $_nWave2
wvResizeWindow -win $_nWave2 60 20 1844 219
wvResizeWindow -win $_nWave2 60 20 1844 559
nsMsgSelect -range {0 2-2}
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
wvResizeWindow -win $_nWave2 60 19 1844 858
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 68991171097.774445 72123352582.171112
wvZoom -win $_nWave2 70533887351.278809 71158847364.661957
wvZoom -win $_nWave2 70774936343.077637 70956091288.041031
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 70719223726.455093 70971958355.092163
wvSetCursor -win $_nWave2 70823652960.278046 -snap {("WrDTS" 4)}
wvSetCursor -win $_nWave2 70823454425.612961 -snap {("WrDTS" 4)}
wvSetCursor -win $_nWave2 70823652960.278046 -snap {("WrDTS" 4)}
wvSetCursor -win $_nWave2 70830006069.560349 -snap {("WrDTS" 4)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 70300579611.566986 71361548861.713486
wvSelectSignal -win $_nWave2 {( "MemoryPort/MemoryPort-2" 4 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "MemoryPort/MemoryPort-1" 4 )} 
wvCollapseGroup -win $_nWave2 "DMA Controller/WrDTS"
wvSelectSignal -win $_nWave2 {( "MemoryPort/MemoryPort-1" 4 )} 
wvExpandGroup -win $_nWave2 "DMA Controller/WrDCS"
wvSelectSignal -win $_nWave2 {( "MemoryPort/MemoryPort-1" 4 )} 
wvZoom -win $_nWave2 66354834615.931114 67634998612.965698
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 7
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvCollapseGroup -win $_nWave2 "DMA Controller/WrDCS"
wvSelectSignal -win $_nWave2 {( "MemoryPort/MemoryPort-1" 4 )} 
wvExpandGroup -win $_nWave2 "DMA Controller/RdDCS"
wvSelectSignal -win $_nWave2 {( "MemoryPort/MemoryPort-1" 4 )} 
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 7
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvExpandGroup -win $_nWave2 "DMA Controller/RdDCM"
wvSelectSignal -win $_nWave2 {( "MemoryPort/MemoryPort-1" 4 )} 
wvScrollDown -win $_nWave2 14
wvCollapseGroup -win $_nWave2 "DMA Controller/RdDCM"
wvSelectSignal -win $_nWave2 {( "MemoryPort/MemoryPort-1" 4 )} 
wvZoom -win $_nWave2 66274887217.844437 68044791879.887535
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvExpandGroup -win $_nWave2 "DMA Controller/RdDCM"
wvSelectSignal -win $_nWave2 {( "MemoryPort/MemoryPort-1" 4 )} 
wvScrollDown -win $_nWave2 7
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 67073722806.853477 72301406647.609222
wvZoom -win $_nWave2 68925793044.226929 69430903108.966095
wvSelectSignal -win $_nWave2 {( "DMA Controller/RdDCM" 2 )} 
srcHBSelect "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst.dma_control_0" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst.dma_control_0" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {8 16 3 1 1 1}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
verdiWindowResize -win $_Verdi_1 "60" "19" "1850" "1016"
wvResizeWindow -win $_nWave2 60 19 1850 1016
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 64360394758.717743 72147773483.971848
wvZoom -win $_nWave2 67648263806.119865 67709150269.960785
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 66711378699.300186 67930060070.940170
wvZoom -win $_nWave2 66921956168.520050 67322148643.960854
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 65305709768.818764 69871470989.797821
wvZoom -win $_nWave2 66979941209.497391 67526119056.885818
wvSelectSignal -win $_nWave2 {( "DMA Controller/RdDCS" 5 )} 
wvSelectSignal -win $_nWave2 {( "DMA Controller/RdDCS" 4 )} 
wvSetCursor -win $_nWave2 66987670544.154778 -snap {("RdDCS" 4)}
wvSetCursor -win $_nWave2 67011584507.762093 -snap {("RdDCS" 4)}
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 66761769645.527985 67308374527.980827
wvSetCursor -win $_nWave2 67010498372.328094 -snap {("RdDCS" 3)}
wvSetCursor -win $_nWave2 67022037333.881042 -snap {("RdDCS" 2)}
wvSetMarker -win $_nWave2 67052811000.000000
wvSetCursor -win $_nWave2 67035713140.166023 -snap {("RdDCS" 2)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 68832106476.227982 71129641932.104828
wvZoom -win $_nWave2 69615316373.610382 70473973095.978745
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 61726428425.175919 73121195824.628616
wvZoom -win $_nWave2 68550816093.645966 69673365501.254288
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 66993377529.294586 67193487978.813499
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 68769764050.680603 -snap {("RdDCM" 6)}
wvZoom -win $_nWave2 68068829872.537735 69630911755.256134
wvZoom -win $_nWave2 68863916116.196671 69235200629.368210
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvExpandGroup -win $_nWave2 "DMA Controller/RdDMATx/Rx"
wvSelectSignal -win $_nWave2 {( "DMA Controller/RdDCS" 4 )} 
wvSetCursor -win $_nWave2 56830688415.596611 -snap {("RdDMATx/Rx" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "DMA Controller/RdDMATx/Rx" 3 )} 
wvSelectSignal -win $_nWave2 {( "DMA Controller/RdDMATx/Rx" 1 )} 
wvZoom -win $_nWave2 65432208433.690460 71091980362.625916
wvZoom -win $_nWave2 67808516116.128113 68928080070.796341
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 68657161349.938499 69199874134.844131
wvZoom -win $_nWave2 68837075517.873703 69103552162.846909
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 70153892934.451294 71180630156.052505
wvZoom -win $_nWave2 70718237161.803909 70952644721.387604
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 67618309487.750885 68503889884.864578
wvZoom -win $_nWave2 67931274569.450851 68121684740.839645
wvSelectSignal -win $_nWave2 {( "DMA Controller/RdDMATx/Rx" 4 )} 
wvSelectSignal -win $_nWave2 {( "DMA Controller/RdDMATx/Rx" 3 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 69624793650.473068 70353682000.058319
wvZoom -win $_nWave2 69844201011.369400 70005479668.861679
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 7
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoom -win $_nWave2 68316872024.796051 69672671966.435608
wvSelectSignal -win $_nWave2 {( "MemoryPort/MemoryPort-1" 5 )} 
wvZoom -win $_nWave2 68852195692.130096 69048304362.343796
wvSetCursor -win $_nWave2 68887461520.237244 -snap {("MemoryPort-1" 5)}
wvSetCursor -win $_nWave2 68893288048.359299 -snap {("MemoryPort-1" 5)}
wvSetCursor -win $_nWave2 68898194598.356827 -snap {("MemoryPort-1" 5)}
wvSetCursor -win $_nWave2 68904941104.603424 -snap {("MemoryPort-1" 5)}
wvSetCursor -win $_nWave2 68909847654.600952 -snap {("MemoryPort-1" 5)}
wvSetCursor -win $_nWave2 68914447545.223648 -snap {("MemoryPort-1" 5)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 67822970165.297523 68262106390.076279
wvSelectSignal -win $_nWave2 {( "DMA Controller/RdDMATx/Rx" 2 )} 
wvCollapseGroup -win $_nWave2 "DMA Controller/RdDMATx/Rx"
wvExpandGroup -win $_nWave2 "DMA Controller/WrDmaRx/Tx"
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "MemoryPort/MemoryPort-1" 5 )} 
wvSetCursor -win $_nWave2 68988432245.352844 -snap {("MemoryPort-1" 4)}
wvZoom -win $_nWave2 66527346663.480980 71559387719.272568
wvSelectSignal -win $_nWave2 {( "MemoryPort/MemoryPort-1" 4 )} 
wvSelectSignal -win $_nWave2 {( "MemoryPort/MemoryPort-1" 6 )} 
wvZoom -win $_nWave2 68675504924.982903 69210577312.463470
wvSetCursor -win $_nWave2 68886354403.705734 -snap {("MemoryPort-1" 3)}
wvSelectSignal -win $_nWave2 {( "MemoryPort/MemoryPort-1" 4 )} 
wvSetCursor -win $_nWave2 68879242417.320145 -snap {("MemoryPort-1" 4)}
srcActiveTrace "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst.onchip_memory2_0.write" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 20300811000 -TraceValue \
           0
nsMsgSwitchTab -tab trace
srcHBSelect \
           "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst.mm_interconnect_1.onchip_memory2_0_s1_translator" \
           -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {580 580 4 5 1 1}
srcHBSelect "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst.mm_interconnect_1" -win \
           $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {778 778 4 5 1 1}
srcHBSelect "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {787 787 7 10 22 5} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {786 786 10 10 6 30}
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 11
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 62283425011.732712 72297101842.643524
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "dut_dma_rd_master_address" -win $_nTrace1
srcAction -pos 779 6 22 -win $_nTrace1 -name "dut_dma_rd_master_address" -ctrlKey \
          off
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {563 563 4 5 1 1}
srcHBSelect \
           "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst.dut.dut.g_avmm_256_dma.avmm_256_dma.altpcieav_256_app.genblk3" \
           -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {552 552 1 12 1 1}
srcHBSelect \
           "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst.dut.dut.g_avmm_256_dma.avmm_256_dma.altpcieav_256_app" \
           -win $_nTrace1
srcHBSelect "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst.dut.dut.g_avmm_256_dma" -win \
           $_nTrace1
srcHBSelect "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst.dut" -win $_nTrace1
srcSetScope -win $_nTrace1 "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst.dut" -delim \
           "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {360 360 4 5 1 1}
srcHBSelect "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst" -win $_nTrace1
srcHBSelect "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst.dut" -win $_nTrace1
srcHBSelect "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst.dut" -win $_nTrace1
srcSetScope -win $_nTrace1 "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst.dut" -delim \
           "."
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {360 360 4 5 1 1}
srcHBSelect "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "dut_dma_rd_master_address" -win $_nTrace1
srcSearchString "dut_dma_rd_master_address" -win $_nTrace1 -next -case
srcSearchString "dut_dma_rd_master_address" -win $_nTrace1 -next -case
srcSearchString "dut_dma_rd_master_address" -win $_nTrace1 -next -case
srcSearchString "dut_dma_rd_master_address" -win $_nTrace1 -next -case
srcSearchString "dut_dma_rd_master_address" -win $_nTrace1 -next -case
srcHBSelect \
           "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst.dut.dut.g_avmm_256_dma.avmm_256_dma.altpcieav_256_app.genblk3.read_data_mover" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst.dut.dut.g_avmm_256_dma.avmm_256_dma.altpcieav_256_app.genblk3.read_data_mover" \
           -delim "."
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 4
wvCollapseGroup -win $_nWave2 "DMA Controller"
wvSelectSignal -win $_nWave2 {( "MemoryPort/MemoryPort-1" 4 )} 
wvSelectGroup -win $_nWave2 {DMA Controller}
wvSelectGroup -win $_nWave2 {G8}
wvRenameGroup -win $_nWave2 {G8} {Data Mover}
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {33 85 1 1 1 1}
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "Data Mover" 8 )} 
wvSelectSignal -win $_nWave2 {( "Data Mover" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 \
           15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {33 36 1 1 1 1}
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {37 43 5 1 32 1}
srcAddSelectedToWave -win $_nTrace1
wvSelectGroup -win $_nWave2 {Data Mover}
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvAddSubGroup -win $_nWave2 {Data Mover-1}
wvRenameGroup -win $_nWave2 {Data Mover/Data Mover-1} {clk&rst}
wvSelectSignal -win $_nWave2 {( "Data Mover" 2 3 )} 
wvSetPosition -win $_nWave2 {("Data Mover" 3)}
wvSetPosition -win $_nWave2 {("Data Mover" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/clk&rst" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Data Mover/clk&rst" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/clk&rst" 2)}
wvSelectGroup -win $_nWave2 {Data Mover}
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvAddSubGroup -win $_nWave2 {Data Mover-2}
wvRenameGroup -win $_nWave2 {Data Mover/Data Mover-2} {Avalon-MM}
wvSelectSignal -win $_nWave2 {( "Data Mover" 5 6 7 8 9 10 )} 
wvSetPosition -win $_nWave2 {("Data Mover" 10)}
wvSetPosition -win $_nWave2 {("Data Mover" 9)}
wvSetPosition -win $_nWave2 {("Data Mover" 6)}
wvSetPosition -win $_nWave2 {("Data Mover" 5)}
wvSetPosition -win $_nWave2 {("Data Mover/clk&rst" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/clk&rst" 1)}
wvSetPosition -win $_nWave2 {("Data Mover/clk&rst" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/Avalon-MM" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Data Mover/Avalon-MM" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/Avalon-MM" 6)}
wvSelectGroup -win $_nWave2 {Data Mover/Avalon-MM}
wvSelectGroup -win $_nWave2 {Data Mover}
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvAddSubGroup -win $_nWave2 {Data Mover-3}
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {46 58 1 1 1 1} -backward
srcAddSelectedToWave -win $_nTrace1
wvSelectGroup -win $_nWave2 {Data Mover/Data Mover-3}
wvRenameGroup -win $_nWave2 {Data Mover/Data Mover-3} {AST Interface}
wvSelectSignal -win $_nWave2 {( "Data Mover/AST Interface" 4 5 6 )} 
wvSelectSignal -win $_nWave2 {( "Data Mover/AST Interface" 5 )} 
wvSelectSignal -win $_nWave2 {( "Data Mover/AST Interface" 6 )} 
wvSelectSignal -win $_nWave2 {( "Data Mover/AST Interface" 4 )} 
wvSelectSignal -win $_nWave2 {( "Data Mover/AST Interface" 4 )} 
wvSelectSignal -win $_nWave2 {( "Data Mover/AST Interface" 3 )} 
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 3)}
wvAddSignal -win $_nWave2 "/BLANK"
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 3)}
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 4)}
wvSelectSignal -win $_nWave2 {( "Data Mover/AST Interface" 6 )} 
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 6)}
wvAddSignal -win $_nWave2 "/BLANK"
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 6)}
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 7)}
wvSelectSignal -win $_nWave2 {( "Data Mover/AST Interface" 6 )} 
wvScrollDown -win $_nWave2 18
wvSelectGroup -win $_nWave2 {Data Mover}
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {60 64 1 1 1 1}
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {65 69 1 1 1 1}
srcAddSelectedToWave -win $_nTrace1
wvSelectGroup -win $_nWave2 {Data Mover}
wvSelectGroup -win $_nWave2 {DMA Controller}
wvSelectGroup -win $_nWave2 {Data Mover}
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvAddSubGroup -win $_nWave2 {Data Mover-4}
wvRenameGroup -win $_nWave2 {Data Mover/Data Mover-4} {TxFifo Interface}
wvSelectSignal -win $_nWave2 {( "Data Mover" 5 6 7 )} 
wvSetPosition -win $_nWave2 {("Data Mover" 7)}
wvSetPosition -win $_nWave2 {("Data Mover" 6)}
wvSetPosition -win $_nWave2 {("Data Mover" 5)}
wvSetPosition -win $_nWave2 {("Data Mover" 4)}
wvSetPosition -win $_nWave2 {("Data Mover" 3)}
wvSetPosition -win $_nWave2 {("Data Mover" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/TxFifo Interface" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Data Mover/TxFifo Interface" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/TxFifo Interface" 3)}
wvSelectSignal -win $_nWave2 {( "Data Mover" 5 )} 
wvSelectGroup -win $_nWave2 {Data Mover}
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvAddSubGroup -win $_nWave2 {Data Mover-5}
wvRenameGroup -win $_nWave2 {Data Mover/Data Mover-5} {PreDecode}
wvSelectSignal -win $_nWave2 {( "Data Mover" 6 7 8 )} 
wvSetPosition -win $_nWave2 {("Data Mover" 8)}
wvSetPosition -win $_nWave2 {("Data Mover" 7)}
wvSetPosition -win $_nWave2 {("Data Mover" 6)}
wvSetPosition -win $_nWave2 {("Data Mover/TxFifo Interface" 3)}
wvSetPosition -win $_nWave2 {("Data Mover/TxFifo Interface" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/TxFifo Interface" 1)}
wvSetPosition -win $_nWave2 {("Data Mover/TxFifo Interface" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/PreDecode" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Data Mover/PreDecode" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/PreDecode" 3)}
wvScrollUp -win $_nWave2 9
wvScrollDown -win $_nWave2 34
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {70 81 3 1 38 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {70 73 3 1 12 1}
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave2 {("Data Mover/PreDecode" 5)}
wvSetPosition -win $_nWave2 {("Data Mover/PreDecode" 4)}
wvSetPosition -win $_nWave2 {("Data Mover/PreDecode" 3)}
wvSetPosition -win $_nWave2 {("Data Mover/PreDecode" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/PreDecode" 1)}
wvSetPosition -win $_nWave2 {("Data Mover/PreDecode" 0)}
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvSetPosition -win $_nWave2 {("Data Mover" 3)}
wvSelectGroup -win $_nWave2 {Data Mover}
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvAddSubGroup -win $_nWave2 {Data Mover-6}
wvRenameGroup -win $_nWave2 {Data Mover/Data Mover-6} {CRA Interface}
wvSelectSignal -win $_nWave2 {( "Data Mover" 2 3 4 )} 
wvSetPosition -win $_nWave2 {("Data Mover" 4)}
wvSetPosition -win $_nWave2 {("Data Mover" 3)}
wvSetPosition -win $_nWave2 {("Data Mover" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 3)}
wvScrollDown -win $_nWave2 8
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {75 82 1 1 1 1}
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {83 86 11 1 27 1}
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "Data Mover/CRA Interface" 1 2 3 4 )} 
wvSelectSignal -win $_nWave2 {( "Data Mover/CRA Interface" 7 )} 
wvSelectSignal -win $_nWave2 {( "Data Mover/CRA Interface" 4 5 6 7 8 9 10 )} 
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 9)}
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 8)}
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 7)}
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 6)}
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 5)}
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 4)}
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 3)}
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 1)}
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 0)}
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvSetPosition -win $_nWave2 {("Data Mover" 7)}
wvSelectGroup -win $_nWave2 {Data Mover}
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvAddSubGroup -win $_nWave2 {Data Mover-7}
wvRenameGroup -win $_nWave2 {Data Mover/Data Mover-7} {Arbiter Interface}
wvSelectSignal -win $_nWave2 {( "Data Mover" 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("Data Mover" 6)}
wvSetPosition -win $_nWave2 {("Data Mover" 5)}
wvSetPosition -win $_nWave2 {("Data Mover" 4)}
wvSetPosition -win $_nWave2 {("Data Mover" 3)}
wvSetPosition -win $_nWave2 {("Data Mover" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 5)}
wvSelectGroup -win $_nWave2 {Data Mover/Arbiter Interface}
wvSelectGroup -win $_nWave2 {Data Mover}
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvAddSubGroup -win $_nWave2 {Data Mover-8}
wvRenameGroup -win $_nWave2 {Data Mover/Data Mover-8} {Rx Compeletion}
wvSelectSignal -win $_nWave2 {( "Data Mover" 8 9 )} 
wvSetPosition -win $_nWave2 {("Data Mover" 9)}
wvSetPosition -win $_nWave2 {("Data Mover" 8)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 4)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 3)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 1)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/Rx Compeletion" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Data Mover/Rx Compeletion" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/Rx Compeletion" 2)}
wvSelectSignal -win $_nWave2 {( "Data Mover/Rx Compeletion" 2 )} 
wvSaveSignal -win $_nWave2 \
           "/home/dalys/MySpace/FPGA/PcieDma/ep_g3x8_avmm256_tb/ep_g3x8_avmm256_tb/sim/synopsys/vcs/save.rc"
wvScrollDown -win $_nWave2 8
wvCollapseGroup -win $_nWave2 "Data Mover/clk&rst"
wvSelectSignal -win $_nWave2 {( "Data Mover/Rx Compeletion" 2 )} 
wvSelectGroup -win $_nWave2 {Data Mover/clk&rst}
wvSetPosition -win $_nWave2 {("Data Mover/clk&rst" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/Avalon-MM" 6)}
wvSetPosition -win $_nWave2 {("Data Mover/Avalon-MM" 4)}
wvSetPosition -win $_nWave2 {("Data Mover/Avalon-MM" 3)}
wvSetPosition -win $_nWave2 {("Data Mover/Avalon-MM" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/Avalon-MM" 1)}
wvSetPosition -win $_nWave2 {("Data Mover/Avalon-MM" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 10)}
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 9)}
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 8)}
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 6)}
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 5)}
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 4)}
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 3)}
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 1)}
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/TxFifo Interface" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/TxFifo Interface" 1)}
wvSetPosition -win $_nWave2 {("Data Mover/TxFifo Interface" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/PreDecode" 3)}
wvSetPosition -win $_nWave2 {("Data Mover/PreDecode" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/PreDecode" 1)}
wvSetPosition -win $_nWave2 {("Data Mover/PreDecode" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 3)}
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 1)}
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 5)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 4)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 3)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 1)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/Rx Compeletion" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/Rx Compeletion" 1)}
wvSetPosition -win $_nWave2 {("Data Mover/Rx Compeletion" 0)}
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvCollapseGroup -win $_nWave2 "Data Mover/Avalon-MM"
wvSelectGroup -win $_nWave2 {Data Mover/clk&rst}
wvSelectGroup -win $_nWave2 {Data Mover/Avalon-MM}
wvSetPosition -win $_nWave2 {("Data Mover/Avalon-MM" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 10)}
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 8)}
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 7)}
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 6)}
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 4)}
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 1)}
wvSetPosition -win $_nWave2 {("Data Mover/TxFifo Interface" 3)}
wvSetPosition -win $_nWave2 {("Data Mover/TxFifo Interface" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/TxFifo Interface" 1)}
wvSetPosition -win $_nWave2 {("Data Mover/TxFifo Interface" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/PreDecode" 3)}
wvSetPosition -win $_nWave2 {("Data Mover/PreDecode" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/PreDecode" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 3)}
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 1)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 5)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 4)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 3)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 1)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/Rx Compeletion" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/Rx Compeletion" 1)}
wvSetPosition -win $_nWave2 {("Data Mover/Rx Compeletion" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/clk&rst" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Data Mover/clk&rst" 0)}
wvSelectGroup -win $_nWave2 {Data Mover/AST Interface}
wvCollapseGroup -win $_nWave2 "Data Mover/AST Interface"
wvSelectGroup -win $_nWave2 {Data Mover/AST Interface}
wvSetPosition -win $_nWave2 {("Data Mover/AST Interface" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/TxFifo Interface" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/TxFifo Interface" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/PreDecode" 3)}
wvSetPosition -win $_nWave2 {("Data Mover/PreDecode" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/PreDecode" 1)}
wvSetPosition -win $_nWave2 {("Data Mover/PreDecode" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 3)}
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 1)}
wvSetPosition -win $_nWave2 {("Data Mover/CRA Interface" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 5)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 4)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 3)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 1)}
wvSetPosition -win $_nWave2 {("Data Mover/Arbiter Interface" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/Rx Compeletion" 2)}
wvSetPosition -win $_nWave2 {("Data Mover/Rx Compeletion" 1)}
wvSetPosition -win $_nWave2 {("Data Mover/Rx Compeletion" 0)}
wvSetPosition -win $_nWave2 {("Data Mover/Avalon-MM" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Data Mover/Avalon-MM" 0)}
wvCollapseGroup -win $_nWave2 "Data Mover/Rx Compeletion"
wvSelectGroup -win $_nWave2 {Data Mover/AST Interface}
wvCollapseGroup -win $_nWave2 "Data Mover/Arbiter Interface"
wvSelectGroup -win $_nWave2 {Data Mover/AST Interface}
wvSelectGroup -win $_nWave2 {Data Mover/CRA Interface}
wvSelectGroup -win $_nWave2 {Data Mover/Rx Compeletion}
wvCollapseGroup -win $_nWave2 "Data Mover/PreDecode"
wvSelectGroup -win $_nWave2 {Data Mover/Rx Compeletion}
wvZoom -win $_nWave2 67364641793.013130 68805233299.571060
wvZoom -win $_nWave2 67935697222.114670 68229672502.186302
wvZoom -win $_nWave2 67986493576.211510 68016603632.262634
wvSetCursor -win $_nWave2 67996969709.863441 -snap {("TxFifo Interface" 2)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetMarker -win $_nWave2 67988811000.000000
wvZoom -win $_nWave2 67789106738.864227 68295351183.995880
wvSetMarker -win $_nWave2 67996811000.000000
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 68863936129.599640 -snap {("MemoryPort-1" 4)}
wvSetCursor -win $_nWave2 67996314688.060486 -snap {("TxFifo Interface" 2)}
wvZoom -win $_nWave2 67856988617.156387 68278133331.480141
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 68665527198.869789 69508475180.628052
wvZoom -win $_nWave2 68814476568.584290 69000333746.735840
wvSetCursor -win $_nWave2 68881030585.463043 -snap {("MemoryPort-1" 6)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvExpandGroup -win $_nWave2 "Data Mover/Avalon-MM"
wvSelectGroup -win $_nWave2 {Data Mover/Rx Compeletion}
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvCollapseGroup -win $_nWave2 "Data Mover/Avalon-MM"
wvSelectGroup -win $_nWave2 {Data Mover/Rx Compeletion}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 61187450501.094604 71433057273.494919
wvZoom -win $_nWave2 67427737972.317398 68981801861.172485
wvCollapseGroup -win $_nWave2 "Data Mover/TxFifo Interface"
wvSelectGroup -win $_nWave2 {Data Mover/Rx Compeletion}
wvSelectSignal -win $_nWave2 {( "Data Mover/CRA Interface" 2 )} 
wvExpandGroup -win $_nWave2 "Data Mover/Rx Compeletion"
wvSelectSignal -win $_nWave2 {( "Data Mover/CRA Interface" 2 )} 
wvCollapseGroup -win $_nWave2 "Data Mover/Rx Compeletion"
wvSelectSignal -win $_nWave2 {( "Data Mover/CRA Interface" 2 )} 
wvExpandGroup -win $_nWave2 "Data Mover/AST Interface"
wvSelectSignal -win $_nWave2 {( "Data Mover/CRA Interface" 2 )} 
wvSetCursor -win $_nWave2 67924698199.473198 -snap {("AST Interface" 2)}
wvSetCursor -win $_nWave2 68003677208.680061 -snap {("AST Interface" 1)}
wvZoom -win $_nWave2 67919837952.752777 68183506337.335693
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 66663032396.365410 67791096040.179108
wvZoom -win $_nWave2 66985840288.178467 67237207089.184647
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 65136874340.734947 73092960046.677094
wvZoom -win $_nWave2 68010769255.620758 69341967333.080978
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvCollapseGroup -win $_nWave2 "MemoryPort/MemoryPort-1"
wvSelectSignal -win $_nWave2 {( "Data Mover/CRA Interface" 2 )} 
wvSelectGroup -win $_nWave2 {Data Mover/AST Interface}
verdiWindowResize -win $_Verdi_1 "60" "19" "1844" "858"
wvResizeWindow -win $_nWave2 60 19 1844 858
verdiWindowResize -win $_Verdi_1 "60" "19" "1648" "862"
wvResizeWindow -win $_nWave2 60 19 1648 862
verdiWindowResize -win $_Verdi_1 "60" "19" "1850" "1016"
wvResizeWindow -win $_nWave2 60 19 1850 1016
wvSetCursor -win $_nWave2 68818126838.634537 -snap {("AST Interface" 10)}
wvSetCursor -win $_nWave2 68818126838.634537 -snap {("AST Interface" 8)}
wvSetCursor -win $_nWave2 68857677680.654465 -snap {("AST Interface" 9)}
srcHBSelect "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst.dut.dut.g_avmm_256_dma" -win \
           $_nTrace1
srcHBSelect \
           "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst.dut.dut.g_avmm_256_dma.avmm_256_dma.altpcieav_256_app.genblk5.write_data_mover_2" \
           -win $_nTrace1
srcHBSelect \
           "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst.dut.dut.g_avmm_256_dma.avmm_256_dma.altpcieav_256_app.genblk5.write_data_mover_2" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "ep_g3x8_avmm256_tb.ep_g3x8_avmm256_inst.dut.dut.g_avmm_256_dma.avmm_256_dma.altpcieav_256_app.genblk5.write_data_mover_2" \
           -delim "."
wvCollapseGroup -win $_nWave2 "Data Mover/AST Interface"
wvSelectGroup -win $_nWave2 {Data Mover/AST Interface}
wvSetPosition -win $_nWave2 {("Data Mover" 0)}
wvCollapseGroup -win $_nWave2 "Data Mover"
wvSelectGroup -win $_nWave2 {Data Mover}
wvExpandGroup -win $_nWave2 "Data Mover"
wvSelectGroup -win $_nWave2 {Data Mover}
wvRenameGroup -win $_nWave2 {Data Mover} {Read Data Mover}
wvCollapseGroup -win $_nWave2 "Read Data Mover"
wvSelectGroup -win $_nWave2 {Read Data Mover}
wvSelectGroup -win $_nWave2 {G9}
wvExpandGroup -win $_nWave2 "Read Data Mover"
wvSelectGroup -win $_nWave2 {G9}
wvSelectGroup -win $_nWave2 {Read Data Mover}
wvSelectGroup -win $_nWave2 {G9}
wvSelectGroup -win $_nWave2 {Read Data Mover}
wvSelectSignal -win $_nWave2 {( "Read Data Mover/CRA Interface" 1 )} 
wvSelectSignal -win $_nWave2 {( "Read Data Mover/CRA Interface" 2 )} 
wvExpandGroup -win $_nWave2 "Read Data Mover/clk&rst"
wvSelectSignal -win $_nWave2 {( "Read Data Mover/CRA Interface" 2 )} 
wvCollapseGroup -win $_nWave2 "Read Data Mover/clk&rst"
wvSelectSignal -win $_nWave2 {( "Read Data Mover/CRA Interface" 2 )} 
wvCollapseGroup -win $_nWave2 "Read Data Mover"
wvSelectGroup -win $_nWave2 {G9}
wvRenameGroup -win $_nWave2 {G9} {Write Data Mover}
wvExpandGroup -win $_nWave2 "Read Data Mover"
wvSelectGroup -win $_nWave2 {Write Data Mover}
wvCollapseGroup -win $_nWave2 "Read Data Mover/CRA Interface"
wvSelectGroup -win $_nWave2 {Write Data Mover}
wvSelectGroup -win $_nWave2 {Read Data Mover/TxFifo Interface}
wvSelectGroup -win $_nWave2 {Write Data Mover}
wvSetPosition -win $_nWave2 {("Write Data Mover" 0)}
wvSetPosition -win $_nWave2 {("Write Data Mover" 0)}
wvAddSubGroup -win $_nWave2 {Write Data Mover-1}
wvRenameGroup -win $_nWave2 {Write Data Mover/Write Data Mover-1} {clk&rst}
wvSetPosition -win $_nWave2 {("Write Data Mover" 0)}
wvSetPosition -win $_nWave2 {("Write Data Mover" 0)}
wvAddSubGroup -win $_nWave2 {Write Data Mover-2}
wvRenameGroup -win $_nWave2 {Write Data Mover/Write Data Mover-2} {Avalon-MM}
wvSetPosition -win $_nWave2 {("Write Data Mover" 0)}
wvSetPosition -win $_nWave2 {("Write Data Mover" 0)}
wvAddSubGroup -win $_nWave2 {Write Data Mover-3}
wvRenameGroup -win $_nWave2 {Write Data Mover/Write Data Mover-3} {AST Interface}
wvSetPosition -win $_nWave2 {("Write Data Mover" 0)}
wvSetPosition -win $_nWave2 {("Write Data Mover" 0)}
wvAddSubGroup -win $_nWave2 {Write Data Mover-4}
verdiWindowResize -win $_Verdi_1 "749" "19" "900" "700"
verdiWindowResize -win $_Verdi_1 "1910" -8 "1920" "1043"
wvSelectGroup -win $_nWave2 {Write Data Mover/Write Data Mover-4}
wvRenameGroup -win $_nWave2 {Write Data Mover/Write Data Mover-4} \
           {Pcie Write DMA master Port}
wvSelectGroup -win $_nWave2 {Read Data Mover/Arbiter Interface}
wvSelectGroup -win $_nWave2 {Write Data Mover/Avalon-MM}
wvSelectGroup -win $_nWave2 {Write Data Mover}
wvSetPosition -win $_nWave2 {("Write Data Mover" 0)}
wvSetPosition -win $_nWave2 {("Write Data Mover" 0)}
wvAddSubGroup -win $_nWave2 {Write Data Mover-5}
wvRenameGroup -win $_nWave2 {Write Data Mover/Write Data Mover-5} \
           {Arbitration Interface}
wvSelectGroup -win $_nWave2 {Write Data Mover}
wvSetPosition -win $_nWave2 {("Write Data Mover" 0)}
wvSetPosition -win $_nWave2 {("Write Data Mover" 0)}
wvAddSubGroup -win $_nWave2 {Write Data Mover-6}
wvRenameGroup -win $_nWave2 {Write Data Mover/Write Data Mover-6} \
           {Descriptor Done Status}
wvSelectGroup -win $_nWave2 {Write Data Mover}
wvSetPosition -win $_nWave2 {("Write Data Mover" 0)}
wvSetPosition -win $_nWave2 {("Write Data Mover" 0)}
wvAddSubGroup -win $_nWave2 {Write Data Mover-7}
wvRenameGroup -win $_nWave2 {Write Data Mover/Write Data Mover-7} \
           {Tx Output Fifo Status}
wvSelectGroup -win $_nWave2 {Write Data Mover/Avalon-MM}
wvRenameGroup -win $_nWave2 {Write Data Mover/Avalon-MM} {Side FIFO}
wvSelectGroup -win $_nWave2 {Write Data Mover/Tx Output Fifo Status}
wvSelectGroup -win $_nWave2 {Write Data Mover}
wvSetPosition -win $_nWave2 {("Write Data Mover" 0)}
wvSetPosition -win $_nWave2 {("Write Data Mover" 0)}
wvAddSubGroup -win $_nWave2 {Write Data Mover-8}
wvRenameGroup -win $_nWave2 {Write Data Mover/Write Data Mover-8} {HPRXM Request}
srcDeselectAll -win $_nTrace1
srcSelect -signal "HPRxmPending_i" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave2 {("Write Data Mover/Tx Output Fifo Status" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {53 56 11 1 13 1} -backward
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave2 {("Write Data Mover/Descriptor Done Status" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {60 62 11 1 15 1}
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave2 {("Write Data Mover/Arbitration Interface" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {49 51 5 1 23 1}
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave2 {("Write Data Mover/Pcie Write DMA master Port" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {24 35 5 1 20 1}
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 18
wvSetPosition -win $_nWave2 {("Write Data Mover/AST Interface" 0)}
wvSelectGroup -win $_nWave2 {Write Data Mover/AST Interface}
wvRenameGroup -win $_nWave2 {Write Data Mover/AST Interface} {AST Tx Interface}
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {37 39 11 1 1 1}
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave2 {("Write Data Mover/Side FIFO" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {41 44 11 1 13 1}
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave2 3
wvSelectGroup -win $_nWave2 {Write Data Mover/clk&rst}
wvSetPosition -win $_nWave2 {("Write Data Mover/clk&rst" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {19 21 5 1 24 1}
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave2 {("Write Data Mover/clk&rst" 0)}
wvCollapseGroup -win $_nWave2 "Write Data Mover/clk&rst"
wvSelectGroup -win $_nWave2 {Write Data Mover/clk&rst}
wvSetPosition -win $_nWave2 {("Write Data Mover/Pcie Write DMA master Port" 10)}
wvSetPosition -win $_nWave2 {("Write Data Mover/Pcie Write DMA master Port" 8)}
wvSetPosition -win $_nWave2 {("Write Data Mover/Pcie Write DMA master Port" 7)}
wvSetPosition -win $_nWave2 {("Write Data Mover/Pcie Write DMA master Port" 6)}
wvSetPosition -win $_nWave2 {("Write Data Mover/Pcie Write DMA master Port" 5)}
wvSetPosition -win $_nWave2 {("Write Data Mover/Pcie Write DMA master Port" 4)}
wvSetPosition -win $_nWave2 {("Write Data Mover/Pcie Write DMA master Port" 3)}
wvSetPosition -win $_nWave2 {("Write Data Mover/Pcie Write DMA master Port" 2)}
wvSetPosition -win $_nWave2 {("Write Data Mover/Pcie Write DMA master Port" 1)}
wvSetPosition -win $_nWave2 {("Write Data Mover/Pcie Write DMA master Port" 0)}
wvSetPosition -win $_nWave2 {("Write Data Mover/Arbitration Interface" 2)}
wvSetPosition -win $_nWave2 {("Write Data Mover/Arbitration Interface" 1)}
wvSetPosition -win $_nWave2 {("Write Data Mover/Arbitration Interface" 0)}
wvSetPosition -win $_nWave2 {("Write Data Mover/Descriptor Done Status" 2)}
wvSetPosition -win $_nWave2 {("Write Data Mover/Descriptor Done Status" 1)}
wvSetPosition -win $_nWave2 {("Write Data Mover/Descriptor Done Status" 0)}
wvSetPosition -win $_nWave2 {("Write Data Mover/Tx Output Fifo Status" 3)}
wvSetPosition -win $_nWave2 {("Write Data Mover/Tx Output Fifo Status" 2)}
wvSetPosition -win $_nWave2 {("Write Data Mover/Tx Output Fifo Status" 1)}
wvSetPosition -win $_nWave2 {("Write Data Mover/Tx Output Fifo Status" 0)}
wvSetPosition -win $_nWave2 {("Write Data Mover/HPRXM Request" 1)}
wvSetPosition -win $_nWave2 {("Write Data Mover/HPRXM Request" 0)}
wvSetPosition -win $_nWave2 {("Write Data Mover" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("Write Data Mover" 0)}
wvScrollUp -win $_nWave2 39
wvScrollUp -win $_nWave2 18
wvCollapseGroup -win $_nWave2 "Write Data Mover/HPRXM Request"
wvSelectGroup -win $_nWave2 {Write Data Mover/clk&rst}
wvCollapseGroup -win $_nWave2 "Write Data Mover/Tx Output Fifo Status"
wvSelectGroup -win $_nWave2 {Write Data Mover/clk&rst}
wvCollapseGroup -win $_nWave2 "Write Data Mover/Descriptor Done Status"
wvSelectGroup -win $_nWave2 {Write Data Mover/clk&rst}
wvCollapseGroup -win $_nWave2 "Write Data Mover/Arbitration Interface"
wvSelectGroup -win $_nWave2 {Write Data Mover/clk&rst}
wvCollapseGroup -win $_nWave2 "Write Data Mover/Pcie Write DMA master Port"
wvSelectGroup -win $_nWave2 {Write Data Mover/clk&rst}
wvCollapseGroup -win $_nWave2 "Write Data Mover/AST Tx Interface"
wvSelectGroup -win $_nWave2 {Write Data Mover/clk&rst}
wvCollapseGroup -win $_nWave2 "Write Data Mover/Side FIFO"
wvSelectGroup -win $_nWave2 {Write Data Mover/clk&rst}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSaveSignal -win $_nWave2 \
           "/home/dalys/MySpace/FPGA/PcieDma/ep_g3x8_avmm256_tb/ep_g3x8_avmm256_tb/sim/synopsys/vcs/save.rc"
wvCollapseGroup -win $_nWave2 "Read Data Mover"
wvSelectGroup -win $_nWave2 {Write Data Mover/clk&rst}
wvSelectGroup -win $_nWave2 {Write Data Mover}
wvSelectGroup -win $_nWave2 {Read Data Mover}
wvSetPosition -win $_nWave2 {("Read Data Mover" 0)}
wvSelectGroup -win $_nWave2 {G10}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvCollapseGroup -win $_nWave2 "MemoryPort/MemoryPort-2"
wvSelectGroup -win $_nWave2 {G10}
wvSelectSignal -win $_nWave2 {( "MemoryPort" 17 )} 
wvExpandGroup -win $_nWave2 "Read Data Mover"
wvSelectSignal -win $_nWave2 {( "MemoryPort" 17 )} 
wvCollapseGroup -win $_nWave2 "Read Data Mover"
wvSelectSignal -win $_nWave2 {( "MemoryPort" 17 )} 
wvSelectGroup -win $_nWave2 {Read Data Mover}
verdiWindowResize -win $_Verdi_1 "60" "19" "1850" "1016"
wvSelectGroup -win $_nWave2 {G10}
