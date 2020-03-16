#!/usr/bin/perl

## Example: genfifo.pl -share -q 12 -w 64 -d 64

$HELP_DOC =<< "!END_HELP";
Usage: 

genfifo.pl 
    -d		<depth>			(FIFO depth)
    -w		<width>			(FIFO width)
    -q          <qnum>                  (Queue Number)
    [-reg|-ram|-share]			(FIFO memory type option: register/ram/shared, default: register)
    -h					(Help page)

!END_HELP

($genmen_path = $0) =~ s/([^\/]*)$//;
$genmen_path = "./" if ($genmen_path eq "");

$current_dir = `pwd`;
$current_dir =~ s/\s+//;

# while (! -f "TOP") {
#    chdir("..");
#    $topdir = `pwd`;
# }
$topdir =~ s/\s+//;

$gen_file_dir = "$current_dir/fifo/";
print "$gen_file_dir\n";

chdir("$current_dir");

use Getopt::Long;
&GetOptions("d=s" => \$fifodepth, "w=s" => \$fifowidth, "q=s" => \$qnum,"reg" => \$reg, "ram" => \$ram, "share" => \$share,"h" => \$help);

die($HELP_DOC) if (($fifodepth eq "") || ($fifowidth eq "") || (($reg) && ($ram)) || ($help == 1));

if ((!defined $reg) && (!defined $ram) && (!defined $share)) {
    $reg = 1;
    $ram = 0;
    $share = 0;
}

if ($reg == 1) {
	$gen_module_name = "GenRegFifo"."$fifodepth"."D"."$fifowidth"."W";
}
if ($ram == 1) {
	$gen_module_name = "GenRamFifo"."$fifodepth"."D"."$fifowidth"."W";	
	$gen_IP_ram_2p_name = "GenRam2P"."$fifodepth"."D"."$fifowidth"."W";	
}
if ($share == 1) {
	$gen_module_name = "GenSharedRamFifo"."$qnum"."Q"."$fifodepth"."D"."$fifowidth"."W";	
	$gen_IP_ram_2p_name = "GenRam2P"."$fifodepth"."D"."$fifowidth"."W";
}

$fifodepth_minus_1 = $fifodepth - 1;
$fifowidth_minus_1 = $fifowidth - 1;

$addrwidth = log($fifodepth) / log(2);
$addrwidth_int = int($addrwidth);
if ($addrwidth > $addrwidth_int) {
    $addrwidth = $addrwidth_int + 1;
}
$addrwidth_minus_1 = $addrwidth - 1;
$addrwidth_plus_1 = $addrwidth + 1;

$qnum_minus_1 = $qnum - 1;

if($share == 1) {
   $qwidth = log($qnum) / log(2);
   $qwidth_int = int($qwidth);
   if ($qwidth > $qwidth_int) {
       $qwidth = $qwidth_int + 1;
   }
   $qwidth_minus_1 = $qwidth - 1;
   $qwidth_plus_1  = $qwidth + 1;
}

if ($addrwidth > $addrwidth_int) {
    $addrwidth_full = $addrwidth_int;
}
else {
    $addrwidth_full = $addrwidth_int + 1;
}

#print "fifodepth = $fifodepth\n";
#print "addrwidth = $addrwidth\n";
#print "addrwidth_int = $addrwidth_int\n";
#print "addrwidth_minus_1 = $addrwidth_minus_1\n";
#print "addrwidth_plus_1 = $addrwidth_plus_1\n";
#print "addrwidth_full = $addrwidth_full\n";

#print "DEPTH = $fifodepth, WIDTH = $fifowidth, ADDR_WIDTH = $addrwidth, REG_FIFO = $reg, RAM_FIFO = $ram\n"; 

$gen_file_name = "$gen_file_dir"."$gen_module_name.v";

#print "$gen_file_name\n"; 
print "Start generating fifo...\n";

open(GEN_FILE, ">$gen_file_name");
                                                        
print GEN_FILE "module $gen_module_name\n";

