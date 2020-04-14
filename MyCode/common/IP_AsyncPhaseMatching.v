module IP_AsyncPhaseMatching ( 
   // Outputs
   dataOut, 
   // Inputs
   clockDataIn, clockDataOut, resetPhaseMatching, dataIn
);
   // synopsys template

   parameter         WIDTH       = 20;

   input                 clockDataIn;
   input 	         clockDataOut;
   input 	         resetPhaseMatching;
   
   output [WIDTH - 1 :0] dataOut;    
   input  [WIDTH - 1 :0] dataIn;

   wire 	         resetDataIn, resetDataOut;
   reg  [1:0] 	         fifoWritePtr;
   
   reg  [WIDTH - 1 :0]   dataOut;
   
   reg  [WIDTH - 1 :0] 	 fifoData0, fifoData1, fifoData2, fifoData3;
   
   wire [WIDTH - 1 :0] 	 fifoData0D = (fifoWritePtr[1:0]==2'b00) ? dataIn : fifoData0;
   wire [WIDTH - 1 :0] 	 fifoData1D = (fifoWritePtr[1:0]==2'b01) ? dataIn : fifoData1;
   wire [WIDTH - 1 :0] 	 fifoData2D = (fifoWritePtr[1:0]==2'b10) ? dataIn : fifoData2;
   wire [WIDTH - 1 :0] 	 fifoData3D = (fifoWritePtr[1:0]==2'b11) ? dataIn : fifoData3;

   always @(posedge clockDataIn or negedge resetDataIn)
     if (!resetDataIn) begin
          fifoData0    <= {WIDTH{1'b0}};
          fifoData1    <= {WIDTH{1'b0}};
          fifoData2    <= {WIDTH{1'b0}};
          fifoData3    <= {WIDTH{1'b0}};
          fifoWritePtr <= 2'b00;
     end else begin
          fifoData0    <= fifoData0D;
          fifoData1    <= fifoData1D;
          fifoData2    <= fifoData2D;
          fifoData3    <= fifoData3D;
	  fifoWritePtr <= fifoWritePtr + 2'b01;
     end 

   reg  [1:0]           fifoReadPtr;
   wire [WIDTH - 1 :0] 	dataOutD = ((fifoReadPtr[1:0] == 2'd0) ? fifoData0 : {WIDTH{1'b0}}) |
                                   ((fifoReadPtr[1:0] == 2'd1) ? fifoData1 : {WIDTH{1'b0}}) |
                                   ((fifoReadPtr[1:0] == 2'd2) ? fifoData2 : {WIDTH{1'b0}}) |
                                   ((fifoReadPtr[1:0] == 2'd3) ? fifoData3 : {WIDTH{1'b0}});   
   
   always @(posedge clockDataOut or negedge resetDataOut) begin
      if ( !resetDataOut ) begin
         fifoReadPtr <= 2'b00;
         dataOut     <= {WIDTH{1'b0}};
      end else begin
         fifoReadPtr <= fifoReadPtr + 2'b01;
         dataOut     <= dataOutD;   
      end
   end 
   
   IP_SyncFlop #(1) uDoubleSyncResetDataIn ( 
       .dataOut     (resetDataIn), 
       .clockOut    (clockDataIn), 
       .dataIn      (resetPhaseMatching)
   );

   IP_SyncFlop #(1) uDoubleSyncResetDataOut ( 
       .dataOut     (resetDataOut), 
       .clockOut    (clockDataOut), 
       .dataIn      (resetDataIn)
   );
	       
endmodule // IP_AsyncPhaseMatching
