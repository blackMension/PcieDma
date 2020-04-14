module GenRegFifo16D88W
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
	// Inputs;
	clockCore,
	resetCore,
	push,
	dataIn,
	pop,
	almostFullThreshold,
	almostEmptyThreshold
	);

/////////////////////////////////////////////////////////////////////////////
// INPUT/OUTPUT declaration
/////////////////////////////////////////////////////////////////////////////

input		clockCore;
input		resetCore;

input		push;
input  [87:0] 	dataIn;

input		pop;
output [87:0]	dataOut;

input  [4:0]	almostFullThreshold;
input  [4:0]	almostEmptyThreshold;

output		full;
output		empty;
output		almostFullFlag;
output		almostEmptyFlag;
output [4:0]	fifoDepth;
output		overrun;
output		underrun;

/////////////////////////////////////////////////////////////////////////////
// internal wire/reg declaration
/////////////////////////////////////////////////////////////////////////////

wire		clockCore;
wire		resetCore;

wire		push;
wire   [87:0] 	dataIn;

wire		pop;
wire   [87:0]	dataOut;

wire   [4:0]	almostFullThreshold;
wire   [4:0]	almostEmptyThreshold;

wire		full;
wire		empty;
wire		almostFullFlag;
wire		almostEmptyFlag;
wire   [4:0]	fifoDepth;

wire		overrun;
wire		underrun;

/////////////////////////////////////////////////////////////////////////////
// GenRegFifo Instantiation
/////////////////////////////////////////////////////////////////////////////

  IP_RegFifo #(16, 88) uIP_RegFifo
	(
	// Outputs;
	.dataOut               ( dataOut               ),
	.full                  ( full                  ),
	.empty                 ( empty                 ),
	.almostFullFlag        ( almostFullFlag        ),
	.almostEmptyFlag       ( almostEmptyFlag       ),
	.fifoDepth             ( fifoDepth             ),
	.overrun               ( overrun               ),
	.underrun              ( underrun              ),
	// Inputs;
	.clockCore             ( clockCore             ),
	.resetCore             ( resetCore             ),
	.push                  ( push                  ),
	.dataIn                ( dataIn                ),
	.pop                   ( pop                   ),
	.almostFullThreshold   ( almostFullThreshold   ),
	.almostEmptyThreshold  ( almostEmptyThreshold  ) 
	);

endmodule
