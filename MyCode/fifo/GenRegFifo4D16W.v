module GenRegFifo4D16W
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
input  [15:0] 	dataIn;

input		pop;
output [15:0]	dataOut;

input  [2:0]	almostFullThreshold;
input  [2:0]	almostEmptyThreshold;

output		full;
output		empty;
output		almostFullFlag;
output		almostEmptyFlag;
output [2:0]	fifoDepth;
output		overrun;
output		underrun;

/////////////////////////////////////////////////////////////////////////////
// internal wire/reg declaration
/////////////////////////////////////////////////////////////////////////////

wire		clockCore;
wire		resetCore;

wire		push;
wire   [15:0] 	dataIn;

wire		pop;
wire   [15:0]	dataOut;

wire   [2:0]	almostFullThreshold;
wire   [2:0]	almostEmptyThreshold;

wire		full;
wire		empty;
wire		almostFullFlag;
wire		almostEmptyFlag;
wire   [2:0]	fifoDepth;

wire		overrun;
wire		underrun;

/////////////////////////////////////////////////////////////////////////////
// GenRegFifo Instantiation
/////////////////////////////////////////////////////////////////////////////

  IP_RegFifo #(4, 16) uIP_RegFifo
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
