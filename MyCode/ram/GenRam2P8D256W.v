module GenRam2P8D256W
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
  input  [2:0]	addressRead;
  input		enableWrite;
  input  [2:0]	addressWrite;
  input  [255:0]	writeData;

  output [255:0]	readData;

  ////////////////////////////////////////////
  wire 		clockCore;
  wire 		enableRead;
  wire   [2:0]	addressRead;
  wire 		enableWrite;
  wire   [2:0]	addressWrite;
  wire   [255:0]	writeData;

  wire   [255:0]	readData;

  wire 		enableReadInt;
  wire   [2:0]	addressReadInt;
  wire 		enableWriteInt;
  wire   [2:0]	addressWriteInt;
  wire   [255:0]	writeDataInt;

  wire   [255:0]	readDataInt;

  assign enableReadInt   = enableRead;
  assign addressReadInt  = addressRead;
  assign enableWriteInt  = enableWrite;
  assign addressWriteInt = addressWrite;
  assign writeDataInt    = writeData;

  IP_Ram2P #(8, 256) uIP_Ram2P
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
