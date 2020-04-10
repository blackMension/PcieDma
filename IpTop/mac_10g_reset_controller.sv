// ############################################################################
//
// INTEL CONFIDENTIAL
// Copyright 2018 Intel Corporation
//
// The source code contained or described herein and all documents related
// to the source code ("Material") are owned by Intel Corporation or
// its suppliers or licensors. Title to the Material remains with Intel
// Corporation or its suppliers and licensors. The Material contains trade
// secrets and proprietary and confidential information of Intel or its
// suppliers and licensors. The Material is protected by worldwide copyright
// and trade secret laws and treaty provisions. No part of the Material
// may be used, copied, reproduced, modified, published, uploaded, posted,
// transmitted, distributed, or disclosed in any way without Intel's prior
// express written permission.
//
// No license under any patent, copyright, trade secret or other intellectual
// property right is granted to or conferred upon you by disclosure or
// delivery of the Materials, either expressly, by implication, inducement,
// estoppel or otherwise. Any license under such intellectual property
// rights must be express and approved by Intel in writing.
//
// ############################################################################
module mac_10g_reset_controller
(
     input        slowest_mac_clk //slowest clk from csr_clk, tx_clk and rx_clk
    ,input        mac_clk
    ,input        mac_clk_locked
    ,input        i_csr_rst_n
    ,input        i_tx_rst_n
    ,input        i_rx_rst_n
    ,output logic o_csr_rst_n
    ,output logic o_tx_rst_n_sync_to_mac_clk
    ,output logic o_rx_rst_n_sync_to_mac_clk
);

logic [2:0] cnt;
logic tx_rx_rst_en;

nfv_reset_sync #(
   .SYNC_STAGES (3)
) sync_to_slowest_mac_clk_i_csr_rst_n_inst (
    .arst_n     (i_csr_rst_n)
   ,.clk        (slowest_mac_clk)
   ,.sync_rst_n (i_csr_rst_n_on_slowest_mac_clk)
);

always_ff @ (posedge slowest_mac_clk or negedge i_csr_rst_n_on_slowest_mac_clk) begin
    if (!i_csr_rst_n_on_slowest_mac_clk) begin
        cnt <= '0;
    end
    else if (cnt != 3'b111) begin
        cnt <= cnt + 1'b1;
    end
end

always_ff @ (posedge slowest_mac_clk or negedge i_csr_rst_n_on_slowest_mac_clk) begin
    if (!i_csr_rst_n_on_slowest_mac_clk) begin
        tx_rx_rst_en <= '0;
    end
    else if (cnt == 3'b111) begin
        tx_rx_rst_en <= 1'b1;
    end
end

always_ff @ (posedge slowest_mac_clk or negedge i_csr_rst_n_on_slowest_mac_clk) begin
    if (!i_csr_rst_n_on_slowest_mac_clk) begin
        o_csr_rst_n <= '0;
    end
    else if (cnt[2]) begin
        o_csr_rst_n <= 1'b1;
    end
end

nfv_reset_sync #(
   .SYNC_STAGES (3)
) sync_to_mac_clk_tx_rst_n_inst (
    .arst_n     (i_tx_rst_n & tx_rx_rst_en & mac_clk_locked)
   ,.clk        (mac_clk)
   ,.sync_rst_n (o_tx_rst_n_sync_to_mac_clk)
);

nfv_reset_sync #(
   .SYNC_STAGES (3)
) sync_to_mac_clk_rx_rst_n_inst (
    .arst_n     (i_rx_rst_n & tx_rx_rst_en & mac_clk_locked)
   ,.clk        (mac_clk)
   ,.sync_rst_n (o_rx_rst_n_sync_to_mac_clk)
);
endmodule
