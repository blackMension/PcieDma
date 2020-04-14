module GenRamFifo8D256W
	(
	// Outputs;
	dataOut,
	full,
	empty,
	almostFullFlag,
	almostEmptyFlag,
	fifoDepth,
	overrun,
	underrun,
	cpuReadAck,
	cpuReadData,
	// Inputs;
	clockCore,
	resetCore,
	push,
	dataIn,
	pop,
	almostFullThreshold,
	almostEmptyThreshold,
	cpuReadValid,
	cpuReadAddress
	);

/////////////////////////////////////////////////////////////////////////////
// INPUT/OUTPUT declaration
/////////////////////////////////////////////////////////////////////////////

input		clockCore;
input		resetCore;

input		push;
input  [255:0] 	dataIn;

input		pop;
output [255:0]	dataOut;

input  [3:0]	almostFullThreshold;
input  [3:0]	almostEmptyThreshold;

output		full;
output		empty;
output		almostFullFlag;
output		almostEmptyFlag;
output [3:0]	fifoDepth;
output		overrun;
output		underrun;

input		cpuReadValid;
input  [2:0]	cpuReadAddress;
output		cpuReadAck;
output [255:0]	cpuReadData;

/////////////////////////////////////////////////////////////////////////////
// internal wire/reg declaration
/////////////////////////////////////////////////////////////////////////////

wire [2:0]	ramReadAddress;
wire [2:0]	ramWriteAddress;
wire [255:0]	ramWriteData;
wire		ramWriteEnable;
wire		ramReadEnable;
wire [255:0]	ramReadData;

wire		overrun;
wire		underrun;

/////////////////////////////////////////////////////////////////////////////
// Module Instantiations
/////////////////////////////////////////////////////////////////////////////

  IP_RamFifoCtrl #(8, 256) uIP_RamFifoCtrl
	(
	// Outputs;
	.dataOut				( dataOut		),
	.full					( full			),
	.empty					( empty			),
	.almostFullFlag				( almostFullFlag	),
	.almostEmptyFlag			( almostEmptyFlag	),
	.fifoDepth				( fifoDepth		),
	.overrun				( overrun		),
	.underrun				( underrun		),
	.ramWriteEnable				( ramWriteEnable	),
	.ramWriteAddress			( ramWriteAddress	),
	.ramWriteData				( ramWriteData		),
	.ramReadAddress				( ramReadAddress	),
	.ramReadEnable				( ramReadEnable		),
	.cpuReadAck				( cpuReadAck		),
	.cpuReadData				( cpuReadData		),
	// Inputs;
	.clockCore				( clockCore		),
	.resetCore				( resetCore		),
	.push					( push			),
	.dataIn					( dataIn		),
	.pop					( pop			),
	.almostFullThreshold			( almostFullThreshold	),
	.almostEmptyThreshold			( almostEmptyThreshold	),
	.ramReadData				( ramReadData		),
	.cpuReadValid				( cpuReadValid		),
	.cpuReadAddress				( cpuReadAddress	) 
	);

  GenRam2P8D256W uGenRam2P8D256W
	(
	// Outputs;
	.readData     		 ( ramReadData     ),
	// Inputs;
	.clockCore    		 ( clockCore       ),
	.enableRead    		 ( ramReadEnable   ),
	.addressRead      	 ( ramReadAddress  ),
	.enableWrite    	 ( ramWriteEnable  ),
	.addressWrite  		 ( ramWriteAddress ),
	.writeData    		 ( ramWriteData    ) 
	);

endmodule
