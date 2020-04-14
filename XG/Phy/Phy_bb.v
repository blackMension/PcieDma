module Phy (
		input  wire [0:0]  reconfig_write,          //           reconfig_avmm.write
		input  wire [0:0]  reconfig_read,           //                        .read
		input  wire [9:0]  reconfig_address,        //                        .address
		input  wire [31:0] reconfig_writedata,      //                        .writedata
		output wire [31:0] reconfig_readdata,       //                        .readdata
		output wire [0:0]  reconfig_waitrequest,    //                        .waitrequest
		input  wire [0:0]  reconfig_clk,            //            reconfig_clk.clk
		input  wire [0:0]  reconfig_reset,          //          reconfig_reset.reset
		input  wire [0:0]  rx_analogreset,          //          rx_analogreset.rx_analogreset
		output wire [0:0]  rx_cal_busy,             //             rx_cal_busy.rx_cal_busy
		input  wire        rx_cdr_refclk0,          //          rx_cdr_refclk0.clk
		output wire [0:0]  rx_clkout,               //               rx_clkout.clk
		output wire [7:0]  rx_control,              //              rx_control.rx_control
		input  wire [0:0]  rx_coreclkin,            //            rx_coreclkin.clk
		input  wire [0:0]  rx_digitalreset,         //         rx_digitalreset.rx_digitalreset
		output wire [0:0]  rx_enh_blk_lock,         //         rx_enh_blk_lock.rx_enh_blk_lock
		output wire [0:0]  rx_enh_data_valid,       //       rx_enh_data_valid.rx_enh_data_valid
		output wire [0:0]  rx_enh_fifo_del,         //         rx_enh_fifo_del.rx_enh_fifo_del
		output wire [0:0]  rx_enh_fifo_empty,       //       rx_enh_fifo_empty.rx_enh_fifo_empty
		output wire [0:0]  rx_enh_fifo_full,        //        rx_enh_fifo_full.rx_enh_fifo_full
		output wire [0:0]  rx_enh_fifo_insert,      //      rx_enh_fifo_insert.rx_enh_fifo_insert
		output wire [0:0]  rx_enh_highber,          //          rx_enh_highber.rx_enh_highber
		output wire [0:0]  rx_is_lockedtodata,      //      rx_is_lockedtodata.rx_is_lockedtodata
		output wire [0:0]  rx_is_lockedtoref,       //       rx_is_lockedtoref.rx_is_lockedtoref
		output wire [63:0] rx_parallel_data,        //        rx_parallel_data.rx_parallel_data
		output wire [0:0]  rx_pma_div_clkout,       //       rx_pma_div_clkout.clk
		input  wire [0:0]  rx_serial_data,          //          rx_serial_data.rx_serial_data
		input  wire [0:0]  tx_analogreset,          //          tx_analogreset.tx_analogreset
		output wire [0:0]  tx_cal_busy,             //             tx_cal_busy.tx_cal_busy
		output wire [0:0]  tx_clkout,               //               tx_clkout.clk
		input  wire [7:0]  tx_control,              //              tx_control.tx_control
		input  wire [0:0]  tx_coreclkin,            //            tx_coreclkin.clk
		input  wire [0:0]  tx_digitalreset,         //         tx_digitalreset.tx_digitalreset
		input  wire [0:0]  tx_enh_data_valid,       //       tx_enh_data_valid.tx_enh_data_valid
		output wire [0:0]  tx_enh_fifo_empty,       //       tx_enh_fifo_empty.tx_enh_fifo_empty
		output wire [0:0]  tx_enh_fifo_full,        //        tx_enh_fifo_full.tx_enh_fifo_full
		output wire [0:0]  tx_enh_fifo_pempty,      //      tx_enh_fifo_pempty.tx_enh_fifo_pempty
		output wire [0:0]  tx_enh_fifo_pfull,       //       tx_enh_fifo_pfull.tx_enh_fifo_pfull
		input  wire        tx_err_ins,              //              tx_err_ins.tx_err_ins
		input  wire [63:0] tx_parallel_data,        //        tx_parallel_data.tx_parallel_data
		output wire [0:0]  tx_pma_div_clkout,       //       tx_pma_div_clkout.clk
		input  wire [0:0]  tx_serial_clk0,          //          tx_serial_clk0.clk
		output wire [0:0]  tx_serial_data,          //          tx_serial_data.tx_serial_data
		output wire [11:0] unused_rx_control,       //       unused_rx_control.unused_rx_control
		output wire [63:0] unused_rx_parallel_data, // unused_rx_parallel_data.unused_rx_parallel_data
		input  wire [8:0]  unused_tx_control,       //       unused_tx_control.unused_tx_control
		input  wire [63:0] unused_tx_parallel_data  // unused_tx_parallel_data.unused_tx_parallel_data
	);
endmodule

