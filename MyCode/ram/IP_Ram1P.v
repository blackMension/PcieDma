module IP_Ram1P (
   // Outputs
   readData, 
   // Inputs
   clockCore, enableRam, address, enableWrite, writeData
   );
   
// synopsys template
parameter   DEPTH       = 32,
            DATAWIDTH 	= 32;

parameter   ADDRWIDTH   = (  DEPTH <= 2       ) ? 1 :
                          (( DEPTH <= 4       ) ? 2 :
                          (( DEPTH <= 8       ) ? 3 :
                          (( DEPTH <= 16      ) ? 4 :
                          (( DEPTH <= 32      ) ? 5 :
                          (( DEPTH <= 64      ) ? 6 :
                          (( DEPTH <= 128     ) ? 7 :
                          (( DEPTH <= 256     ) ? 8 :
                          (( DEPTH <= 512     ) ? 9 :
                          (( DEPTH <= 1024    ) ? 10 :
                          (( DEPTH <= 2048    ) ? 11 :
                          (( DEPTH <= 4096    ) ? 12 :
                          (( DEPTH <= 8192    ) ? 13 :
                          (( DEPTH <= 16384   ) ? 14 :
                          (( DEPTH <= 32768   ) ? 15 :
                          (( DEPTH <= 65536   ) ? 16 :
                          (( DEPTH <= 131072  ) ? 17 :
                          (( DEPTH <= 262144  ) ? 18 :
                          (( DEPTH <= 524288  ) ? 19 :
                          (( DEPTH <= 1048576 ) ? 20 : 21 )))))))))))))))))));

  input				clockCore; 
  input				enableRam; 
  input  [ADDRWIDTH-1:0]	address; 
  input				enableWrite; 
  input  [DATAWIDTH-1:0]	writeData;
  
  output [DATAWIDTH-1:0]	readData;

  // synopsys translate_off
  wire 				clockCore; 
  wire 				enableRam; 
  wire   [ADDRWIDTH-1:0]	address; 
  wire 				enableWrite; 
  wire   [DATAWIDTH-1:0]	writeData;
  
  reg	 [DATAWIDTH-1:0]	readData;

  reg    [DATAWIDTH-1:0]	mem[DEPTH-1:0];

  always @(posedge clockCore) begin
    if (enableRam & enableWrite) begin
      mem[address] <=  writeData;   
    end

    if (enableRam & ~enableWrite) begin
      readData <= mem[address];   
    end
    else begin
      readData <=  {DATAWIDTH{1'bx}};
    end
  end

  // assertion
  addr_unknown : assert property (@ (posedge clockCore) ((enableRam != 1'd1)  or ((enableRam == 1'b1) and ($isunknown(address)==0)))) 
                                                        else $fatal(0,"[FATAL] %m : addr contains unknown!!" );
  addr_out_of_range : assert property (@ (posedge clockCore) ((enableRam == 0) or ((address < DEPTH) and (enableRam == 1)))) 
                                                             else $fatal(0,"[FATAL] %m : addr %6d out of mem addr range 0~%d ! ", address, (DEPTH-1));
  
  // synopsys translate_on
    
endmodule // IP_Ram1P

