`define    SEND_OPCODE  4'b0000
`define    RCV_OPCODE   4'b0001
`define    REQ_OPCODE   4'b0011
`define    ACK_OPCODE   4'b0111
`define    WR_DONE_OPCODE   4'b0110
`define    RD_DONE_OPCODE   4'b0100

`define    PKT_TID_RANGE       47:40
`define    PKT_DATA_NUM_RANGE  50:48
`define    REQ_LEN_RANGE       39:4
`define    ACK_QUEUE_NUM_RANGE 39:24
`define    SEND_TID_RANGE      55:48

`define    DDP_PID_RANGE       15:13
`define    DDP_QN_RANGE        12:9
`define    DDP_LEN_RANGE       8:0

`define    DDP_ASSMBLE_REST_LEN 9'd6