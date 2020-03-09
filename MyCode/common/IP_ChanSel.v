module IP_ChanSel ( /*autoarg*/
    //Inputs
    clockCore, resetCore, calEntry00, calEntry01, 
    calEntry02, calEntry03, calEntry04, calEntry05, 
    calEntry06, calEntry07, calEntry08, calEntry09, 
    calEntry10, calEntry11, calEntry12, calEntry13, 
    calEntry14, calEntry15, calEntry16, calEntry17, 
    calEntry18, calEntry19, calEntry20, calEntry21, 
    calEntry22, calEntry23, calEntry24, calEntry25, 
    calEntry26, calEntry27, calEntry28, calEntry29, 
    calEntry30, calEntry31, calEntry32, calEntry33, 
    calEntry34, calEntry35, calEntry36, calEntry37, 
    calEntry38, calEntry39, calEntry40, calEntry41, 
    calEntry42, calEntry43, calEntry44, calEntry45, 
    calEntry46, calEntry47, calEntry48, calEntry49, 
    calEntry50, calEntry51, calEntry52, calEntry53, 
    calEntry54, calEntry55, calEntry56, calEntry57, 
    calEntry58, calEntry59, calEntry60, calEntry61, 
    calEntry62, calEntry63, calEntry64, calEntry65, 
    calEntry66, calEntry67, calEntry68, calEntry69, 
    calEntry70, calEntry71, calEntry72, calEntry73, 
    calEntry74, calEntry75, calEntry76, calEntry77, 
    calEntry78, calEntry79, calEntry80, calEntry81, 
    calEntry82, calEntry83, calEntry84, calEntry85, 
    calEntry86, calEntry87, calEntry88, calEntry89, 
    calEntry90, calEntry91, calEntry92, calEntry93, 
    calEntry94, calEntry95, walkEndPtr, 

    //Outputs
    chanSel
);

   // synopsys template
   parameter   WIDTH       = 5;

   input            clockCore;
   input            resetCore;

   // I/F with RxTdmReg
   // VWEAVE: BEGIN PERL
   // print "\n";
   // for($i=0; $i<96; $i++) {
   //  printf "   input  [WIDTH-1:0]     calEntry%02d;\n", $i;
   // }
   // VWEAVE: END PERL
   // VWEAVE: BEGIN GENERATED
   
   input  [WIDTH-1:0]     calEntry00;
   input  [WIDTH-1:0]     calEntry01;
   input  [WIDTH-1:0]     calEntry02;
   input  [WIDTH-1:0]     calEntry03;
   input  [WIDTH-1:0]     calEntry04;
   input  [WIDTH-1:0]     calEntry05;
   input  [WIDTH-1:0]     calEntry06;
   input  [WIDTH-1:0]     calEntry07;
   input  [WIDTH-1:0]     calEntry08;
   input  [WIDTH-1:0]     calEntry09;
   input  [WIDTH-1:0]     calEntry10;
   input  [WIDTH-1:0]     calEntry11;
   input  [WIDTH-1:0]     calEntry12;
   input  [WIDTH-1:0]     calEntry13;
   input  [WIDTH-1:0]     calEntry14;
   input  [WIDTH-1:0]     calEntry15;
   input  [WIDTH-1:0]     calEntry16;
   input  [WIDTH-1:0]     calEntry17;
   input  [WIDTH-1:0]     calEntry18;
   input  [WIDTH-1:0]     calEntry19;
   input  [WIDTH-1:0]     calEntry20;
   input  [WIDTH-1:0]     calEntry21;
   input  [WIDTH-1:0]     calEntry22;
   input  [WIDTH-1:0]     calEntry23;
   input  [WIDTH-1:0]     calEntry24;
   input  [WIDTH-1:0]     calEntry25;
   input  [WIDTH-1:0]     calEntry26;
   input  [WIDTH-1:0]     calEntry27;
   input  [WIDTH-1:0]     calEntry28;
   input  [WIDTH-1:0]     calEntry29;
   input  [WIDTH-1:0]     calEntry30;
   input  [WIDTH-1:0]     calEntry31;
   input  [WIDTH-1:0]     calEntry32;
   input  [WIDTH-1:0]     calEntry33;
   input  [WIDTH-1:0]     calEntry34;
   input  [WIDTH-1:0]     calEntry35;
   input  [WIDTH-1:0]     calEntry36;
   input  [WIDTH-1:0]     calEntry37;
   input  [WIDTH-1:0]     calEntry38;
   input  [WIDTH-1:0]     calEntry39;
   input  [WIDTH-1:0]     calEntry40;
   input  [WIDTH-1:0]     calEntry41;
   input  [WIDTH-1:0]     calEntry42;
   input  [WIDTH-1:0]     calEntry43;
   input  [WIDTH-1:0]     calEntry44;
   input  [WIDTH-1:0]     calEntry45;
   input  [WIDTH-1:0]     calEntry46;
   input  [WIDTH-1:0]     calEntry47;
   input  [WIDTH-1:0]     calEntry48;
   input  [WIDTH-1:0]     calEntry49;
   input  [WIDTH-1:0]     calEntry50;
   input  [WIDTH-1:0]     calEntry51;
   input  [WIDTH-1:0]     calEntry52;
   input  [WIDTH-1:0]     calEntry53;
   input  [WIDTH-1:0]     calEntry54;
   input  [WIDTH-1:0]     calEntry55;
   input  [WIDTH-1:0]     calEntry56;
   input  [WIDTH-1:0]     calEntry57;
   input  [WIDTH-1:0]     calEntry58;
   input  [WIDTH-1:0]     calEntry59;
   input  [WIDTH-1:0]     calEntry60;
   input  [WIDTH-1:0]     calEntry61;
   input  [WIDTH-1:0]     calEntry62;
   input  [WIDTH-1:0]     calEntry63;
   input  [WIDTH-1:0]     calEntry64;
   input  [WIDTH-1:0]     calEntry65;
   input  [WIDTH-1:0]     calEntry66;
   input  [WIDTH-1:0]     calEntry67;
   input  [WIDTH-1:0]     calEntry68;
   input  [WIDTH-1:0]     calEntry69;
   input  [WIDTH-1:0]     calEntry70;
   input  [WIDTH-1:0]     calEntry71;
   input  [WIDTH-1:0]     calEntry72;
   input  [WIDTH-1:0]     calEntry73;
   input  [WIDTH-1:0]     calEntry74;
   input  [WIDTH-1:0]     calEntry75;
   input  [WIDTH-1:0]     calEntry76;
   input  [WIDTH-1:0]     calEntry77;
   input  [WIDTH-1:0]     calEntry78;
   input  [WIDTH-1:0]     calEntry79;
   input  [WIDTH-1:0]     calEntry80;
   input  [WIDTH-1:0]     calEntry81;
   input  [WIDTH-1:0]     calEntry82;
   input  [WIDTH-1:0]     calEntry83;
   input  [WIDTH-1:0]     calEntry84;
   input  [WIDTH-1:0]     calEntry85;
   input  [WIDTH-1:0]     calEntry86;
   input  [WIDTH-1:0]     calEntry87;
   input  [WIDTH-1:0]     calEntry88;
   input  [WIDTH-1:0]     calEntry89;
   input  [WIDTH-1:0]     calEntry90;
   input  [WIDTH-1:0]     calEntry91;
   input  [WIDTH-1:0]     calEntry92;
   input  [WIDTH-1:0]     calEntry93;
   input  [WIDTH-1:0]     calEntry94;
   input  [WIDTH-1:0]     calEntry95;
