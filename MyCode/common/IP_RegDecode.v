module IP_RegDecode (/*autoarg*/
    //Inputs
    clockCore, resetCore, registerSelect, 
    registerRead, registerAddress, registerWriteData, 
    portMask0, portMask1, portMask2, portMask3, 
    portMask4, portMask5, portMask6, portMask7, 
    portValue0, portValue1, portValue2, portValue3, 
    portValue4, portValue5, portValue6, portValue7, 
    registerAck0, registerError0, registerReadData0, 
    registerAck1, registerError1, registerReadData1, 
    registerAck2, registerError2, registerReadData2, 
    registerAck3, registerError3, registerReadData3, 
    registerAck4, registerError4, registerReadData4, 
    registerAck5, registerError5, registerReadData5, 
    registerAck6, registerError6, registerReadData6, 
    registerAck7, registerError7, registerReadData7, 

    //Outputs
    registerAck, registerError, registerReadData, 
    registerSelect0, registerRead0, registerAddress0, 
    registerWriteData0, registerSelect1, 
    registerRead1, registerAddress1, registerWriteData1, 
    registerSelect2, registerRead2, registerAddress2, 
    registerWriteData2, registerSelect3, 
    registerRead3, registerAddress3, registerWriteData3, 
    registerSelect4, registerRead4, registerAddress4, 
    registerWriteData4, registerSelect5, 
    registerRead5, registerAddress5, registerWriteData5, 
    registerSelect6, registerRead6, registerAddress6, 
    registerWriteData6, registerSelect7, 
    registerRead7, registerAddress7, registerWriteData7
);

   //global
   input		clockCore;
   input 		resetCore;

   //registers
   input 		registerSelect;
   input 		registerRead;
   input [31:0] 	registerAddress;
   input [31:0] 	registerWriteData;
   output 		registerAck;
   output 		registerError;   
   output [31:0] 	registerReadData;

   // this is hardwired on chip so I am not going to flop in
   // the disabled port should have Mask set to all 1.
   // to broadcast set Mask to 0
   input [31:0] 	portMask0;  
   input [31:0] 	portMask1;
   input [31:0] 	portMask2;
   input [31:0] 	portMask3;
   input [31:0] 	portMask4;
   input [31:0] 	portMask5;
   input [31:0] 	portMask6;
   input [31:0] 	portMask7;

   input [31:0]         portValue0;
   input [31:0]         portValue1;
   input [31:0]         portValue2;
   input [31:0]         portValue3;
   input [31:0]         portValue4;
   input [31:0]         portValue5;
   input [31:0]         portValue6;
   input [31:0]         portValue7;
   
//VWEAVE: BEGIN PERL
//for($i=0;$i<8;$i=$i+1){
//vprint "  input         registerAck$i;  \n";
//vprint "  input         registerError$i;\n";
//vprint "  input [31:0]  registerReadData$i; \n";
//vprint "  output        registerSelect$i;   \n";
//vprint "  output        registerRead$i;     \n";
//vprint "  output [31:0] registerAddress$i;  \n";
//vprint "  output [31:0] registerWriteData$i;\n";
//print "\n";
//}
//
//VWEAVE: END PERL
// VWEAVE: BEGIN GENERATED
  input         registerAck0;  
  input         registerError0;
  input [31:0]  registerReadData0; 
  output        registerSelect0;   
  output        registerRead0;     
  output [31:0] registerAddress0;  
  output [31:0] registerWriteData0;

  input         registerAck1;  
  input         registerError1;
  input [31:0]  registerReadData1; 
  output        registerSelect1;   
  output        registerRead1;     
  output [31:0] registerAddress1;  
  output [31:0] registerWriteData1;

  input         registerAck2;  
  input         registerError2;
  input [31:0]  registerReadData2; 
  output        registerSelect2;   
  output        registerRead2;     
  output [31:0] registerAddress2;  
  output [31:0] registerWriteData2;

  input         registerAck3;  
  input         registerError3;
  input [31:0]  registerReadData3; 
  output        registerSelect3;   
  output        registerRead3;     
  output [31:0] registerAddress3;  
  output [31:0] registerWriteData3;

  input         registerAck4;  
  input         registerError4;
  input [31:0]  registerReadData4; 
  output        registerSelect4;   
  output        registerRead4;     
  output [31:0] registerAddress4;  
  output [31:0] registerWriteData4;

  input         registerAck5;  
  input         registerError5;
  input [31:0]  registerReadData5; 
  output        registerSelect5;   
  output        registerRead5;     
  output [31:0] registerAddress5;  
  output [31:0] registerWriteData5;

  input         registerAck6;  
  input         registerError6;
  input [31:0]  registerReadData6; 
  output        registerSelect6;   
  output        registerRead6;     
  output [31:0] registerAddress6;  
  output [31:0] registerWriteData6;

  input         registerAck7;  
  input         registerError7;
  input [31:0]  registerReadData7; 
  output        registerSelect7;   
  output        registerRead7;     
  output [31:0] registerAddress7;  
  output [31:0] registerWriteData7;