if ($reg == 1) {
print GEN_FILE "	(\n";                    
print GEN_FILE "	// Outputs;\n";          
print GEN_FILE "	dataOut,\n";             
print GEN_FILE "	full,\n";                
print GEN_FILE "	empty,\n";               
print GEN_FILE "	almostFullFlag,\n";      
print GEN_FILE "	almostEmptyFlag,\n";     
print GEN_FILE "	fifoDepth,\n";    
print GEN_FILE "	overrun,\n";                
print GEN_FILE "	underrun,\n";                      
print GEN_FILE "	// Inputs;\n";           
print GEN_FILE "	clockCore,\n";           
print GEN_FILE "	resetCore,\n";           
print GEN_FILE "	push,\n";                
print GEN_FILE "	dataIn,\n";              
print GEN_FILE "	pop,\n";                 
print GEN_FILE "	almostFullThreshold,\n"; 
print GEN_FILE "	almostEmptyThreshold\n";
print GEN_FILE "	);\n";                   
print GEN_FILE "\n";
print GEN_FILE "/////////////////////////////////////////////////////////////////////////////\n";
print GEN_FILE "// INPUT/OUTPUT declaration\n";
print GEN_FILE "/////////////////////////////////////////////////////////////////////////////\n";
print GEN_FILE "\n";
print GEN_FILE "input		clockCore;\n";
print GEN_FILE "input		resetCore;\n";
print GEN_FILE "\n";
print GEN_FILE "input		push;\n";
print GEN_FILE "input  [$fifowidth_minus_1:0] 	dataIn;\n";
print GEN_FILE "\n";
print GEN_FILE "input		pop;\n";
print GEN_FILE "output [$fifowidth_minus_1:0]	dataOut;\n";
print GEN_FILE "\n";
print GEN_FILE "input  [$addrwidth:0]	almostFullThreshold;\n";  
print GEN_FILE "input  [$addrwidth:0]	almostEmptyThreshold;\n";  
print GEN_FILE "\n";
print GEN_FILE "output		full;\n";
print GEN_FILE "output		empty;\n";
print GEN_FILE "output		almostFullFlag;\n";
print GEN_FILE "output		almostEmptyFlag;\n";
print GEN_FILE "output [$addrwidth:0]	fifoDepth;\n";
print GEN_FILE "output		overrun;\n";
print GEN_FILE "output		underrun;\n";
print GEN_FILE "\n";
print GEN_FILE "/////////////////////////////////////////////////////////////////////////////\n";
print GEN_FILE "// internal wire/reg declaration\n";
print GEN_FILE "/////////////////////////////////////////////////////////////////////////////\n";
print GEN_FILE "\n";
print GEN_FILE "wire		clockCore;\n";
print GEN_FILE "wire		resetCore;\n";
print GEN_FILE "\n"; 
print GEN_FILE "wire		push;\n";
print GEN_FILE "wire   [$fifowidth_minus_1:0] 	dataIn;\n";
print GEN_FILE "\n";  
print GEN_FILE "wire		pop;\n";
print GEN_FILE "wire   [$fifowidth_minus_1:0]	dataOut;\n";
print GEN_FILE "\n"; 
print GEN_FILE "wire   [$addrwidth:0]	almostFullThreshold;\n";  
print GEN_FILE "wire   [$addrwidth:0]	almostEmptyThreshold;\n";  
print GEN_FILE "\n"; 
print GEN_FILE "wire		full;\n";
print GEN_FILE "wire		empty;\n";
print GEN_FILE "wire		almostFullFlag;\n";
print GEN_FILE "wire		almostEmptyFlag;\n";
print GEN_FILE "wire   [$addrwidth:0]	fifoDepth;\n";
print GEN_FILE "\n";
print GEN_FILE "wire		overrun;\n";
print GEN_FILE "wire		underrun;\n";
print GEN_FILE "\n";
print GEN_FILE "/////////////////////////////////////////////////////////////////////////////\n";
print GEN_FILE "// GenRegFifo Instantiation\n";
print GEN_FILE "/////////////////////////////////////////////////////////////////////////////\n";
print GEN_FILE "\n";
print GEN_FILE "  IP_RegFifo #($fifodepth, $fifowidth) uIP_RegFifo\n";
print GEN_FILE "	(\n";
print GEN_FILE "	// Outputs;\n";
print GEN_FILE "	.dataOut               ( dataOut               ),\n";
print GEN_FILE "	.full                  ( full                  ),\n";
print GEN_FILE "	.empty                 ( empty                 ),\n";
print GEN_FILE "	.almostFullFlag        ( almostFullFlag        ),\n";           
print GEN_FILE "	.almostEmptyFlag       ( almostEmptyFlag       ),\n";    
print GEN_FILE "	.fifoDepth             ( fifoDepth             ),\n";
print GEN_FILE "	.overrun               ( overrun               ),\n";
print GEN_FILE "	.underrun              ( underrun              ),\n";
print GEN_FILE "	// Inputs;\n";
print GEN_FILE "	.clockCore             ( clockCore             ),\n";
print GEN_FILE "	.resetCore             ( resetCore             ),\n";
print GEN_FILE "	.push                  ( push                  ),\n";
print GEN_FILE "	.dataIn                ( dataIn                ),\n";
print GEN_FILE "	.pop                   ( pop                   ),\n";
print GEN_FILE "	.almostFullThreshold   ( almostFullThreshold   ),\n";        
print GEN_FILE "	.almostEmptyThreshold  ( almostEmptyThreshold  ) \n";
print GEN_FILE "	);\n";
print GEN_FILE "\n";

}

