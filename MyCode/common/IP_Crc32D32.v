module  IP_Crc32D32( 
   // Outputs
   crcState, 
   // Inputs
   clockCore, clearCrc, byteEn, data, dataValid
   );
   // synopsys template

   input                 clockCore;
   input                 clearCrc;	
   input [3:0]           byteEn;
   input [31:0] 	 data;
   input 		 dataValid;
   
   output [31:0] 	 crcState;

   reg [31:0] 		 crcState;
   
   // include all CRC functions
   `include "IP_Crc32D8Include.v"
   `include "IP_Crc32D16Include.v"
   `include "IP_Crc32D24Include.v"
   `include "IP_Crc32D32Include.v"

   wire [31:0]       crc32 = nextCRC32_D32(data[31:0], crcState);

   reg [31:0] 	     crcStateEop;
   
   always @ ( posedge clockCore) begin
      if ( clearCrc ) 
         crcState  <= 32'hFFFF_FFFF;
      else if ( dataValid ) 
	 crcState  <= crcStateEop;
   end

   always @ (*) begin
      case(byteEn[3:0])
	4'b1000 : crcStateEop = nextCRC32_D8(data[31:24],  crcState);
	4'b1100 : crcStateEop = nextCRC32_D16(data[31:16], crcState);
	4'b1110 : crcStateEop = nextCRC32_D24(data[31:8], crcState);
	default : crcStateEop = crc32;
      endcase
   end

endmodule // IP_Crc32D32
