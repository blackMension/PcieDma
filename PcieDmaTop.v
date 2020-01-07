module PcieDmaTop (
input hip_serial_rx_in0, 
input hip_serial_rx_in1, 
input hip_serial_rx_in2, 
input hip_serial_rx_in3, 
input hip_serial_rx_in4, 
input hip_serial_rx_in5, 
input hip_serial_rx_in6, 
input hip_serial_rx_in7, 
output hip_serial_tx_out0,
output hip_serial_tx_out1,
output hip_serial_tx_out2,
output hip_serial_tx_out3,
output hip_serial_tx_out4,
output hip_serial_tx_out5,
output hip_serial_tx_out6,
output hip_serial_tx_out7,

input pcie_refclk,
input pcie_rstN

);

	ep_g3x8_avmm256 ep_g3x8_avmm256_inst (
		.pcie_a10_hip_0_hip_serial_rx_in0         (hip_serial_rx_in0 ),                                 //   input,   width = 1, pcie_a10_hip_0_hip_serial.rx_in0
		.pcie_a10_hip_0_hip_serial_rx_in1         (hip_serial_rx_in1 ),                                 //   input,   width = 1,                          .rx_in1
		.pcie_a10_hip_0_hip_serial_rx_in2         (hip_serial_rx_in2 ),                                 //   input,   width = 1,                          .rx_in2
		.pcie_a10_hip_0_hip_serial_rx_in3         (hip_serial_rx_in3 ),                                 //   input,   width = 1,                          .rx_in3
		.pcie_a10_hip_0_hip_serial_rx_in4         (hip_serial_rx_in4 ),                                 //   input,   width = 1,                          .rx_in4
		.pcie_a10_hip_0_hip_serial_rx_in5         (hip_serial_rx_in5 ),                                 //   input,   width = 1,                          .rx_in5
		.pcie_a10_hip_0_hip_serial_rx_in6         (hip_serial_rx_in6 ),                                 //   input,   width = 1,                          .rx_in6
		.pcie_a10_hip_0_hip_serial_rx_in7         (hip_serial_rx_in7 ),                                 //   input,   width = 1,                          .rx_in7
		.pcie_a10_hip_0_hip_serial_tx_out0        (hip_serial_tx_out0),        //  output,   width = 1,                          .tx_out0
		.pcie_a10_hip_0_hip_serial_tx_out1        (hip_serial_tx_out1),        //  output,   width = 1,                          .tx_out1
		.pcie_a10_hip_0_hip_serial_tx_out2        (hip_serial_tx_out2),        //  output,   width = 1,                          .tx_out2
		.pcie_a10_hip_0_hip_serial_tx_out3        (hip_serial_tx_out3),        //  output,   width = 1,                          .tx_out3
		.pcie_a10_hip_0_hip_serial_tx_out4        (hip_serial_tx_out4),        //  output,   width = 1,                          .tx_out4
		.pcie_a10_hip_0_hip_serial_tx_out5        (hip_serial_tx_out5),        //  output,   width = 1,                          .tx_out5
		.pcie_a10_hip_0_hip_serial_tx_out6        (hip_serial_tx_out6),        //  output,   width = 1,                          .tx_out6
		.pcie_a10_hip_0_hip_serial_tx_out7        (hip_serial_tx_out7),        //  output,   width = 1,                          .tx_out7
		.pcie_a10_hip_0_npor_npor                 (pcie_rstN),                                         //   input,   width = 1,       pcie_a10_hip_0_npor.npor
		.pcie_a10_hip_0_npor_pin_perst            (pcie_rstN),                                    //   input,   width = 1,                          .pin_perst
		.reconfig_xcvr_clk_clk                    (pcie_refclk),            //   input,   width = 1,         reconfig_xcvr_clk.clk
		.reconfig_xcvr_reset_reset_n              (pcie_rstN),      //   input,   width = 1,       reconfig_xcvr_reset.reset_n
		.refclk_clk                               (pcie_refclk)                                         //   input,   width = 1,                    refclk.clk
	);

endmodule
