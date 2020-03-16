module GenRam2P256D3W
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
  input  [7:0]	addressRead;
  input		enableWrite;
  input  [7:0]	addressWrite;
  input  [2:0]	writeData;

  output [2:0]	readData;

  ////////////////////////////////////////////
  wire 		clockCore;
  wire 		enableRead;
  wire   [7:0]	addressRead;
  wire 		enableWrite;
  wire   [7:0]	addressWrite;
  wire   [2:0]	writeData;

  wire   [2:0]	readData;

  wire 		enableReadInt;
  wire   [7:0]	addressReadInt;
  wire 		enableWriteInt;
  wire   [7:0]	addressWriteInt;
  wire   [2:0]	writeDataInt;

  wire   [2:0]	readDataInt;

  assign enableReadInt   = enableRead;
  assign addressReadInt  = addressRead;
  assign enableWriteInt  = enableWrite;
  assign addressWriteInt = addressWrite;
  assign writeDataInt    = writeData;

  IP_Ram2P #(256, 3) uIP_Ram2P
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
