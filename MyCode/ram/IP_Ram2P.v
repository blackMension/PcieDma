module IP_Ram2P (
   // Outputs
   readData, 
   // Inputs
   clockCore, enableRead, addressRead, enableWrite, 
   addressWrite, writeData
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
  input				enableRead; 
  input  [ADDRWIDTH-1:0]	addressRead; 
  input				enableWrite; 
  input  [ADDRWIDTH-1:0]	addressWrite; 
  input  [DATAWIDTH-1:0]	writeData; 
  
  output [DATAWIDTH-1:0]	readData;
  
  // synopsys translate_off
  wire 				clockCore; 
  wire 				enableRead; 
  wire   [ADDRWIDTH-1:0]	addressRead; 
  wire 				enableWrite; 
  wire   [ADDRWIDTH-1:0]	addressWrite; 
  wire   [DATAWIDTH-1:0]	writeData; 
  
  reg    [DATAWIDTH-1:0]	readData;

  reg    [DATAWIDTH-1:0]	mem[DEPTH-1:0];

  always @(posedge clockCore) begin
     if(enableWrite) begin
        mem[addressWrite] <= writeData;   
     end
  end
  
  
  wire[DATAWIDTH-1:0]  readDataTmp = (enableRead & ~(enableWrite & (addressWrite == addressRead))) ? mem[addressRead] : {DATAWIDTH{1'bx}};

  always @(posedge clockCore) begin
     readData <= readDataTmp;
  end

  //verilint translate off
  //VCS coverage off
  always @(posedge clockCore) begin
     if (enableRead & enableWrite & (addressWrite == addressRead)) begin
       //$display("[ERROR] At time: %t ns, read/write with the same read/write addresses at the same cycle in RAM [%m].", $time);
       //$finish;
     end
  end
  //VCS coverage on  
  //verilint translate on

  // assertions
//   write_addr_unknown : assert property (@ (posedge clockCore) ((enableWrite == 1'b0) or (enableWrite == 1'b1) and ($isunknown(addressWrite)==0)) )
//                                                               else $fatal(0,"[FATAL] %m : Write addr contains unknown! ");

//   read_addr_unknown : assert property (@ (posedge clockCore)  ((enableRead == 1'b0) or (enableRead == 1'b1) and ($isunknown(addressRead)==0)) )
//                                                               else $fatal(0,"[FATAL] %m : Read addr contains unknown! ");

//   write_addr_out_of_range : assert property (@ (posedge clockCore) ((enableWrite == 1'd0) or ((enableWrite == 1'b1) and (addressWrite < DEPTH))) ) 
//                                                                    else $fatal(0,"[FATAL] %m : Write addr %6d out of mem addr range 0~%d ! ", addressWrite, (DEPTH-1));

//   read_addr_out_of_range : assert property (@ (posedge clockCore) ((enableRead == 1'd0) or ((enableRead == 1'b1) and (addressRead < DEPTH))) )
//                                                                   else $fatal(0,"[FATAL] %m : Read addr %6d out of mem addr range 0~%d ! ", addressRead, (DEPTH-1));

    
  // synopsys translate_on
	    
endmodule // IP_Ram2P