if ($ram == 1) {
print "Start generating ram...\n";
system("genmem.pl -d $fifodepth -w $fifowidth -2p");

print GEN_FILE "	(\n";
print GEN_FILE "	// Outputs;\n";
print GEN_FILE "	dataOut,\n"; 
print GEN_FILE "	full,\n"; 
print GEN_FILE "	empty,\n"; 
print GEN_FILE "	almostFullFlag,\n"; 
print GEN_FILE "	almostEmptyFlag,\n"; 
print GEN_FILE "	fifoDepth,\n"; 
print GEN_FILE "	overrun,\n";                
print GEN_FILE "	underrun,\n";                      
print GEN_FILE "	cpuReadAck,\n"; 
print GEN_FILE "	cpuReadData,\n"; 
print GEN_FILE "	// Inputs;\n";
print GEN_FILE "	clockCore,\n"; 
print GEN_FILE "	resetCore,\n"; 
print GEN_FILE "	push,\n"; 
print GEN_FILE "	dataIn,\n"; 
print GEN_FILE "	pop,\n"; 
print GEN_FILE "	almostFullThreshold,\n";
print GEN_FILE "	almostEmptyThreshold,\n"; 
print GEN_FILE "	cpuReadValid,\n"; 
print GEN_FILE "	cpuReadAddress\n";
print GEN_FILE "	);\n";
print GEN_FILE "\n";
print GEN_FILE "/////////////////////////////////////////////////////////////////////////////\n";
print GEN_FILE "// INPUT/OUTPUT declaration\n";
print GEN_FILE "/////////////////////////////////////////////////////////////////////////////\n";
print GEN_FILE "\n";
print GEN_FILE "input		clockCore;\n";
print GEN_FILE "input		resetCore;\n";
print GEN_FILE "\n";
print GEN_FILE "input		push;\n";
print GEN_FILE "input  [$fifowidth_minus_1:0] 	dataIn;\n";
print GEN_FILE "\n";
print GEN_FILE "input		pop;\n";
print GEN_FILE "output [$fifowidth_minus_1:0]	dataOut;\n";
print GEN_FILE "\n";
print GEN_FILE "input  [$addrwidth:0]	almostFullThreshold;\n";  
print GEN_FILE "input  [$addrwidth:0]	almostEmptyThreshold;\n";  
print GEN_FILE "\n";
print GEN_FILE "output		full;\n";
print GEN_FILE "output		empty;\n";
print GEN_FILE "output		almostFullFlag;\n";
print GEN_FILE "output		almostEmptyFlag;\n";
print GEN_FILE "output [$addrwidth:0]	fifoDepth;\n";
print GEN_FILE "output		overrun;\n";
print GEN_FILE "output		underrun;\n";
print GEN_FILE "\n";
print GEN_FILE "input		cpuReadValid;\n";
print GEN_FILE "input  [$addrwidth_minus_1:0]	cpuReadAddress;\n";
print GEN_FILE "output		cpuReadAck;\n";
print GEN_FILE "output [$fifowidth_minus_1:0]	cpuReadData;\n";
print GEN_FILE "\n";
print GEN_FILE "/////////////////////////////////////////////////////////////////////////////\n";
print GEN_FILE "// internal wire/reg declaration\n";
print GEN_FILE "/////////////////////////////////////////////////////////////////////////////\n";
print GEN_FILE "\n";
print GEN_FILE "wire [$addrwidth_minus_1:0]	ramReadAddress;\n";
print GEN_FILE "wire [$addrwidth_minus_1:0]	ramWriteAddress;\n";
print GEN_FILE "wire [$fifowidth_minus_1:0]	ramWriteData;\n";
print GEN_FILE "wire		ramWriteEnable;\n";
print GEN_FILE "wire		ramReadEnable;\n";
print GEN_FILE "wire [$fifowidth_minus_1:0]	ramReadData;\n";
print GEN_FILE "\n";
print GEN_FILE "wire		overrun;\n";
print GEN_FILE "wire		underrun;\n";
print GEN_FILE "\n";
print GEN_FILE "/////////////////////////////////////////////////////////////////////////////\n";
print GEN_FILE "// Module Instantiations\n";
print GEN_FILE "/////////////////////////////////////////////////////////////////////////////\n";
print GEN_FILE "\n";
print GEN_FILE "  IP_RamFifoCtrl #($fifodepth, $fifowidth) uIP_RamFifoCtrl\n";
print GEN_FILE "	(\n";
print GEN_FILE "	// Outputs;\n";
print GEN_FILE "	.dataOut				( dataOut		),\n";
print GEN_FILE "	.full					( full			),\n";
print GEN_FILE "	.empty					( empty			),\n";
print GEN_FILE "	.almostFullFlag				( almostFullFlag	),\n";
print GEN_FILE "	.almostEmptyFlag			( almostEmptyFlag	),\n";
print GEN_FILE "	.fifoDepth				( fifoDepth		),\n";
print GEN_FILE "	.overrun				( overrun		),\n";
print GEN_FILE "	.underrun				( underrun		),\n";
print GEN_FILE "	.ramWriteEnable				( ramWriteEnable	),\n";
print GEN_FILE "	.ramWriteAddress			( ramWriteAddress	),\n";
print GEN_FILE "	.ramWriteData				( ramWriteData		),\n";
print GEN_FILE "	.ramReadAddress				( ramReadAddress	),\n";
print GEN_FILE "	.ramReadEnable				( ramReadEnable		),\n";
print GEN_FILE "	.cpuReadAck				( cpuReadAck		),\n";
print GEN_FILE "	.cpuReadData				( cpuReadData		),\n";
print GEN_FILE "	// Inputs;\n";
print GEN_FILE "	.clockCore				( clockCore		),\n";
print GEN_FILE "	.resetCore				( resetCore		),\n";
print GEN_FILE "	.push					( push			),\n";
print GEN_FILE "	.dataIn					( dataIn		),\n";
print GEN_FILE "	.pop					( pop			),\n";
print GEN_FILE "	.almostFullThreshold			( almostFullThreshold	),\n";
print GEN_FILE "	.almostEmptyThreshold			( almostEmptyThreshold	),\n";
print GEN_FILE "	.ramReadData				( ramReadData		),\n";
print GEN_FILE "	.cpuReadValid				( cpuReadValid		),\n";
print GEN_FILE "	.cpuReadAddress				( cpuReadAddress	) \n";
print GEN_FILE "	);\n";
print GEN_FILE "\n";
print GEN_FILE "  $gen_IP_ram_2p_name u$gen_IP_ram_2p_name\n";
print GEN_FILE "	(\n";
print GEN_FILE "	// Outputs;\n";
print GEN_FILE "	.readData     		 ( ramReadData     ),\n";
print GEN_FILE "	// Inputs;\n";
print GEN_FILE "	.clockCore    		 ( clockCore       ),\n";
print GEN_FILE "	.enableRead    		 ( ramReadEnable   ),\n";
print GEN_FILE "	.addressRead      	 ( ramReadAddress  ),\n";
print GEN_FILE "	.enableWrite    	 ( ramWriteEnable  ),\n";
print GEN_FILE "	.addressWrite  		 ( ramWriteAddress ),\n"; 
print GEN_FILE "	.writeData    		 ( ramWriteData    ) \n";
print GEN_FILE "	);\n";
print GEN_FILE "\n";

}

