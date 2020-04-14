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
module nfv_reset_sync # (

   parameter SYNC_STAGES                              = 3) // Should be 1 or greater

(

   input  wire                                        arst_n, // Asynchronous reset; assumed to be asserted until 'clk' is stable.
   input  wire                                        clk,

   output logic                                       sync_rst_n

);

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
// Declare signals & constants.

   localparam MOD_SYNC_STAGES                         = (SYNC_STAGES == 0) ? 1 : SYNC_STAGES;



//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
// Use the 'nfv_dc_sync' module.

   nfv_dc_sync # (   
      .WIDTH                                          (1),
      .RESET_VALUE                                    (1'b0),
      .SYNC_STAGES                                    (MOD_SYNC_STAGES))
   nfv_dc_sync_inst (
      .arst_n                                         (arst_n),
      .clk                                            (clk),
      .sig_in                                         (arst_n),
      .sync_out                                       (sync_rst_n));


endmodule


`default_nettype wire