// +FHDR------------------------------------------------------------
//                 Copyright (c) 2019 
//                 ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : IP_DataCdc.v
// Author        : xjhuang
// Created On    : 2019-07-19 09:23
// Last Modified : 2019-07-19 21:32
// BaseLine      : 
// -----------------------------------------------------------------
// Description: data clock domain cross using handshake mechanism
//              From A clock domain to B clock domain
//              
// -FHDR------------------------------------------------------------

module IP_DataCdc(/*autoarg*/
    //Inputs
    clockA, resetA, validA, dataA, clockB, 
    resetB, 

    //Outputs
    validB, dataB
);
   //------------------------------------------------
   // Parameters Declarations
   //------------------------------------------------
   parameter  DATAWIDTH = 32;

   //------------------------------------------------
   // Interface Declarations
   //------------------------------------------------
   input                    clockA;
   input                    resetA;
   input                    validA;
   input  [DATAWIDTH-1:0]   dataA;

   input                    clockB;
   input                    resetB;
   output                   validB;
   output [DATAWIDTH-1:0]   dataB;

   //------------------------------------------------
   // Local Declarations
   //------------------------------------------------
   // A clock domain
   reg                      validALock;
   reg    [DATAWIDTH-1:0]   dataALock;
   wire                     validBLockInA;

   // B clock domain
   wire                     validALockInB;
   wire                     validBInt;
   reg                      validBLock;
   reg                      validBLockF1;

   reg                      validB;
   reg    [DATAWIDTH-1:0]   dataB;

   //------------------------------------------------
   // Main Function
   //------------------------------------------------
   //////////////////////////
   // A clock domain
   //////////////////////////
   always @(posedge clockA or negedge resetA) begin
      if(!resetA) begin
         validALock <= 1'b0;
      end
      else begin
         if(validA & ~validALock) begin
            validALock <= 1'b1;
         end
         else if(validBLockInA) begin
            validALock <= 1'b0;
         end
      end
   end

   always @(posedge clockA) begin
      if(validA & ~validALock) begin
         dataALock <= dataA;
      end
   end

   IP_SyncFlop #(1) uDoubleSyncValidBLock ( 
     .dataOut     (validBLockInA), 

     .clockOut    (clockA), 
     .dataIn      (validBLock)
   );

   //////////////////////////
   // B clock domain
   //////////////////////////
   IP_SyncFlop #(1) uDoubleSyncValidALock ( 
     .dataOut     (validALockInB), 

     .clockOut    (clockB), 
     .dataIn      (validALock)
   );

   always @(posedge clockB or negedge resetB) begin
      if(!resetB) begin
         validBLock <= 1'b0;
      end
      else begin
         if(validALockInB & ~validBLock) begin
            validBLock <= 1'b1;
         end
         else if(~validALockInB) begin
            validBLock <= 1'b0;
         end
      end
   end

   always @(posedge clockB or negedge resetB) begin
      if(!resetB) begin
         validBLockF1 <= 1'b0;
      end
      else begin
         validBLockF1 <= validBLock;
      end
   end

   assign validBInt = validBLock & ~validBLockF1;

   always @(posedge clockB or negedge resetB) begin
      if(!resetB) begin
         validB <= 1'b0;
      end
      else begin
         validB <= validBInt;
      end
   end

   always @(posedge clockB) begin
      dataB <= dataALock;
   end

endmodule

