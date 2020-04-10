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
// output_name:                                       Phy_inst_reconfig_avmm_bfm_ip_altera_conduit_bfm_171_k2a7pti
// role:width:direction:                              address:10:output,read:1:output,readdata:32:input,waitrequest:1:input,write:1:output,writedata:32:output
// 0
//-----------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Phy_inst_reconfig_avmm_bfm_ip_altera_conduit_bfm_171_k2a7pti
(
   sig_address,
   sig_read,
   sig_readdata,
   sig_waitrequest,
   sig_write,
   sig_writedata
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   output [9 : 0] sig_address;
   output sig_read;
   input [31 : 0] sig_readdata;
   input sig_waitrequest;
   output sig_write;
   output [31 : 0] sig_writedata;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic [9 : 0] ROLE_address_t;
   typedef logic ROLE_read_t;
   typedef logic [31 : 0] ROLE_readdata_t;
   typedef logic ROLE_waitrequest_t;
   typedef logic ROLE_write_t;
   typedef logic [31 : 0] ROLE_writedata_t;

   reg [9 : 0] sig_address_temp;
   reg [9 : 0] sig_address_out;
   reg sig_read_temp;
   reg sig_read_out;
   logic [31 : 0] sig_readdata_in;
   logic [31 : 0] sig_readdata_local;
   logic [0 : 0] sig_waitrequest_in;
   logic [0 : 0] sig_waitrequest_local;
   reg sig_write_temp;
   reg sig_write_out;
   reg [31 : 0] sig_writedata_temp;
   reg [31 : 0] sig_writedata_out;

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
   
   event signal_input_readdata_change;
   event signal_input_waitrequest_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "17.1";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // address
   // -------------------------------------------------------

   function automatic void set_address (
      ROLE_address_t new_value
   );
      // Drive the new value to address.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_address_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // read
   // -------------------------------------------------------

   function automatic void set_read (
      ROLE_read_t new_value
   );
      // Drive the new value to read.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_read_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // readdata
   // -------------------------------------------------------
   function automatic ROLE_readdata_t get_readdata();
   
      // Gets the readdata input value.
      $sformat(message, "%m: called get_readdata");
      print(VERBOSITY_DEBUG, message);
      return sig_readdata_in;
      
   endfunction

   // -------------------------------------------------------
   // waitrequest
   // -------------------------------------------------------
   function automatic ROLE_waitrequest_t get_waitrequest();
   
      // Gets the waitrequest input value.
      $sformat(message, "%m: called get_waitrequest");
      print(VERBOSITY_DEBUG, message);
      return sig_waitrequest_in;
      
   endfunction

   // -------------------------------------------------------
   // write
   // -------------------------------------------------------

   function automatic void set_write (
      ROLE_write_t new_value
   );
      // Drive the new value to write.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_write_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // writedata
   // -------------------------------------------------------

   function automatic void set_writedata (
      ROLE_writedata_t new_value
   );
      // Drive the new value to writedata.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_writedata_temp = new_value;
   endfunction

   assign sig_address = sig_address_temp;
   assign sig_read = sig_read_temp;
   assign sig_readdata_in = sig_readdata;
   assign sig_waitrequest_in = sig_waitrequest;
   assign sig_write = sig_write_temp;
   assign sig_writedata = sig_writedata_temp;


   always @(sig_readdata_in) begin
      if (sig_readdata_local != sig_readdata_in)
         -> signal_input_readdata_change;
      sig_readdata_local = sig_readdata_in;
   end
   
   always @(sig_waitrequest_in) begin
      if (sig_waitrequest_local != sig_waitrequest_in)
         -> signal_input_waitrequest_change;
      sig_waitrequest_local = sig_waitrequest_in;
   end
   


// synthesis translate_on

endmodule