// VWEAVE: END GENERATED

   input  [6:0]        walkEndPtr;
   
   // I/F with RxTdmRxCtrl 
   output [WIDTH-1:0]  chanSel;
   reg    [WIDTH-1:0]  chanSel;

   //=======================================================
   reg [6:0]           walkIdx;
   reg [WIDTH-1:0]     chanSelInt;

   //===============Cal control=============================
   always @(posedge clockCore or negedge resetCore) begin
      if(!resetCore) begin
         walkIdx[6:0] <= 7'd0;
      end
      else if(walkIdx == walkEndPtr) begin
         walkIdx[6:0] <= 7'd0;
      end
      else begin
         walkIdx[6:0] <= walkIdx[6:0] + 7'd1;
      end
   end

   always @(posedge clockCore or negedge resetCore) begin
      if(!resetCore) begin
         chanSel[WIDTH-1:0] <= {WIDTH{1'b1}};
      end
      else begin
         chanSel[WIDTH-1:0] <= chanSelInt[WIDTH-1:0];
      end
   end
      
   // select chanSel[WIDTH-1:0] from TDM calendar table
   always @(*) begin
      case(walkIdx[6:0])
         // VWEAVE: BEGIN PERL
         // print "\n";
         // for($i=0; $i<96; $i++) {
         //    printf "         7'd%-2d: chanSelInt[WIDTH-1:0] = calEntry%02d[WIDTH-1:0];\n", $i, $i;
         // }
         // VWEAVE: END PERL
         // VWEAVE: BEGIN GENERATED
     
         7'd0 : chanSelInt[WIDTH-1:0] = calEntry00[WIDTH-1:0];
         7'd1 : chanSelInt[WIDTH-1:0] = calEntry01[WIDTH-1:0];
         7'd2 : chanSelInt[WIDTH-1:0] = calEntry02[WIDTH-1:0];
         7'd3 : chanSelInt[WIDTH-1:0] = calEntry03[WIDTH-1:0];
         7'd4 : chanSelInt[WIDTH-1:0] = calEntry04[WIDTH-1:0];
         7'd5 : chanSelInt[WIDTH-1:0] = calEntry05[WIDTH-1:0];
         7'd6 : chanSelInt[WIDTH-1:0] = calEntry06[WIDTH-1:0];
         7'd7 : chanSelInt[WIDTH-1:0] = calEntry07[WIDTH-1:0];
         7'd8 : chanSelInt[WIDTH-1:0] = calEntry08[WIDTH-1:0];
         7'd9 : chanSelInt[WIDTH-1:0] = calEntry09[WIDTH-1:0];
         7'd10: chanSelInt[WIDTH-1:0] = calEntry10[WIDTH-1:0];
         7'd11: chanSelInt[WIDTH-1:0] = calEntry11[WIDTH-1:0];
         7'd12: chanSelInt[WIDTH-1:0] = calEntry12[WIDTH-1:0];
         7'd13: chanSelInt[WIDTH-1:0] = calEntry13[WIDTH-1:0];
         7'd14: chanSelInt[WIDTH-1:0] = calEntry14[WIDTH-1:0];
         7'd15: chanSelInt[WIDTH-1:0] = calEntry15[WIDTH-1:0];
         7'd16: chanSelInt[WIDTH-1:0] = calEntry16[WIDTH-1:0];
         7'd17: chanSelInt[WIDTH-1:0] = calEntry17[WIDTH-1:0];
         7'd18: chanSelInt[WIDTH-1:0] = calEntry18[WIDTH-1:0];
         7'd19: chanSelInt[WIDTH-1:0] = calEntry19[WIDTH-1:0];
         7'd20: chanSelInt[WIDTH-1:0] = calEntry20[WIDTH-1:0];
         7'd21: chanSelInt[WIDTH-1:0] = calEntry21[WIDTH-1:0];
         7'd22: chanSelInt[WIDTH-1:0] = calEntry22[WIDTH-1:0];
         7'd23: chanSelInt[WIDTH-1:0] = calEntry23[WIDTH-1:0];
         7'd24: chanSelInt[WIDTH-1:0] = calEntry24[WIDTH-1:0];
         7'd25: chanSelInt[WIDTH-1:0] = calEntry25[WIDTH-1:0];
         7'd26: chanSelInt[WIDTH-1:0] = calEntry26[WIDTH-1:0];
         7'd27: chanSelInt[WIDTH-1:0] = calEntry27[WIDTH-1:0];
         7'd28: chanSelInt[WIDTH-1:0] = calEntry28[WIDTH-1:0];
         7'd29: chanSelInt[WIDTH-1:0] = calEntry29[WIDTH-1:0];
         7'd30: chanSelInt[WIDTH-1:0] = calEntry30[WIDTH-1:0];
         7'd31: chanSelInt[WIDTH-1:0] = calEntry31[WIDTH-1:0];
         7'd32: chanSelInt[WIDTH-1:0] = calEntry32[WIDTH-1:0];
         7'd33: chanSelInt[WIDTH-1:0] = calEntry33[WIDTH-1:0];
         7'd34: chanSelInt[WIDTH-1:0] = calEntry34[WIDTH-1:0];
         7'd35: chanSelInt[WIDTH-1:0] = calEntry35[WIDTH-1:0];
         7'd36: chanSelInt[WIDTH-1:0] = calEntry36[WIDTH-1:0];
         7'd37: chanSelInt[WIDTH-1:0] = calEntry37[WIDTH-1:0];
         7'd38: chanSelInt[WIDTH-1:0] = calEntry38[WIDTH-1:0];
         7'd39: chanSelInt[WIDTH-1:0] = calEntry39[WIDTH-1:0];
         7'd40: chanSelInt[WIDTH-1:0] = calEntry40[WIDTH-1:0];
         7'd41: chanSelInt[WIDTH-1:0] = calEntry41[WIDTH-1:0];
         7'd42: chanSelInt[WIDTH-1:0] = calEntry42[WIDTH-1:0];
         7'd43: chanSelInt[WIDTH-1:0] = calEntry43[WIDTH-1:0];
         7'd44: chanSelInt[WIDTH-1:0] = calEntry44[WIDTH-1:0];
         7'd45: chanSelInt[WIDTH-1:0] = calEntry45[WIDTH-1:0];
         7'd46: chanSelInt[WIDTH-1:0] = calEntry46[WIDTH-1:0];
         7'd47: chanSelInt[WIDTH-1:0] = calEntry47[WIDTH-1:0];
         7'd48: chanSelInt[WIDTH-1:0] = calEntry48[WIDTH-1:0];
         7'd49: chanSelInt[WIDTH-1:0] = calEntry49[WIDTH-1:0];
         7'd50: chanSelInt[WIDTH-1:0] = calEntry50[WIDTH-1:0];
         7'd51: chanSelInt[WIDTH-1:0] = calEntry51[WIDTH-1:0];
         7'd52: chanSelInt[WIDTH-1:0] = calEntry52[WIDTH-1:0];
         7'd53: chanSelInt[WIDTH-1:0] = calEntry53[WIDTH-1:0];
         7'd54: chanSelInt[WIDTH-1:0] = calEntry54[WIDTH-1:0];
         7'd55: chanSelInt[WIDTH-1:0] = calEntry55[WIDTH-1:0];
         7'd56: chanSelInt[WIDTH-1:0] = calEntry56[WIDTH-1:0];
         7'd57: chanSelInt[WIDTH-1:0] = calEntry57[WIDTH-1:0];
         7'd58: chanSelInt[WIDTH-1:0] = calEntry58[WIDTH-1:0];
         7'd59: chanSelInt[WIDTH-1:0] = calEntry59[WIDTH-1:0];
         7'd60: chanSelInt[WIDTH-1:0] = calEntry60[WIDTH-1:0];
         7'd61: chanSelInt[WIDTH-1:0] = calEntry61[WIDTH-1:0];
         7'd62: chanSelInt[WIDTH-1:0] = calEntry62[WIDTH-1:0];
         7'd63: chanSelInt[WIDTH-1:0] = calEntry63[WIDTH-1:0];
         7'd64: chanSelInt[WIDTH-1:0] = calEntry64[WIDTH-1:0];
         7'd65: chanSelInt[WIDTH-1:0] = calEntry65[WIDTH-1:0];
         7'd66: chanSelInt[WIDTH-1:0] = calEntry66[WIDTH-1:0];
         7'd67: chanSelInt[WIDTH-1:0] = calEntry67[WIDTH-1:0];
         7'd68: chanSelInt[WIDTH-1:0] = calEntry68[WIDTH-1:0];
         7'd69: chanSelInt[WIDTH-1:0] = calEntry69[WIDTH-1:0];
         7'd70: chanSelInt[WIDTH-1:0] = calEntry70[WIDTH-1:0];
         7'd71: chanSelInt[WIDTH-1:0] = calEntry71[WIDTH-1:0];
         7'd72: chanSelInt[WIDTH-1:0] = calEntry72[WIDTH-1:0];
         7'd73: chanSelInt[WIDTH-1:0] = calEntry73[WIDTH-1:0];
         7'd74: chanSelInt[WIDTH-1:0] = calEntry74[WIDTH-1:0];
         7'd75: chanSelInt[WIDTH-1:0] = calEntry75[WIDTH-1:0];
         7'd76: chanSelInt[WIDTH-1:0] = calEntry76[WIDTH-1:0];
         7'd77: chanSelInt[WIDTH-1:0] = calEntry77[WIDTH-1:0];
         7'd78: chanSelInt[WIDTH-1:0] = calEntry78[WIDTH-1:0];
         7'd79: chanSelInt[WIDTH-1:0] = calEntry79[WIDTH-1:0];
         7'd80: chanSelInt[WIDTH-1:0] = calEntry80[WIDTH-1:0];
         7'd81: chanSelInt[WIDTH-1:0] = calEntry81[WIDTH-1:0];
         7'd82: chanSelInt[WIDTH-1:0] = calEntry82[WIDTH-1:0];
         7'd83: chanSelInt[WIDTH-1:0] = calEntry83[WIDTH-1:0];
         7'd84: chanSelInt[WIDTH-1:0] = calEntry84[WIDTH-1:0];
         7'd85: chanSelInt[WIDTH-1:0] = calEntry85[WIDTH-1:0];
         7'd86: chanSelInt[WIDTH-1:0] = calEntry86[WIDTH-1:0];
         7'd87: chanSelInt[WIDTH-1:0] = calEntry87[WIDTH-1:0];
         7'd88: chanSelInt[WIDTH-1:0] = calEntry88[WIDTH-1:0];
         7'd89: chanSelInt[WIDTH-1:0] = calEntry89[WIDTH-1:0];
         7'd90: chanSelInt[WIDTH-1:0] = calEntry90[WIDTH-1:0];
         7'd91: chanSelInt[WIDTH-1:0] = calEntry91[WIDTH-1:0];
         7'd92: chanSelInt[WIDTH-1:0] = calEntry92[WIDTH-1:0];
         7'd93: chanSelInt[WIDTH-1:0] = calEntry93[WIDTH-1:0];
         7'd94: chanSelInt[WIDTH-1:0] = calEntry94[WIDTH-1:0];
         7'd95: chanSelInt[WIDTH-1:0] = calEntry95[WIDTH-1:0];
// VWEAVE: END GENERATED
         default: chanSelInt[WIDTH-1:0] = calEntry95[WIDTH-1:0] ;
      endcase
   end

endmodule // IP_Calendar

