module ep_g3x8_avmm256_dma_control_0 (
		input  wire [81:0]  MsiInterface_i,       // MsiInterface.msi_intfc
		output wire [63:0]  RdDCMAddress_o,       // RdDCM_Master.address
		output wire         RdDCMWrite_o,         //             .write
		output wire [31:0]  RdDCMWriteData_o,     //             .writedata
		output wire         RdDCMRead_o,          //             .read
		output wire [3:0]   RdDCMByteEnable_o,    //             .byteenable
		input  wire         RdDCMWaitRequest_i,   //             .waitrequest
		input  wire [31:0]  RdDCMReadData_i,      //             .readdata
		input  wire         RdDCMReadDataValid_i, //             .readdatavalid
		input  wire         RdDCSChipSelect_i,    //  RdDCS_slave.chipselect
		input  wire         RdDCSWrite_i,         //             .write
		input  wire [7:0]   RdDCSAddress_i,       //             .address
		input  wire [31:0]  RdDCSWriteData_i,     //             .writedata
		input  wire [3:0]   RdDCSByteEnable_i,    //             .byteenable
		output wire         RdDCSWaitRequest_o,   //             .waitrequest
		input  wire         RdDCSRead_i,          //             .read
		output wire [31:0]  RdDCSReadData_o,      //             .readdata
		input  wire [31:0]  RdDmaRxData_i,        //     RdDMA_Rx.data
		input  wire         RdDmaRxValid_i,       //             .valid
		output wire [159:0] RdDmaTxData_o,        //     RdDMA_Tx.data
		output wire         RdDmaTxValid_o,       //             .valid
		input  wire         RdDmaTxReady_i,       //             .ready
		input  wire         RdDTSChipSelect_i,    //  RdDTS_slave.chipselect
		input  wire         RdDTSWrite_i,         //             .write
		input  wire [4:0]   RdDTSBurstCount_i,    //             .burstcount
		input  wire [7:0]   RdDTSAddress_i,       //             .address
		input  wire [255:0] RdDTSWriteData_i,     //             .writedata
		output wire         RdDTSWaitRequest_o,   //             .waitrequest
		input  wire         Rstn_i,               //       Resetn.reset_n
		output wire [63:0]  WrDCMAddress_o,       // WrDCM_Master.address
		output wire         WrDCMWrite_o,         //             .write
		output wire [31:0]  WrDCMWriteData_o,     //             .writedata
		output wire         WrDCMRead_o,          //             .read
		output wire [3:0]   WrDCMByteEnable_o,    //             .byteenable
		input  wire         WrDCMWaitRequest_i,   //             .waitrequest
		input  wire         WrDCMReadDataValid_i, //             .readdatavalid
		input  wire [31:0]  WrDCMReadData_i,      //             .readdata
		input  wire         WrDCSChipSelect_i,    //  WrDCS_slave.chipselect
		input  wire         WrDCSWrite_i,         //             .write
		input  wire [7:0]   WrDCSAddress_i,       //             .address
		input  wire [31:0]  WrDCSWriteData_i,     //             .writedata
		input  wire [3:0]   WrDCSByteEnable_i,    //             .byteenable
		output wire         WrDCSWaitRequest_o,   //             .waitrequest
		input  wire         WrDCSRead_i,          //             .read
		output wire [31:0]  WrDCSReadData_o,      //             .readdata
		input  wire [31:0]  WrDmaRxData_i,        //     WrDMA_Rx.data
		input  wire         WrDmaRxValid_i,       //             .valid
		output wire [159:0] WrDmaTxData_o,        //     WrDMA_Tx.data
		output wire         WrDmaTxValid_o,       //             .valid
		input  wire         WrDmaTxReady_i,       //             .ready
		input  wire         WrDTSChipSelect_i,    //  WrDTS_slave.chipselect
		input  wire         WrDTSWrite_i,         //             .write
		input  wire [4:0]   WrDTSBurstCount_i,    //             .burstcount
		input  wire [7:0]   WrDTSAddress_i,       //             .address
		input  wire [255:0] WrDTSWriteData_i,     //             .writedata
		output wire         WrDTSWaitRequest_o,   //             .waitrequest
		input  wire         Clk_i                 //        clock.clk
	);
endmodule