// VWEAVE: END GENERATED

   // flop in and out
   reg 		      registerAck;
   reg 		      registerError;   
   reg [31:0] 	      registerReadData;
   
   reg                registerSelectS;
   reg                registerReadS;
   reg [31:0]         registerAddressS;
   reg [31:0]         registerWriteDataS;

   reg                registerSelect0;
   reg                registerRead0;
   reg [31:0]         registerAddress0;
   reg [31:0]         registerWriteData0;

   reg                registerSelect1;
   reg                registerRead1;
   reg [31:0]         registerAddress1;
   reg [31:0]         registerWriteData1;

   reg                registerSelect2;
   reg                registerRead2;
   reg [31:0]         registerAddress2;
   reg [31:0]         registerWriteData2;

   reg                registerSelect3;
   reg                registerRead3;
   reg [31:0]         registerAddress3;
   reg [31:0]         registerWriteData3;

   reg                registerSelect4;
   reg                registerRead4;
   reg [31:0]         registerAddress4;
   reg [31:0]         registerWriteData4;

   reg                registerSelect5;
   reg                registerRead5;
   reg [31:0]         registerAddress5;
   reg [31:0]         registerWriteData5;

   reg                registerSelect6;
   reg                registerRead6;
   reg [31:0]         registerAddress6;
   reg [31:0]         registerWriteData6;

   reg                registerSelect7;
   reg                registerRead7;
   reg [31:0]         registerAddress7;
   reg [31:0]         registerWriteData7;

   reg                registerAck0S;
   reg                registerError0S;
   reg [31:0]         registerReadData0S;

   reg                registerAck1S;
   reg                registerError1S;
   reg [31:0]         registerReadData1S;

   reg                registerAck2S;
   reg                registerError2S;
   reg [31:0]         registerReadData2S;

   reg                registerAck3S;
   reg                registerError3S;
   reg [31:0]         registerReadData3S;

   reg                registerAck4S;
   reg                registerError4S;
   reg [31:0]         registerReadData4S;

   reg                registerAck5S;
   reg                registerError5S;
   reg [31:0]         registerReadData5S;

   reg                registerAck6S;
   reg                registerError6S;
   reg [31:0]         registerReadData6S;

   reg                registerAck7S;
   reg                registerError7S;
   reg [31:0]         registerReadData7S;

   wire registerSelect0D = ((registerAddressS & portMask0) == (portValue0 & portMask0)) && registerSelectS;
   wire registerSelect1D = ((registerAddressS & portMask1) == (portValue1 & portMask1)) && registerSelectS;
   wire registerSelect2D = ((registerAddressS & portMask2) == (portValue2 & portMask2)) && registerSelectS;
   wire registerSelect3D = ((registerAddressS & portMask3) == (portValue3 & portMask3)) && registerSelectS;
   wire registerSelect4D = ((registerAddressS & portMask4) == (portValue4 & portMask4)) && registerSelectS;
   wire registerSelect5D = ((registerAddressS & portMask5) == (portValue5 & portMask5)) && registerSelectS;
   wire registerSelect6D = ((registerAddressS & portMask6) == (portValue6 & portMask6)) && registerSelectS;
   wire registerSelect7D = ((registerAddressS & portMask7) == (portValue7 & portMask7)) && registerSelectS;
   
   wire registerRead0D = registerSelect0D && registerReadS;
   wire registerRead1D = registerSelect1D && registerReadS;
   wire registerRead2D = registerSelect2D && registerReadS;
   wire registerRead3D = registerSelect3D && registerReadS;
   wire registerRead4D = registerSelect4D && registerReadS;
   wire registerRead5D = registerSelect5D && registerReadS;
   wire registerRead6D = registerSelect6D && registerReadS;
   wire registerRead7D = registerSelect7D && registerReadS;
   
   wire registerAckD = registerAck0S | registerAck1S | 
                       registerAck2S | registerAck3S |
                       registerAck4S | registerAck5S |
                       registerAck6S | registerAck7S;

   reg [31:0] registerReadDataD;
   always @ (*) begin
      case ({registerAck7S, registerAck6S, registerAck5S, registerAck4S, 
             registerAck3S, registerAck2S, registerAck1S, registerAck0S})
         8'h01 : begin registerReadDataD = registerReadData0S; end
         8'h02 : begin registerReadDataD = registerReadData1S; end
         8'h04 : begin registerReadDataD = registerReadData2S; end
         8'h08 : begin registerReadDataD = registerReadData3S; end
         8'h10 : begin registerReadDataD = registerReadData4S; end
         8'h20 : begin registerReadDataD = registerReadData5S; end
         8'h40 : begin registerReadDataD = registerReadData6S; end
         8'h80 : begin registerReadDataD = registerReadData7S; end
         default: begin registerReadDataD = 32'hxxxx_xxxx; end
      endcase
   end
   
   wire registerErrorD = (registerError0S & registerAck0S) | (registerError1S & registerAck1S) | 
                         (registerError2S & registerAck2S) | (registerError3S & registerAck3S) |
                         (registerError4S & registerAck4S) | (registerError5S & registerAck5S) |
                         (registerError6S & registerAck6S) | (registerError7S & registerAck7S);
      
   always @(posedge clockCore) begin
      registerSelectS    <=  registerSelect;
      registerAddressS   <=  registerAddress;
      registerReadS      <=  registerRead;
      registerWriteDataS <=  registerWriteData;

      registerAck        <=  registerAckD;
      registerError      <=  registerErrorD;
      registerReadData   <=  registerReadDataD;

      registerSelect0    <=  registerSelect0D;
      registerSelect1    <=  registerSelect1D;
      registerSelect2    <=  registerSelect2D;
      registerSelect3    <=  registerSelect3D;
      registerSelect4    <=  registerSelect4D;
      registerSelect5    <=  registerSelect5D;
      registerSelect6    <=  registerSelect6D;
      registerSelect7    <=  registerSelect7D;

      registerRead0    <=  registerRead0D;
      registerRead1    <=  registerRead1D;
      registerRead2    <=  registerRead2D;
      registerRead3    <=  registerRead3D;
      registerRead4    <=  registerRead4D;
      registerRead5    <=  registerRead5D;
      registerRead6    <=  registerRead6D;
      registerRead7    <=  registerRead7D;

      registerAddress0    <=  registerAddressS;
      registerAddress1    <=  registerAddressS;
      registerAddress2    <=  registerAddressS;
      registerAddress3    <=  registerAddressS;
      registerAddress4    <=  registerAddressS;
      registerAddress5    <=  registerAddressS;
      registerAddress6    <=  registerAddressS;
      registerAddress7    <=  registerAddressS;

      registerWriteData0    <=  registerWriteDataS;
      registerWriteData1    <=  registerWriteDataS;
      registerWriteData2    <=  registerWriteDataS;
      registerWriteData3    <=  registerWriteDataS;
      registerWriteData4    <=  registerWriteDataS;
      registerWriteData5    <=  registerWriteDataS;
      registerWriteData6    <=  registerWriteDataS;
      registerWriteData7    <=  registerWriteDataS;

      registerAck0S    <=  registerAck0;
      registerAck1S    <=  registerAck1;
      registerAck2S    <=  registerAck2;
      registerAck3S    <=  registerAck3;
      registerAck4S    <=  registerAck4;
      registerAck5S    <=  registerAck5;
      registerAck6S    <=  registerAck6;
      registerAck7S    <=  registerAck7;

      registerError0S    <=  registerError0;
      registerError1S    <=  registerError1;
      registerError2S    <=  registerError2;
      registerError3S    <=  registerError3;
      registerError4S    <=  registerError4;
      registerError5S    <=  registerError5;
      registerError6S    <=  registerError6;
      registerError7S    <=  registerError7;

      registerReadData0S    <=  registerReadData0;
      registerReadData1S    <=  registerReadData1;
      registerReadData2S    <=  registerReadData2;
      registerReadData3S    <=  registerReadData3;
      registerReadData4S    <=  registerReadData4;
      registerReadData5S    <=  registerReadData5;
      registerReadData6S    <=  registerReadData6;
      registerReadData7S    <=  registerReadData7;
   end

endmodule
