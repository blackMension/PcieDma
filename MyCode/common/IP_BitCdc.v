// +FHDR------------------------------------------------------------
//                 Copyright (c) 2019 
//                 ALL RIGHTS RESERVED
// -----------------------------------------------------------------
// Filename      : IP_BitCdc.v
// Author        : xjhuang
// Created On    : 2019-07-19 09:23
// Last Modified : 2019-07-22 11:15
// BaseLine      : 
// -----------------------------------------------------------------
// Description: data clock domain cross using handshake mechanism
//              From A clock domain to B clock domain
//              
// -FHDR------------------------------------------------------------

module IP_BitCdc(/*autoarg*/
    //Inputs
    clockA, resetA, validA, clockB, resetB, 

    //Outputs
    validB, validBPulse
);
   //------------------------------------------------
   // Interface Declarations
   //------------------------------------------------
   input                    clockA;
   input                    resetA;
   input                    validA;

   input                    clockB;
   input                    resetB;
   output                   validB;
   output                   validBPulse;

   //------------------------------------------------
   // Local Declarations
   //------------------------------------------------
   // A clock domain
   reg                      validALock;
   wire                     validBLockInA;

   // B clock domain
   wire                     validALockInB;
   reg                      validBLock;
   reg                      validBLockF1;

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

   assign validB      = validBLock;
   assign validBPulse = validBLock & ~validBLockF1;

endmodule

