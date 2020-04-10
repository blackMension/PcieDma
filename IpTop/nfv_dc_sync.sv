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
`default_nettype none

module nfv_dc_sync # (

   parameter WIDTH                                    = 20, // Bus width.
   parameter [WIDTH - 1:0] RESET_VALUE                = {WIDTH{1'b0}}, // Output value during reset.
   parameter SYNC_STAGES                              = 3) // Should be 1 or greater.

(

   input  wire                                        arst_n, // Asynchronous reset; assumed to be asserted until 'clk' is stable.
   input  wire                                        clk,   
   input  wire  [WIDTH - 1:0]                         sig_in,
   output logic [WIDTH - 1:0]                         sync_out

);

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
// Declare signals & constants.

   localparam MOD_SYNC_STAGES                         = (SYNC_STAGES < 1 ? 1 : SYNC_STAGES); // Must use at least 1 stage...

      
(* dont_merge *)
   logic [WIDTH - 1:0]                                sync_sig_in[MOD_SYNC_STAGES:1];
   
   

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
// Synchronise 'sig_in', presetting to RESET_VALUE during reset.
   
   always @(negedge arst_n or posedge clk)
   begin : sync
      integer                                         J;
   
      if (arst_n == 1'b0)
         begin
         for (J = 1; J <= MOD_SYNC_STAGES; J++)
            begin
            sync_sig_in[J] <= RESET_VALUE;
            end
         end
      else
         begin
         
         for (J = 1; J <= MOD_SYNC_STAGES; J++)
            begin
            sync_sig_in[J] <= (J == 1) ? sig_in : sync_sig_in[J - 1];
            end
            
         end
         
   end
   
   assign sync_out = sync_sig_in[MOD_SYNC_STAGES];

endmodule

`default_nettype wire