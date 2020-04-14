module GenRamFifo16D116W
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
input  [115:0] 	dataIn;

input		pop;
output [115:0]	dataOut;

input  [4:0]	almostFullThreshold;
input  [4:0]	almostEmptyThreshold;

output		full;
output		empty;
output		almostFullFlag;
output		almostEmptyFlag;
output [4:0]	fifoDepth;
output		overrun;
output		underrun;

input		cpuReadValid;
input  [3:0]	cpuReadAddress;
output		cpuReadAck;
output [115:0]	cpuReadData;

/////////////////////////////////////////////////////////////////////////////
// internal wire/reg declaration
/////////////////////////////////////////////////////////////////////////////

wire [3:0]	ramReadAddress;
wire [3:0]	ramWriteAddress;
wire [115:0]	ramWriteData;
wire		ramWriteEnable;
wire		ramReadEnable;
wire [115:0]	ramReadData;

wire		overrun;
wire		underrun;

/////////////////////////////////////////////////////////////////////////////
// Module Instantiations
/////////////////////////////////////////////////////////////////////////////

  IP_RamFifoCtrl #(16, 116) uIP_RamFifoCtrl
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

  GenRam2P16D116W uGenRam2P16D116W
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
