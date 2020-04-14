module GenRam2P16D116W
	(
	// Outputs
	readData,
	// Inputs
	clockCore,
	enableRead,
	addressRead,
	enableWrite,
	addressWrite,
	writeData
	);

  input		clockCore;
  input		enableRead;
  input  [3:0]	addressRead;
  input		enableWrite;
  input  [3:0]	addressWrite;
  input  [115:0]	writeData;

  output [115:0]	readData;

  ////////////////////////////////////////////
  wire 		clockCore;
  wire 		enableRead;
  wire   [3:0]	addressRead;
  wire 		enableWrite;
  wire   [3:0]	addressWrite;
  wire   [115:0]	writeData;

  wire   [115:0]	readData;

  wire 		enableReadInt;
  wire   [3:0]	addressReadInt;
  wire 		enableWriteInt;
  wire   [3:0]	addressWriteInt;
  wire   [115:0]	writeDataInt;

  wire   [115:0]	readDataInt;

  assign enableReadInt   = enableRead;
  assign addressReadInt  = addressRead;
  assign enableWriteInt  = enableWrite;
  assign addressWriteInt = addressWrite;
  assign writeDataInt    = writeData;

  IP_Ram2P #(16, 116) uIP_Ram2P
	(
	// Outputs;
	.readData     		 ( readDataInt     ),
	// Inputs;
	.clockCore    		 ( clockCore       ),
	.enableRead    		 ( enableReadInt   ),
	.addressRead      	 ( addressReadInt  ),
	.enableWrite    	 ( enableWriteInt  ),
	.addressWrite  		 ( addressWriteInt ),
	.writeData    		 ( writeDataInt    ) 
	);

  assign readData = readDataInt;

endmodule
