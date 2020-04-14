module GenRegFifo8D266W
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
input  [265:0] 	dataIn;

input		pop;
output [265:0]	dataOut;

input  [3:0]	almostFullThreshold;
input  [3:0]	almostEmptyThreshold;

output		full;
output		empty;
output		almostFullFlag;
output		almostEmptyFlag;
output [3:0]	fifoDepth;
output		overrun;
output		underrun;

/////////////////////////////////////////////////////////////////////////////
// internal wire/reg declaration
/////////////////////////////////////////////////////////////////////////////

wire		clockCore;
wire		resetCore;

wire		push;
wire   [265:0] 	dataIn;

wire		pop;
wire   [265:0]	dataOut;

wire   [3:0]	almostFullThreshold;
wire   [3:0]	almostEmptyThreshold;

wire		full;
wire		empty;
wire		almostFullFlag;
wire		almostEmptyFlag;
wire   [3:0]	fifoDepth;

wire		overrun;
wire		underrun;

/////////////////////////////////////////////////////////////////////////////
// GenRegFifo Instantiation
/////////////////////////////////////////////////////////////////////////////

  IP_RegFifo #(8, 266) uIP_RegFifo
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
