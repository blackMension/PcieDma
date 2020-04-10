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



// Your use of Altera Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License Subscription 
// Agreement, Altera MegaCore Function License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


// $Id: //acds/rel/17.1/ip/merlin/altera_merlin_router/altera_merlin_router.sv.terp#1 $
// $Revision: #1 $
// $Date: 2017/08/13 $
// $Author: swbranch $

// -------------------------------------------------------
// Merlin Router
//
// Asserts the appropriate one-hot encoded channel based on 
// either (a) the address or (b) the dest id. The DECODER_TYPE
// parameter controls this behaviour. 0 means address decoder,
// 1 means dest id decoder.
//
// In the case of (a), it also sets the destination id.
// -------------------------------------------------------

`timescale 1 ns / 1 ns

module address_decode_altera_merlin_router_171_w3toeyq_default_decode
  #(
     parameter DEFAULT_CHANNEL = 0,
               DEFAULT_WR_CHANNEL = -1,
               DEFAULT_RD_CHANNEL = -1,
               DEFAULT_DESTID = 12 
   )
  (output [105 - 100 : 0] default_destination_id,
   output [60-1 : 0] default_wr_channel,
   output [60-1 : 0] default_rd_channel,
   output [60-1 : 0] default_src_channel
  );

  assign default_destination_id = 
    DEFAULT_DESTID[105 - 100 : 0];

  generate
    if (DEFAULT_CHANNEL == -1) begin : no_default_channel_assignment
      assign default_src_channel = '0;
    end
    else begin : default_channel_assignment
      assign default_src_channel = 60'b1 << DEFAULT_CHANNEL;
    end
  endgenerate

  generate
    if (DEFAULT_RD_CHANNEL == -1) begin : no_default_rw_channel_assignment
      assign default_wr_channel = '0;
      assign default_rd_channel = '0;
    end
    else begin : default_rw_channel_assignment
      assign default_wr_channel = 60'b1 << DEFAULT_WR_CHANNEL;
      assign default_rd_channel = 60'b1 << DEFAULT_RD_CHANNEL;
    end
  endgenerate

endmodule


module address_decode_altera_merlin_router_171_w3toeyq
(
    // -------------------
    // Clock & Reset
    // -------------------
    input clk,
    input reset,

    // -------------------
    // Command Sink (Input)
    // -------------------
    input                       sink_valid,
    input  [119-1 : 0]    sink_data,
    input                       sink_startofpacket,
    input                       sink_endofpacket,
    output                      sink_ready,

    // -------------------
    // Command Source (Output)
    // -------------------
    output                          src_valid,
    output reg [119-1    : 0] src_data,
    output reg [60-1 : 0] src_channel,
    output                          src_startofpacket,
    output                          src_endofpacket,
    input                           src_ready
);

    // -------------------------------------------------------
    // Local parameters and variables
    // -------------------------------------------------------
    localparam PKT_ADDR_H = 67;
    localparam PKT_ADDR_L = 36;
    localparam PKT_DEST_ID_H = 105;
    localparam PKT_DEST_ID_L = 100;
    localparam PKT_PROTECTION_H = 109;
    localparam PKT_PROTECTION_L = 107;
    localparam ST_DATA_W = 119;
    localparam ST_CHANNEL_W = 60;
    localparam DECODER_TYPE = 0;

    localparam PKT_TRANS_WRITE = 70;
    localparam PKT_TRANS_READ  = 71;

    localparam PKT_ADDR_W = PKT_ADDR_H-PKT_ADDR_L + 1;
    localparam PKT_DEST_ID_W = PKT_DEST_ID_H-PKT_DEST_ID_L + 1;



    // -------------------------------------------------------
    // Figure out the number of bits to mask off for each slave span
    // during address decoding
    // -------------------------------------------------------
    localparam PAD0 = log2ceil(64'h8000 - 64'h0); 
    localparam PAD1 = log2ceil(64'h9000 - 64'h8000); 
    localparam PAD2 = log2ceil(64'h9420 - 64'h9400); 
    localparam PAD3 = log2ceil(64'h9620 - 64'h9600); 
    localparam PAD4 = log2ceil(64'h10000 - 64'hc000); 
    localparam PAD5 = log2ceil(64'h18000 - 64'h10000); 
    localparam PAD6 = log2ceil(64'h19000 - 64'h18000); 
    localparam PAD7 = log2ceil(64'h19420 - 64'h19400); 
    localparam PAD8 = log2ceil(64'h19620 - 64'h19600); 
    localparam PAD9 = log2ceil(64'h20000 - 64'h1c000); 
    localparam PAD10 = log2ceil(64'h28000 - 64'h20000); 
    localparam PAD11 = log2ceil(64'h29000 - 64'h28000); 
    localparam PAD12 = log2ceil(64'h29420 - 64'h29400); 
    localparam PAD13 = log2ceil(64'h29620 - 64'h29600); 
    localparam PAD14 = log2ceil(64'h30000 - 64'h2c000); 
    localparam PAD15 = log2ceil(64'h38000 - 64'h30000); 
    localparam PAD16 = log2ceil(64'h39000 - 64'h38000); 
    localparam PAD17 = log2ceil(64'h39420 - 64'h39400); 
    localparam PAD18 = log2ceil(64'h39620 - 64'h39600); 
    localparam PAD19 = log2ceil(64'h40000 - 64'h3c000); 
    localparam PAD20 = log2ceil(64'h48000 - 64'h40000); 
    localparam PAD21 = log2ceil(64'h49000 - 64'h48000); 
    localparam PAD22 = log2ceil(64'h49420 - 64'h49400); 
    localparam PAD23 = log2ceil(64'h49620 - 64'h49600); 
    localparam PAD24 = log2ceil(64'h50000 - 64'h4c000); 
    localparam PAD25 = log2ceil(64'h58000 - 64'h50000); 
    localparam PAD26 = log2ceil(64'h59000 - 64'h58000); 
    localparam PAD27 = log2ceil(64'h59420 - 64'h59400); 
    localparam PAD28 = log2ceil(64'h59620 - 64'h59600); 
    localparam PAD29 = log2ceil(64'h60000 - 64'h5c000); 
    localparam PAD30 = log2ceil(64'h68000 - 64'h60000); 
    localparam PAD31 = log2ceil(64'h69000 - 64'h68000); 
    localparam PAD32 = log2ceil(64'h69420 - 64'h69400); 
    localparam PAD33 = log2ceil(64'h69620 - 64'h69600); 
    localparam PAD34 = log2ceil(64'h70000 - 64'h6c000); 
    localparam PAD35 = log2ceil(64'h78000 - 64'h70000); 
    localparam PAD36 = log2ceil(64'h79000 - 64'h78000); 
    localparam PAD37 = log2ceil(64'h79420 - 64'h79400); 
    localparam PAD38 = log2ceil(64'h79620 - 64'h79600); 
    localparam PAD39 = log2ceil(64'h80000 - 64'h7c000); 
    localparam PAD40 = log2ceil(64'h88000 - 64'h80000); 
    localparam PAD41 = log2ceil(64'h89000 - 64'h88000); 
    localparam PAD42 = log2ceil(64'h89420 - 64'h89400); 
    localparam PAD43 = log2ceil(64'h89620 - 64'h89600); 
    localparam PAD44 = log2ceil(64'h90000 - 64'h8c000); 
    localparam PAD45 = log2ceil(64'h98000 - 64'h90000); 
    localparam PAD46 = log2ceil(64'h99000 - 64'h98000); 
    localparam PAD47 = log2ceil(64'h99420 - 64'h99400); 
    localparam PAD48 = log2ceil(64'h99620 - 64'h99600); 
    localparam PAD49 = log2ceil(64'ha0000 - 64'h9c000); 
    localparam PAD50 = log2ceil(64'ha8000 - 64'ha0000); 
    localparam PAD51 = log2ceil(64'ha9000 - 64'ha8000); 
    localparam PAD52 = log2ceil(64'ha9420 - 64'ha9400); 
    localparam PAD53 = log2ceil(64'ha9620 - 64'ha9600); 
    localparam PAD54 = log2ceil(64'hb0000 - 64'hac000); 
    localparam PAD55 = log2ceil(64'hb8000 - 64'hb0000); 
    localparam PAD56 = log2ceil(64'hb9000 - 64'hb8000); 
    localparam PAD57 = log2ceil(64'hb9420 - 64'hb9400); 
    localparam PAD58 = log2ceil(64'hb9620 - 64'hb9600); 
    localparam PAD59 = log2ceil(64'hc0000 - 64'hbc000); 
    // -------------------------------------------------------
    // Work out which address bits are significant based on the
    // address range of the slaves. If the required width is too
    // large or too small, we use the address field width instead.
    // -------------------------------------------------------
    localparam ADDR_RANGE = 64'hc0000;
    localparam RANGE_ADDR_WIDTH = log2ceil(ADDR_RANGE);
    localparam OPTIMIZED_ADDR_H = (RANGE_ADDR_WIDTH > PKT_ADDR_W) ||
                                  (RANGE_ADDR_WIDTH == 0) ?
                                        PKT_ADDR_H :
                                        PKT_ADDR_L + RANGE_ADDR_WIDTH - 1;

    localparam RG = RANGE_ADDR_WIDTH-1;
    localparam REAL_ADDRESS_RANGE = OPTIMIZED_ADDR_H - PKT_ADDR_L;

      reg [PKT_ADDR_W-1 : 0] address;
      always @* begin
        address = {PKT_ADDR_W{1'b0}};
        address [REAL_ADDRESS_RANGE:0] = sink_data[OPTIMIZED_ADDR_H : PKT_ADDR_L];
      end   

    // -------------------------------------------------------
    // Pass almost everything through, untouched
    // -------------------------------------------------------
    assign sink_ready        = src_ready;
    assign src_valid         = sink_valid;
    assign src_startofpacket = sink_startofpacket;
    assign src_endofpacket   = sink_endofpacket;
    wire [PKT_DEST_ID_W-1:0] default_destid;
    wire [60-1 : 0] default_src_channel;






    address_decode_altera_merlin_router_171_w3toeyq_default_decode the_default_decode(
      .default_destination_id (default_destid),
      .default_wr_channel   (),
      .default_rd_channel   (),
      .default_src_channel  (default_src_channel)
    );

    always @* begin
        src_data    = sink_data;
        src_channel = default_src_channel;
        src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = default_destid;

        // --------------------------------------------------
        // Address Decoder
        // Sets the channel and destination ID based on the address
        // --------------------------------------------------

    // ( 0x0 .. 0x8000 )
    if ( {address[RG:PAD0],{PAD0{1'b0}}} == 20'h0   ) begin
            src_channel = 60'b000000000000000000000000000000000000000000000000000000000001;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 12;
    end

    // ( 0x8000 .. 0x9000 )
    if ( {address[RG:PAD1],{PAD1{1'b0}}} == 20'h8000   ) begin
            src_channel = 60'b000000000000000000000000000000000000000000000000000000000010;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 24;
    end

    // ( 0x9400 .. 0x9420 )
    if ( {address[RG:PAD2],{PAD2{1'b0}}} == 20'h9400   ) begin
            src_channel = 60'b000000000000000000000000000000000000000000000000000000001000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 36;
    end

    // ( 0x9600 .. 0x9620 )
    if ( {address[RG:PAD3],{PAD3{1'b0}}} == 20'h9600   ) begin
            src_channel = 60'b000000000000000000000000000000000000000000000000000000000100;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 48;
    end

    // ( 0xc000 .. 0x10000 )
    if ( {address[RG:PAD4],{PAD4{1'b0}}} == 20'hc000   ) begin
            src_channel = 60'b000000000000000000000000000000000000000000000000000000010000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 0;
    end

    // ( 0x10000 .. 0x18000 )
    if ( {address[RG:PAD5],{PAD5{1'b0}}} == 20'h10000   ) begin
            src_channel = 60'b000000000000000000000000000000000000000000000000000000100000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 15;
    end

    // ( 0x18000 .. 0x19000 )
    if ( {address[RG:PAD6],{PAD6{1'b0}}} == 20'h18000   ) begin
            src_channel = 60'b000000000000000000000000000000000000000000000000000001000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 27;
    end

    // ( 0x19400 .. 0x19420 )
    if ( {address[RG:PAD7],{PAD7{1'b0}}} == 20'h19400   ) begin
            src_channel = 60'b000000000000000000000000000000000000000000000000000100000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 39;
    end

    // ( 0x19600 .. 0x19620 )
    if ( {address[RG:PAD8],{PAD8{1'b0}}} == 20'h19600   ) begin
            src_channel = 60'b000000000000000000000000000000000000000000000000000010000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 51;
    end

    // ( 0x1c000 .. 0x20000 )
    if ( {address[RG:PAD9],{PAD9{1'b0}}} == 20'h1c000   ) begin
            src_channel = 60'b000000000000000000000000000000000000000000000000001000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 3;
    end

    // ( 0x20000 .. 0x28000 )
    if ( {address[RG:PAD10],{PAD10{1'b0}}} == 20'h20000   ) begin
            src_channel = 60'b000000000000000000000000000000000000000000000000010000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 16;
    end

    // ( 0x28000 .. 0x29000 )
    if ( {address[RG:PAD11],{PAD11{1'b0}}} == 20'h28000   ) begin
            src_channel = 60'b000000000000000000000000000000000000000000000000100000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 28;
    end

    // ( 0x29400 .. 0x29420 )
    if ( {address[RG:PAD12],{PAD12{1'b0}}} == 20'h29400   ) begin
            src_channel = 60'b000000000000000000000000000000000000000000000010000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 40;
    end

    // ( 0x29600 .. 0x29620 )
    if ( {address[RG:PAD13],{PAD13{1'b0}}} == 20'h29600   ) begin
            src_channel = 60'b000000000000000000000000000000000000000000000001000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 52;
    end

    // ( 0x2c000 .. 0x30000 )
    if ( {address[RG:PAD14],{PAD14{1'b0}}} == 20'h2c000   ) begin
            src_channel = 60'b000000000000000000000000000000000000000000000100000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 4;
    end

    // ( 0x30000 .. 0x38000 )
    if ( {address[RG:PAD15],{PAD15{1'b0}}} == 20'h30000   ) begin
            src_channel = 60'b000000000000000000000000000000000000000000001000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 17;
    end

    // ( 0x38000 .. 0x39000 )
    if ( {address[RG:PAD16],{PAD16{1'b0}}} == 20'h38000   ) begin
            src_channel = 60'b000000000000000000000000000000000000000000010000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 29;
    end

    // ( 0x39400 .. 0x39420 )
    if ( {address[RG:PAD17],{PAD17{1'b0}}} == 20'h39400   ) begin
            src_channel = 60'b000000000000000000000000000000000000000001000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 41;
    end

    // ( 0x39600 .. 0x39620 )
    if ( {address[RG:PAD18],{PAD18{1'b0}}} == 20'h39600   ) begin
            src_channel = 60'b000000000000000000000000000000000000000000100000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 53;
    end

    // ( 0x3c000 .. 0x40000 )
    if ( {address[RG:PAD19],{PAD19{1'b0}}} == 20'h3c000   ) begin
            src_channel = 60'b000000000000000000000000000000000000000010000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 5;
    end

    // ( 0x40000 .. 0x48000 )
    if ( {address[RG:PAD20],{PAD20{1'b0}}} == 20'h40000   ) begin
            src_channel = 60'b000000000000000000000000000000000000000100000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 18;
    end

    // ( 0x48000 .. 0x49000 )
    if ( {address[RG:PAD21],{PAD21{1'b0}}} == 20'h48000   ) begin
            src_channel = 60'b000000000000000000000000000000000000001000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 30;
    end

    // ( 0x49400 .. 0x49420 )
    if ( {address[RG:PAD22],{PAD22{1'b0}}} == 20'h49400   ) begin
            src_channel = 60'b000000000000000000000000000000000000100000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 42;
    end

    // ( 0x49600 .. 0x49620 )
    if ( {address[RG:PAD23],{PAD23{1'b0}}} == 20'h49600   ) begin
            src_channel = 60'b000000000000000000000000000000000000010000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 54;
    end

    // ( 0x4c000 .. 0x50000 )
    if ( {address[RG:PAD24],{PAD24{1'b0}}} == 20'h4c000   ) begin
            src_channel = 60'b000000000000000000000000000000000001000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 6;
    end

    // ( 0x50000 .. 0x58000 )
    if ( {address[RG:PAD25],{PAD25{1'b0}}} == 20'h50000   ) begin
            src_channel = 60'b000000000000000000000000000000000010000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 19;
    end

    // ( 0x58000 .. 0x59000 )
    if ( {address[RG:PAD26],{PAD26{1'b0}}} == 20'h58000   ) begin
            src_channel = 60'b000000000000000000000000000000000100000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 31;
    end

    // ( 0x59400 .. 0x59420 )
    if ( {address[RG:PAD27],{PAD27{1'b0}}} == 20'h59400   ) begin
            src_channel = 60'b000000000000000000000000000000010000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 43;
    end

    // ( 0x59600 .. 0x59620 )
    if ( {address[RG:PAD28],{PAD28{1'b0}}} == 20'h59600   ) begin
            src_channel = 60'b000000000000000000000000000000001000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 55;
    end

    // ( 0x5c000 .. 0x60000 )
    if ( {address[RG:PAD29],{PAD29{1'b0}}} == 20'h5c000   ) begin
            src_channel = 60'b000000000000000000000000000000100000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 7;
    end

    // ( 0x60000 .. 0x68000 )
    if ( {address[RG:PAD30],{PAD30{1'b0}}} == 20'h60000   ) begin
            src_channel = 60'b000000000000000000000000000001000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 20;
    end

    // ( 0x68000 .. 0x69000 )
    if ( {address[RG:PAD31],{PAD31{1'b0}}} == 20'h68000   ) begin
            src_channel = 60'b000000000000000000000000000010000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 32;
    end

    // ( 0x69400 .. 0x69420 )
    if ( {address[RG:PAD32],{PAD32{1'b0}}} == 20'h69400   ) begin
            src_channel = 60'b000000000000000000000000001000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 44;
    end

    // ( 0x69600 .. 0x69620 )
    if ( {address[RG:PAD33],{PAD33{1'b0}}} == 20'h69600   ) begin
            src_channel = 60'b000000000000000000000000000100000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 56;
    end

    // ( 0x6c000 .. 0x70000 )
    if ( {address[RG:PAD34],{PAD34{1'b0}}} == 20'h6c000   ) begin
            src_channel = 60'b000000000000000000000000010000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 8;
    end

    // ( 0x70000 .. 0x78000 )
    if ( {address[RG:PAD35],{PAD35{1'b0}}} == 20'h70000   ) begin
            src_channel = 60'b000000000000000000001000000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 21;
    end

    // ( 0x78000 .. 0x79000 )
    if ( {address[RG:PAD36],{PAD36{1'b0}}} == 20'h78000   ) begin
            src_channel = 60'b000000000000000000000100000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 33;
    end

    // ( 0x79400 .. 0x79420 )
    if ( {address[RG:PAD37],{PAD37{1'b0}}} == 20'h79400   ) begin
            src_channel = 60'b000000000000000000000001000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 45;
    end

    // ( 0x79600 .. 0x79620 )
    if ( {address[RG:PAD38],{PAD38{1'b0}}} == 20'h79600   ) begin
            src_channel = 60'b000000000000000000000010000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 57;
    end

    // ( 0x7c000 .. 0x80000 )
    if ( {address[RG:PAD39],{PAD39{1'b0}}} == 20'h7c000   ) begin
            src_channel = 60'b000000000000000000000000100000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 9;
    end

    // ( 0x80000 .. 0x88000 )
    if ( {address[RG:PAD40],{PAD40{1'b0}}} == 20'h80000   ) begin
            src_channel = 60'b000000000000000000010000000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 22;
    end

    // ( 0x88000 .. 0x89000 )
    if ( {address[RG:PAD41],{PAD41{1'b0}}} == 20'h88000   ) begin
            src_channel = 60'b000000000000000000100000000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 34;
    end

    // ( 0x89400 .. 0x89420 )
    if ( {address[RG:PAD42],{PAD42{1'b0}}} == 20'h89400   ) begin
            src_channel = 60'b000000000000000010000000000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 46;
    end

    // ( 0x89600 .. 0x89620 )
    if ( {address[RG:PAD43],{PAD43{1'b0}}} == 20'h89600   ) begin
            src_channel = 60'b000000000000000001000000000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 58;
    end

    // ( 0x8c000 .. 0x90000 )
    if ( {address[RG:PAD44],{PAD44{1'b0}}} == 20'h8c000   ) begin
            src_channel = 60'b000000000000000100000000000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 10;
    end

    // ( 0x90000 .. 0x98000 )
    if ( {address[RG:PAD45],{PAD45{1'b0}}} == 20'h90000   ) begin
            src_channel = 60'b000000000000001000000000000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 23;
    end

    // ( 0x98000 .. 0x99000 )
    if ( {address[RG:PAD46],{PAD46{1'b0}}} == 20'h98000   ) begin
            src_channel = 60'b000000000000010000000000000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 35;
    end

    // ( 0x99400 .. 0x99420 )
    if ( {address[RG:PAD47],{PAD47{1'b0}}} == 20'h99400   ) begin
            src_channel = 60'b000000000001000000000000000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 47;
    end

    // ( 0x99600 .. 0x99620 )
    if ( {address[RG:PAD48],{PAD48{1'b0}}} == 20'h99600   ) begin
            src_channel = 60'b000000000000100000000000000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 59;
    end

    // ( 0x9c000 .. 0xa0000 )
    if ( {address[RG:PAD49],{PAD49{1'b0}}} == 20'h9c000   ) begin
            src_channel = 60'b000000000010000000000000000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 11;
    end

    // ( 0xa0000 .. 0xa8000 )
    if ( {address[RG:PAD50],{PAD50{1'b0}}} == 20'ha0000   ) begin
            src_channel = 60'b000000000100000000000000000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 13;
    end

    // ( 0xa8000 .. 0xa9000 )
    if ( {address[RG:PAD51],{PAD51{1'b0}}} == 20'ha8000   ) begin
            src_channel = 60'b000000001000000000000000000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 25;
    end

    // ( 0xa9400 .. 0xa9420 )
    if ( {address[RG:PAD52],{PAD52{1'b0}}} == 20'ha9400   ) begin
            src_channel = 60'b000000100000000000000000000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 37;
    end

    // ( 0xa9600 .. 0xa9620 )
    if ( {address[RG:PAD53],{PAD53{1'b0}}} == 20'ha9600   ) begin
            src_channel = 60'b000000010000000000000000000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 49;
    end

    // ( 0xac000 .. 0xb0000 )
    if ( {address[RG:PAD54],{PAD54{1'b0}}} == 20'hac000   ) begin
            src_channel = 60'b000001000000000000000000000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 1;
    end

    // ( 0xb0000 .. 0xb8000 )
    if ( {address[RG:PAD55],{PAD55{1'b0}}} == 20'hb0000   ) begin
            src_channel = 60'b000010000000000000000000000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 14;
    end

    // ( 0xb8000 .. 0xb9000 )
    if ( {address[RG:PAD56],{PAD56{1'b0}}} == 20'hb8000   ) begin
            src_channel = 60'b000100000000000000000000000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 26;
    end

    // ( 0xb9400 .. 0xb9420 )
    if ( {address[RG:PAD57],{PAD57{1'b0}}} == 20'hb9400   ) begin
            src_channel = 60'b010000000000000000000000000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 38;
    end

    // ( 0xb9600 .. 0xb9620 )
    if ( {address[RG:PAD58],{PAD58{1'b0}}} == 20'hb9600   ) begin
            src_channel = 60'b001000000000000000000000000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 50;
    end

    // ( 0xbc000 .. 0xc0000 )
    if ( {address[RG:PAD59],{PAD59{1'b0}}} == 20'hbc000   ) begin
            src_channel = 60'b100000000000000000000000000000000000000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 2;
    end

end


    // --------------------------------------------------
    // Ceil(log2()) function
    // --------------------------------------------------
    function integer log2ceil;
        input reg[65:0] val;
        reg [65:0] i;

        begin
            i = 1;
            log2ceil = 0;

            while (i < val) begin
                log2ceil = log2ceil + 1;
                i = i << 1;
            end
        end
    endfunction

endmodule


