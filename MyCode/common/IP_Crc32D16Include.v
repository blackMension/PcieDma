///////////////////////////////////////////////////////////////////////
// File:  CRC32_D16.v                             
// Date:  Fri May 24 17:18:16 2002                                                      
//                                                                     
// Copyright (C) 1999 Easics NV.                 
// This source file may be used and distributed without restriction    
// provided that this copyright statement is not removed from the file 
// and that any derivative work contains the original copyright notice
// and the associated disclaimer.
//
// THIS SOURCE FILE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS
// OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
// WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
//
// Purpose: Verilog module containing a synthesizable CRC function
//   * polynomial: (0 1 2 4 5 7 8 10 11 12 16 22 23 26 32)
//   * data width: 16
//                                                                     
// Info: jand@easics.be (Jan Decaluwe)                           
//       http://www.easics.com                                  
///////////////////////////////////////////////////////////////////////
  // polynomial: (0 1 2 4 5 7 8 10 11 12 16 22 23 26 32)
  // data width: 16
  // convention: the first serial data bit is D[15]
  function [31:0] nextCRC32_D16;

    input [15:0] Data;
    input [31:0] CRC;

    reg [15:0] D;
    reg [31:0] C;
    reg [31:0] NewCRC;

  begin

    D = Data;
    C = CRC;

    NewCRC[0] = D[12] ^ D[10] ^ D[9] ^ D[6] ^ D[0] ^ C[16] ^ C[22] ^ 
                C[25] ^ C[26] ^ C[28];
    NewCRC[1] = D[13] ^ D[12] ^ D[11] ^ D[9] ^ D[7] ^ D[6] ^ D[1] ^ 
                D[0] ^ C[16] ^ C[17] ^ C[22] ^ C[23] ^ C[25] ^ C[27] ^ 
                C[28] ^ C[29];
    NewCRC[2] = D[14] ^ D[13] ^ D[9] ^ D[8] ^ D[7] ^ D[6] ^ D[2] ^ 
                D[1] ^ D[0] ^ C[16] ^ C[17] ^ C[18] ^ C[22] ^ C[23] ^ 
                C[24] ^ C[25] ^ C[29] ^ C[30];
    NewCRC[3] = D[15] ^ D[14] ^ D[10] ^ D[9] ^ D[8] ^ D[7] ^ D[3] ^ 
                D[2] ^ D[1] ^ C[17] ^ C[18] ^ C[19] ^ C[23] ^ C[24] ^ 
                C[25] ^ C[26] ^ C[30] ^ C[31];
    NewCRC[4] = D[15] ^ D[12] ^ D[11] ^ D[8] ^ D[6] ^ D[4] ^ D[3] ^ 
                D[2] ^ D[0] ^ C[16] ^ C[18] ^ C[19] ^ C[20] ^ C[22] ^ 
                C[24] ^ C[27] ^ C[28] ^ C[31];
    NewCRC[5] = D[13] ^ D[10] ^ D[7] ^ D[6] ^ D[5] ^ D[4] ^ D[3] ^ 
                D[1] ^ D[0] ^ C[16] ^ C[17] ^ C[19] ^ C[20] ^ C[21] ^ 
                C[22] ^ C[23] ^ C[26] ^ C[29];
    NewCRC[6] = D[14] ^ D[11] ^ D[8] ^ D[7] ^ D[6] ^ D[5] ^ D[4] ^ 
                D[2] ^ D[1] ^ C[17] ^ C[18] ^ C[20] ^ C[21] ^ C[22] ^ 
                C[23] ^ C[24] ^ C[27] ^ C[30];
    NewCRC[7] = D[15] ^ D[10] ^ D[8] ^ D[7] ^ D[5] ^ D[3] ^ D[2] ^ 
                D[0] ^ C[16] ^ C[18] ^ C[19] ^ C[21] ^ C[23] ^ C[24] ^ 
                C[26] ^ C[31];
    NewCRC[8] = D[12] ^ D[11] ^ D[10] ^ D[8] ^ D[4] ^ D[3] ^ D[1] ^ 
                D[0] ^ C[16] ^ C[17] ^ C[19] ^ C[20] ^ C[24] ^ C[26] ^ 
                C[27] ^ C[28];
    NewCRC[9] = D[13] ^ D[12] ^ D[11] ^ D[9] ^ D[5] ^ D[4] ^ D[2] ^ 
                D[1] ^ C[17] ^ C[18] ^ C[20] ^ C[21] ^ C[25] ^ C[27] ^ 
                C[28] ^ C[29];
    NewCRC[10] = D[14] ^ D[13] ^ D[9] ^ D[5] ^ D[3] ^ D[2] ^ D[0] ^ 
                 C[16] ^ C[18] ^ C[19] ^ C[21] ^ C[25] ^ C[29] ^ C[30];
    NewCRC[11] = D[15] ^ D[14] ^ D[12] ^ D[9] ^ D[4] ^ D[3] ^ D[1] ^ 
                 D[0] ^ C[16] ^ C[17] ^ C[19] ^ C[20] ^ C[25] ^ C[28] ^ 
                 C[30] ^ C[31];
    NewCRC[12] = D[15] ^ D[13] ^ D[12] ^ D[9] ^ D[6] ^ D[5] ^ D[4] ^ 
                 D[2] ^ D[1] ^ D[0] ^ C[16] ^ C[17] ^ C[18] ^ C[20] ^ 
                 C[21] ^ C[22] ^ C[25] ^ C[28] ^ C[29] ^ C[31];
    NewCRC[13] = D[14] ^ D[13] ^ D[10] ^ D[7] ^ D[6] ^ D[5] ^ D[3] ^ 
                 D[2] ^ D[1] ^ C[17] ^ C[18] ^ C[19] ^ C[21] ^ C[22] ^ 
                 C[23] ^ C[26] ^ C[29] ^ C[30];
    NewCRC[14] = D[15] ^ D[14] ^ D[11] ^ D[8] ^ D[7] ^ D[6] ^ D[4] ^ 
                 D[3] ^ D[2] ^ C[18] ^ C[19] ^ C[20] ^ C[22] ^ C[23] ^ 
                 C[24] ^ C[27] ^ C[30] ^ C[31];
    NewCRC[15] = D[15] ^ D[12] ^ D[9] ^ D[8] ^ D[7] ^ D[5] ^ D[4] ^ 
                 D[3] ^ C[19] ^ C[20] ^ C[21] ^ C[23] ^ C[24] ^ C[25] ^ 
                 C[28] ^ C[31];
    NewCRC[16] = D[13] ^ D[12] ^ D[8] ^ D[5] ^ D[4] ^ D[0] ^ C[0] ^ 
                 C[16] ^ C[20] ^ C[21] ^ C[24] ^ C[28] ^ C[29];
    NewCRC[17] = D[14] ^ D[13] ^ D[9] ^ D[6] ^ D[5] ^ D[1] ^ C[1] ^ 
                 C[17] ^ C[21] ^ C[22] ^ C[25] ^ C[29] ^ C[30];
    NewCRC[18] = D[15] ^ D[14] ^ D[10] ^ D[7] ^ D[6] ^ D[2] ^ C[2] ^ 
                 C[18] ^ C[22] ^ C[23] ^ C[26] ^ C[30] ^ C[31];
    NewCRC[19] = D[15] ^ D[11] ^ D[8] ^ D[7] ^ D[3] ^ C[3] ^ C[19] ^ 
                 C[23] ^ C[24] ^ C[27] ^ C[31];
    NewCRC[20] = D[12] ^ D[9] ^ D[8] ^ D[4] ^ C[4] ^ C[20] ^ C[24] ^ 
                 C[25] ^ C[28];
    NewCRC[21] = D[13] ^ D[10] ^ D[9] ^ D[5] ^ C[5] ^ C[21] ^ C[25] ^ 
                 C[26] ^ C[29];
    NewCRC[22] = D[14] ^ D[12] ^ D[11] ^ D[9] ^ D[0] ^ C[6] ^ C[16] ^ 
                 C[25] ^ C[27] ^ C[28] ^ C[30];
    NewCRC[23] = D[15] ^ D[13] ^ D[9] ^ D[6] ^ D[1] ^ D[0] ^ C[7] ^ 
                 C[16] ^ C[17] ^ C[22] ^ C[25] ^ C[29] ^ C[31];
    NewCRC[24] = D[14] ^ D[10] ^ D[7] ^ D[2] ^ D[1] ^ C[8] ^ C[17] ^ 
                 C[18] ^ C[23] ^ C[26] ^ C[30];
    NewCRC[25] = D[15] ^ D[11] ^ D[8] ^ D[3] ^ D[2] ^ C[9] ^ C[18] ^ 
                 C[19] ^ C[24] ^ C[27] ^ C[31];
    NewCRC[26] = D[10] ^ D[6] ^ D[4] ^ D[3] ^ D[0] ^ C[10] ^ C[16] ^ 
                 C[19] ^ C[20] ^ C[22] ^ C[26];
    NewCRC[27] = D[11] ^ D[7] ^ D[5] ^ D[4] ^ D[1] ^ C[11] ^ C[17] ^ 
                 C[20] ^ C[21] ^ C[23] ^ C[27];
    NewCRC[28] = D[12] ^ D[8] ^ D[6] ^ D[5] ^ D[2] ^ C[12] ^ C[18] ^ 
                 C[21] ^ C[22] ^ C[24] ^ C[28];
    NewCRC[29] = D[13] ^ D[9] ^ D[7] ^ D[6] ^ D[3] ^ C[13] ^ C[19] ^ 
                 C[22] ^ C[23] ^ C[25] ^ C[29];
    NewCRC[30] = D[14] ^ D[10] ^ D[8] ^ D[7] ^ D[4] ^ C[14] ^ C[20] ^ 
                 C[23] ^ C[24] ^ C[26] ^ C[30];
    NewCRC[31] = D[15] ^ D[11] ^ D[9] ^ D[8] ^ D[5] ^ C[15] ^ C[21] ^ 
                 C[24] ^ C[25] ^ C[27] ^ C[31];

    nextCRC32_D16 = NewCRC;

  end

  endfunction