if ($share == 1) {

print "Start generating ram...\n";
system("genmem.pl -d $fifodepth -w $fifowidth -2p");

print GEN_FILE "(\n";
print GEN_FILE "   //Inputs\n";
print GEN_FILE "   clock, \n";
print GEN_FILE "   reset, \n";
print GEN_FILE "   push, \n";
print GEN_FILE "   pushQ, \n";
print GEN_FILE "   pushData, \n";
print GEN_FILE "   pop, \n";
print GEN_FILE "   popQ, \n";
print GEN_FILE "   almostFullThrd, \n";
print GEN_FILE "   //Outputs\n";
print GEN_FILE "   popData, \n";
print GEN_FILE "   qEmpty, \n";
print GEN_FILE "   full, \n";
print GEN_FILE "   almostFull, \n";
print GEN_FILE "   initDone \n";
print GEN_FILE ");\n";
print GEN_FILE "\n";
print GEN_FILE "/////////////////////////////////////////////////////////////////////////////\n";
print GEN_FILE "// INPUT/OUTPUT declaration\n";
print GEN_FILE "/////////////////////////////////////////////////////////////////////////////\n";
print GEN_FILE "\n";
print GEN_FILE "input		clock;\n";
print GEN_FILE "input		reset;\n";
print GEN_FILE "\n";
print GEN_FILE "input		push;\n";
print GEN_FILE "input  [$qwidth_minus_1:0]	pushQ;\n";
print GEN_FILE "input  [$fifowidth_minus_1:0] 	pushData;\n";
print GEN_FILE "\n";
print GEN_FILE "input		pop;\n";
print GEN_FILE "input  [$qwidth_minus_1:0]	popQ;\n";
print GEN_FILE "output [$fifowidth_minus_1:0]	popData;\n";
print GEN_FILE "input  [$addrwidth:0]	almostFullThrd;\n";  
print GEN_FILE "\n";
print GEN_FILE "output		full;\n";
print GEN_FILE "output		almostFull;\n";
print GEN_FILE "output [$qnum_minus_1:0]	qEmpty;\n";
print GEN_FILE "output		initDone;\n";
print GEN_FILE "\n";
print GEN_FILE "/////////////////////////////////////////////////////////////////////////////\n";
print GEN_FILE "// internal wire/reg declaration\n";
print GEN_FILE "/////////////////////////////////////////////////////////////////////////////\n";
print GEN_FILE "wire		ramWrEn;\n";
print GEN_FILE "wire [$addrwidth_minus_1:0]	ramWrAddr;\n";
print GEN_FILE "wire [$fifowidth_minus_1:0]	ramWrData;\n";
print GEN_FILE "wire		ramRdEn;\n";
print GEN_FILE "wire [$addrwidth_minus_1:0]	ramRdAddr;\n";
print GEN_FILE "wire [$fifowidth_minus_1:0]	ramRdData;\n";
print GEN_FILE "\n";
print GEN_FILE "/////////////////////////////////////////////////////////////////////////////\n";
print GEN_FILE "// Module Instantiations\n";
print GEN_FILE "/////////////////////////////////////////////////////////////////////////////\n";
print GEN_FILE "\n";
print GEN_FILE "IP_SharedRamFifoCtrl #($qnum, $fifodepth, $fifowidth) uIP_SharedRamFifoCtrl\n";
print GEN_FILE "(\n";
print GEN_FILE "   //Inputs\n";
print GEN_FILE "   .clock          ( clock          ), \n";
print GEN_FILE "   .reset          ( reset          ), \n";
print GEN_FILE "   .push           ( push           ), \n";
print GEN_FILE "   .pushQ          ( pushQ          ), \n";
print GEN_FILE "   .pushData       ( pushData       ), \n";
print GEN_FILE "   .pop            ( pop            ), \n";
print GEN_FILE "   .popQ           ( popQ           ), \n";
print GEN_FILE "   .ramRdData      ( ramRdData      ), \n";
print GEN_FILE "   .almostFullThrd ( almostFullThrd ), \n";
print GEN_FILE "   \n";
print GEN_FILE "   //Outputs\n";
print GEN_FILE "   .popData        ( popData        ), \n";
print GEN_FILE "   .qEmpty         ( qEmpty         ), \n";
print GEN_FILE "   .full           ( full           ), \n";
print GEN_FILE "   .almostFull     ( almostFull     ), \n";
print GEN_FILE "   .initDone       ( initDone       ), \n";
print GEN_FILE "   .ramWrEn        ( ramWrEn        ), \n";
print GEN_FILE "   .ramWrAddr      ( ramWrAddr      ), \n";
print GEN_FILE "   .ramWrData      ( ramWrData      ), \n";
print GEN_FILE "   .ramRdEn        ( ramRdEn        ), \n";
print GEN_FILE "   .ramRdAddr      ( ramRdAddr      )  \n";
print GEN_FILE ");\n";
print GEN_FILE "\n";
print GEN_FILE "$gen_IP_ram_2p_name u$gen_IP_ram_2p_name\n";
print GEN_FILE "(\n";
print GEN_FILE "   // Outputs;\n";
print GEN_FILE "   .readData       ( ramRdData  ),\n";
print GEN_FILE "   // Inputs;\n";
print GEN_FILE "   .clockCore      ( clock      ),\n";
print GEN_FILE "   .enableRead     ( ramRdEn    ),\n";
print GEN_FILE "   .addressRead    ( ramRdAddr  ),\n";
print GEN_FILE "   .enableWrite    ( ramWrEn    ),\n";
print GEN_FILE "   .addressWrite   ( ramWrAddr  ),\n"; 
print GEN_FILE "   .writeData      ( ramWrData  ) \n";
print GEN_FILE ");\n";
print GEN_FILE "\n";

}

print GEN_FILE "endmodule\n";

close(GEN_FILE);
