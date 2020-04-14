// (C) 2001-2018 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files from any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel FPGA IP License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


// $Id: //acds/main/ip/sopc/components/verification/altera_tristate_conduit_bfm/altera_tristate_conduit_bfm.sv.terp#7 $
// $Revision: #7 $
// $Date: 2010/08/05 $
// $Author: klong $
//-----------------------------------------------------------------------------
// =head1 NAME
// altera_conduit_bfm
// =head1 SYNOPSIS
// Bus Functional Model (BFM) for a Standard Conduit BFM
//-----------------------------------------------------------------------------
// =head1 DESCRIPTION
// This is a Bus Functional Model (BFM) for a Standard Conduit Master.
// This BFM sampled the input/bidirection port value or driving user's value to 
// output ports when user call the API.  
// This BFM's HDL is been generated through terp file in Qsys/SOPC Builder.
// Generation parameters:
// output_name:                                       Phy_inst_tx_enh_fifo_empty_bfm_ip_altera_conduit_bfm_171_rpvn5oi
// role:width:direction:                              tx_enh_fifo_empty:1:input
// 0
//-----------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Phy_inst_tx_enh_fifo_empty_bfm_ip_altera_conduit_bfm_171_rpvn5oi
(
   sig_tx_enh_fifo_empty
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   input sig_tx_enh_fifo_empty;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic ROLE_tx_enh_fifo_empty_t;

   logic [0 : 0] sig_tx_enh_fifo_empty_in;
   logic [0 : 0] sig_tx_enh_fifo_empty_local;

   //--------------------------------------------------------------------------
   // =head1 Public Methods API
   // =pod
   // This section describes the public methods in the application programming
   // interface (API). The application program interface provides methods for 
   // a testbench which instantiates, controls and queries state in this BFM 
   // component. Test programs must only use these public access methods and 
   // events to communicate with this BFM component. The API and module pins
   // are the only interfaces of this component that are guaranteed to be
   // stable. The API will be maintained for the life of the product. 
   // While we cannot prevent a test program from directly accessing internal
   // tasks, functions, or data private to the BFM, there is no guarantee that
   // these will be present in the future. In fact, it is best for the user
   // to assume that the underlying implementation of this component can 
   // and will change.
   // =cut
   //--------------------------------------------------------------------------
   
   event signal_input_tx_enh_fifo_empty_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "17.1";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // tx_enh_fifo_empty
   // -------------------------------------------------------
   function automatic ROLE_tx_enh_fifo_empty_t get_tx_enh_fifo_empty();
   
      // Gets the tx_enh_fifo_empty input value.
      $sformat(message, "%m: called get_tx_enh_fifo_empty");
      print(VERBOSITY_DEBUG, message);
      return sig_tx_enh_fifo_empty_in;
      
   endfunction

   assign sig_tx_enh_fifo_empty_in = sig_tx_enh_fifo_empty;


   always @(sig_tx_enh_fifo_empty_in) begin
      if (sig_tx_enh_fifo_empty_local != sig_tx_enh_fifo_empty_in)
         -> signal_input_tx_enh_fifo_empty_change;
      sig_tx_enh_fifo_empty_local = sig_tx_enh_fifo_empty_in;
   end
   


// synthesis translate_on

endmodule

