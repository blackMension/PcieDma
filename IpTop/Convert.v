module Convert(
// globle signal
input clockCore,
input resetCore,

// reg bus
output reg           registerAck      ,      
output               registerError    ,    
output reg[31:0]     registerReadData , 

input                registerSelect   ,   
input                registerRead     ,     
input  [31:0]        registerAddress  ,  
input  [31:0]        registerWriteData,
// mac re-config interface
output reg           macCsrRead,
output reg           macCsrWrite,
output reg [31:0]    macCsrWriteData,
output reg [31:0]    macCsrAddress,
input      [31:0]    macCsrReadData,
input                macCsrWaitRequest          
);
reg inProc;

wire csrWrite  = registerSelect & ~registerRead & ~inProc;
wire csrRead   = registerSelect & registerRead  & ~inProc;
wire writeDone = macCsrWrite & ~macCsrWaitRequest;
wire readDone  = macCsrRead  & ~macCsrWaitRequest;

assign   registerError = 1'b0;

always@(posedge clockCore or negedge resetCore) begin
   if(!resetCore) begin
      inProc <= 1'b0;
   end
   else begin
      if(csrWrite || csrRead) begin
          inProc <= 1'b1;
      end
      else if(registerAck) begin
          inProc <= 1'b0;
      end
   end

end
always@(posedge clockCore or negedge resetCore) begin
   if(!resetCore) begin
      registerAck <= 1'b0;
   end
   else begin
      if(registerAck) registerAck <= 1'b0;
      else if(writeDone || readDone) registerAck <= 1'b1;
   end
end

always@(posedge clockCore or negedge resetCore) begin
   if(!resetCore) begin
      registerReadData <= 32'b0;
   end
   else begin
      if(readDone) registerReadData <= macCsrReadData;
   end
end

always@(posedge clockCore or negedge resetCore) begin
   if(!resetCore) begin
      macCsrWrite <= 1'b0;
   end
   else begin
      if(writeDone) macCsrWrite <= 1'b0;
      else if(csrWrite ) macCsrWrite <= 1'b1;
   end
end

always@(posedge clockCore or negedge resetCore) begin
   if(!resetCore) begin
      macCsrRead <= 1'b0;
   end
   else begin
      if(readDone) macCsrRead <= 1'b0;
      else if(csrRead ) macCsrRead <= 1'b1;
   end
end

always@(posedge clockCore or negedge resetCore) begin
   if(!resetCore) begin
      macCsrWriteData <= 32'b0;
   end
   else begin
      if(csrWrite) macCsrWriteData <= registerWriteData;
   end
end

always@(posedge clockCore or negedge resetCore) begin
   if(!resetCore) begin
      macCsrAddress <= 32'b0;
   end
   else begin
      if(csrWrite || csrRead) macCsrAddress <= {16'b0,registerAddress[15:0]};
   end
end
endmodule
