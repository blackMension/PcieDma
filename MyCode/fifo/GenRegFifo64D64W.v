module GenRegFifo64D64W
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
input  [63:0] 	dataIn;

input		pop;
output [63:0]	dataOut;

input  [6:0]	almostFullThreshold;
input  [6:0]	almostEmptyThreshold;

output		full;
output		empty;
output		almostFullFlag;
output		almostEmptyFlag;
output [6:0]	fifoDepth;
output		overrun;
output		underrun;

/////////////////////////////////////////////////////////////////////////////
// internal wire/reg declaration
/////////////////////////////////////////////////////////////////////////////

wire		clockCore;
wire		resetCore;

wire		push;
wire   [63:0] 	dataIn;

wire		pop;
wire   [63:0]	dataOut;

wire   [6:0]	almostFullThreshold;
wire   [6:0]	almostEmptyThreshold;

wire		full;
wire		empty;
wire		almostFullFlag;
wire		almostEmptyFlag;
wire   [6:0]	fifoDepth;

wire		overrun;
wire		underrun;

/////////////////////////////////////////////////////////////////////////////
// GenRegFifo Instantiation
/////////////////////////////////////////////////////////////////////////////

  IP_RegFifo #(64, 64) uIP_RegFifo
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
