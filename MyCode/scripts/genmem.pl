#!/usr/bin/perl

$HELP_DOC =<< "!END_HELP";
Usage: 

genmem.pl 
    -d		<depth>			(MEM depth)
    -w		<width>			(MEM width)
    [-1p|-2p]				(MEM port option: 1-port/2-port, default: 1-port)
    -fi					(MEM latency option: flop-in, default: no flop-in)
    -fo					(MEM latency option: flop-out, default: no flop-out)
    -dm					(MEM write data mask: default: no data mask)
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

$gen_file_dir = "$current_dir/ram/";
print "$gen_file_dir\n";

chdir("$current_dir");

use Getopt::Long;
&GetOptions("d=s" => \$memdepth, "w=s" => \$memwidth, "1p" => \$sp, "2p" => \$dp, "fi" => \$fi, "fo" => \$fo, "dm" => \$dm, "h" => \$help);

die($HELP_DOC) if (($memdepth eq "") || ($memwidth eq "") || (($sp) && ($dp)) || ($help == 1));

if ((!defined $sp) && (!defined $dp)) {
    $sp = 1;
    $dp = 0;
}
if (!defined $fi) { 
    $fi = 0;
}
if (!defined $fo) { 
    $fo = 0;
}

if ($sp == 1) {
	if (!$fi && !$fo) {
		$gen_module_name = "GenRam1P"."$memdepth"."D"."$memwidth"."W";
	}
	if ($fi && !$fo) {
		$gen_module_name = "GenRam1P"."$memdepth"."D"."$memwidth"."W"."Fi";
	}
	if (!$fi && $fo) {
		$gen_module_name = "GenRam1P"."$memdepth"."D"."$memwidth"."W"."Fo";
	}
	if ($fi && $fo) {
		$gen_module_name = "GenRam1P"."$memdepth"."D"."$memwidth"."W"."Fi"."Fo";
	}			
}
if ($dp == 1) {
	if (!$fi && !$fo) {
		$gen_module_name = "GenRam2P"."$memdepth"."D"."$memwidth"."W";
	}
	if ($fi && !$fo) {
		$gen_module_name = "GenRam2P"."$memdepth"."D"."$memwidth"."W"."Fi";
	}
	if (!$fi && $fo) {
		$gen_module_name = "GenRam2P"."$memdepth"."D"."$memwidth"."W"."Fo";
	}
	if ($fi && $fo) {
		$gen_module_name = "GenRam2P"."$memdepth"."D"."$memwidth"."W"."Fi"."Fo";
	}			
}
if($dm){
	$gen_module_name .= "M";
}

$memdepth_minus_1 = $memdepth - 1;
$memwidth_minus_1 = $memwidth - 1;

$addrwidth = log($memdepth) / log(2);
$addrwidth_int = int($addrwidth);
if ($addrwidth > $addrwidth_int) {
    $addrwidth = $addrwidth_int + 1;
}
$addrwidth_minus_1 = $addrwidth - 1;

#print "DEPTH = $memdepth, WIDTH = $memwidth, ADDR_WIDTH = $addrwidth\n"; 

$gen_file_name = "$gen_file_dir"."$gen_module_name.v";

print "$gen_file_name\n"; 

open(GEN_FILE, ">$gen_file_name");
                                                        
#print GEN_FILE "\n";

print GEN_FILE "module $gen_module_name\n";

if ($sp == 1) {

print GEN_FILE "	(\n";
print GEN_FILE "	// Outputs\n";
print GEN_FILE "	readData,\n";
print GEN_FILE "	// Inputs\n";
print GEN_FILE "	clockCore,\n";
print GEN_FILE "	enableRam,\n";
print GEN_FILE "	address,\n"; 
print GEN_FILE "	enableWrite,\n"; 
if($dm){
print GEN_FILE "	dataMask,\n"; 
}
print GEN_FILE "	writeData\n";
print GEN_FILE "	);\n";
print GEN_FILE "\n";
print GEN_FILE "/////////////////////////////////////////////////////////////////////////////\n";
print GEN_FILE "// INPUT/OUTPUT declaration\n";
print GEN_FILE "/////////////////////////////////////////////////////////////////////////////\n";
print GEN_FILE "\n";
print GEN_FILE "  input		clockCore;\n"; 
print GEN_FILE "  input		enableRam;\n"; 
print GEN_FILE "  input  [$addrwidth_minus_1:0]	address;\n";
print GEN_FILE "  input		enableWrite;\n"; 
print GEN_FILE "  input  [$memwidth_minus_1:0]	writeData;\n";
if($dm){
print GEN_FILE "  input  [$memwidth_minus_1:0]	dataMask;\n";
}
print GEN_FILE "\n";
print GEN_FILE "  output [$memwidth_minus_1:0]	readData;\n";
print GEN_FILE "\n";
print GEN_FILE "  ////////////////////////////////////////////\n";
print GEN_FILE "  wire 		clockCore;\n"; 
print GEN_FILE "  wire 		enableRam;\n"; 
print GEN_FILE "  wire   [$addrwidth_minus_1:0]	address;\n"; 
print GEN_FILE "  wire 		enableWrite;\n"; 
print GEN_FILE "  wire   [$memwidth_minus_1:0]	writeData;\n";
if($dm){
print GEN_FILE "  wire   [$memwidth_minus_1:0]	dataMask;\n";
}
print GEN_FILE "\n";
print GEN_FILE "  wire   [$memwidth_minus_1:0]	readData;\n";
print GEN_FILE "\n";
print GEN_FILE "  wire 		enableRamInt;\n"; 
print GEN_FILE "  wire   [$addrwidth_minus_1:0]	addressInt;\n"; 
print GEN_FILE "  wire 		enableWriteInt;\n"; 
print GEN_FILE "  wire   [$memwidth_minus_1:0]	writeDataInt;\n";
if($dm){
print GEN_FILE "  wire   [$memwidth_minus_1:0]	dataMaskInt;\n";
}
print GEN_FILE "\n";
print GEN_FILE "  wire   [$memwidth_minus_1:0]	readDataInt;\n";
print GEN_FILE "\n";
      
if ($ fi) {
print GEN_FILE "  reg  		enableRamDly;\n"; 
print GEN_FILE "  reg    [$addrwidth_minus_1:0]	addressDly;\n"; 
print GEN_FILE "  reg  		enableWriteDly;\n"; 
print GEN_FILE "  reg    [$memwidth_minus_1:0]	writeDataDly;\n";
if($dm){
print GEN_FILE "  reg    [$memwidth_minus_1:0]	dataMaskDly;\n";
}
print GEN_FILE "\n";
print GEN_FILE "  always @(posedge clockCore) begin\n";
print GEN_FILE "     enableRamDly   <= enableRam;\n";   
print GEN_FILE "     addressDly     <= address;\n";   
print GEN_FILE "     enableWriteDly <= enableWrite;\n";   
print GEN_FILE "     writeDataDly   <= writeData;\n";   
if($dm){
print GEN_FILE "     dataMaskDly    <= dataMask;\n";   
}
print GEN_FILE "  end\n";
print GEN_FILE "\n";  
print GEN_FILE "  assign enableRamInt   = enableRamDly;\n";
print GEN_FILE "  assign addressInt     = addressDly;\n";  
print GEN_FILE "  assign enableWriteInt = enableWriteDly;\n";  
print GEN_FILE "  assign writeDataInt   = writeDataDly;\n";  
if($dm){
print GEN_FILE "  assign dataMaskInt    = dataMaskDly;\n";  
}

}  
else {
	
print GEN_FILE "  assign enableRamInt   = enableRam;\n";
print GEN_FILE "  assign addressInt     = address;\n";  
print GEN_FILE "  assign enableWriteInt = enableWrite;\n";  
print GEN_FILE "  assign writeDataInt   = writeData;\n";  
if($dm){
print GEN_FILE "  assign dataMaskInt    = dataMask;\n";  
}

}

print GEN_FILE "\n";
print GEN_FILE "  IP_Ram1P #($memdepth, $memwidth) uIP_Ram1P\n";
print GEN_FILE "	(\n";
print GEN_FILE "	// Outputs;\n";
print GEN_FILE "	.readData     		 ( readDataInt    ),\n";
print GEN_FILE "	// Inputs;\n";
print GEN_FILE "	.clockCore    		 ( clockCore      ),\n";
print GEN_FILE "	.enableRam    		 ( enableRamInt   ),\n";
print GEN_FILE "	.address      		 ( addressInt     ),\n";
print GEN_FILE "	.enableWrite  		 ( enableWriteInt ),\n"; 
if($dm){
print GEN_FILE "	.writeData    		 ( (writeDataInt & ~dataMaskInt) | (uIP_Ram1P.mem[addressReadInt] & dataMaskInt)) \n"; 
}
else {
print GEN_FILE "	.writeData    		 ( writeDataInt   ) \n"; 
}
print GEN_FILE "	);\n";
print GEN_FILE "\n";	

if ($fo) {
	
print GEN_FILE "  reg    [$memwidth_minus_1:0]	readDataIntDly;\n";
print GEN_FILE "\n";
print GEN_FILE "  always @(posedge clockCore) begin\n";
print GEN_FILE "     readDataIntDly <= readDataInt;\n";   
print GEN_FILE "  end\n";
print GEN_FILE "\n";  
print GEN_FILE "  assign readData = readDataIntDly;\n";
print GEN_FILE "\n";  

}
else {
	
print GEN_FILE "  assign readData = readDataInt;\n";
print GEN_FILE "\n";

}

}

if ($dp == 1) {

print GEN_FILE "	(\n";
print GEN_FILE "	// Outputs\n";
print GEN_FILE "	readData,\n";
print GEN_FILE "	// Inputs\n";
print GEN_FILE "	clockCore,\n";
print GEN_FILE "	enableRead,\n";
print GEN_FILE "	addressRead,\n";
print GEN_FILE "	enableWrite,\n";
print GEN_FILE "	addressWrite,\n"; 
if($dm){
print GEN_FILE "	dataMask,\n"; 
}
print GEN_FILE "	writeData\n";
print GEN_FILE "	);\n";
print GEN_FILE "\n";
print GEN_FILE "  input		clockCore;\n"; 
print GEN_FILE "  input		enableRead;\n"; 
print GEN_FILE "  input  [$addrwidth_minus_1:0]	addressRead;\n";
print GEN_FILE "  input		enableWrite;\n"; 
print GEN_FILE "  input  [$addrwidth_minus_1:0]	addressWrite;\n";
print GEN_FILE "  input  [$memwidth_minus_1:0]	writeData;\n";
if($dm){
print GEN_FILE "  input  [$memwidth_minus_1:0]	dataMask;\n";
}
print GEN_FILE "\n";
print GEN_FILE "  output [$memwidth_minus_1:0]	readData;\n";
print GEN_FILE "\n";
print GEN_FILE "  ////////////////////////////////////////////\n";
print GEN_FILE "  wire 		clockCore;\n"; 
print GEN_FILE "  wire 		enableRead;\n"; 
print GEN_FILE "  wire   [$addrwidth_minus_1:0]	addressRead;\n";
print GEN_FILE "  wire 		enableWrite;\n"; 
print GEN_FILE "  wire   [$addrwidth_minus_1:0]	addressWrite;\n";
print GEN_FILE "  wire   [$memwidth_minus_1:0]	writeData;\n";
if($dm){
print GEN_FILE "  wire   [$memwidth_minus_1:0]	dataMask;\n";
}
print GEN_FILE "\n";
print GEN_FILE "  wire   [$memwidth_minus_1:0]	readData;\n";
print GEN_FILE "\n";
print GEN_FILE "  wire 		enableReadInt;\n"; 
print GEN_FILE "  wire   [$addrwidth_minus_1:0]	addressReadInt;\n";
print GEN_FILE "  wire 		enableWriteInt;\n"; 
print GEN_FILE "  wire   [$addrwidth_minus_1:0]	addressWriteInt;\n";
print GEN_FILE "  wire   [$memwidth_minus_1:0]	writeDataInt;\n";
if($dm){
print GEN_FILE "  wire   [$memwidth_minus_1:0]	dataMaskInt;\n";
}
print GEN_FILE "\n";
print GEN_FILE "  wire   [$memwidth_minus_1:0]	readDataInt;\n";
print GEN_FILE "\n";
      
if ($ fi) {
      
print GEN_FILE "  reg  		enableReadDly;\n"; 
print GEN_FILE "  reg    [$addrwidth_minus_1:0]	addressReadDly;\n";
print GEN_FILE "  reg  		enableWriteDly;\n"; 
print GEN_FILE "  reg    [$addrwidth_minus_1:0]	addressWriteDly;\n";
print GEN_FILE "  reg    [$memwidth_minus_1:0]	writeDataDly;\n";
if($dm){
print GEN_FILE "  reg    [$memwidth_minus_1:0]	dataMaskDly;\n";
}
print GEN_FILE "\n";
print GEN_FILE "  always @(posedge clockCore) begin\n";
print GEN_FILE "     enableReadDly   <= enableRead;\n";   
print GEN_FILE "     addressReadDly  <= addressRead;\n";   
print GEN_FILE "     enableWriteDly  <= enableWrite;\n";   
print GEN_FILE "     addressWriteDly <= addressWrite;\n";   
print GEN_FILE "     writeDataDly    <= writeData;\n";   
if($dm){
print GEN_FILE "     dataMaskDly     <= dataMask;\n";   
}
print GEN_FILE "  end\n";
print GEN_FILE "\n";  
print GEN_FILE "  assign enableReadInt   = enableReadDly;\n";
print GEN_FILE "  assign addressReadInt  = addressReadDly;\n";  
print GEN_FILE "  assign enableWriteInt  = enableWriteDly;\n";  
print GEN_FILE "  assign addressWriteInt = addressWriteDly;\n";  
print GEN_FILE "  assign writeDataInt    = writeDataDly;\n";  
if($dm){
print GEN_FILE "  assign dataMaskInt     = dataMaskDly;\n";  
}

}  
else {
	
print GEN_FILE "  assign enableReadInt   = enableRead;\n";
print GEN_FILE "  assign addressReadInt  = addressRead;\n";  
print GEN_FILE "  assign enableWriteInt  = enableWrite;\n";  
print GEN_FILE "  assign addressWriteInt = addressWrite;\n";  
print GEN_FILE "  assign writeDataInt    = writeData;\n";  
if($dm){
print GEN_FILE "  assign dataMaskInt     = dataMask;\n";  
}

}

print GEN_FILE "\n";
print GEN_FILE "  IP_Ram2P #($memdepth, $memwidth) uIP_Ram2P\n";
print GEN_FILE "	(\n";
print GEN_FILE "	// Outputs;\n";
print GEN_FILE "	.readData     		 ( readDataInt     ),\n";
print GEN_FILE "	// Inputs;\n";
print GEN_FILE "	.clockCore    		 ( clockCore       ),\n";
print GEN_FILE "	.enableRead    		 ( enableReadInt   ),\n";
print GEN_FILE "	.addressRead      	 ( addressReadInt  ),\n";
print GEN_FILE "	.enableWrite    	 ( enableWriteInt  ),\n";
print GEN_FILE "	.addressWrite  		 ( addressWriteInt ),\n"; 
if($dm){
print GEN_FILE "	.writeData    		 ( (writeDataInt & ~dataMaskInt) | (uIP_Ram2P.mem[addressReadInt] & dataMaskInt)) \n"; 
}
else {
print GEN_FILE "	.writeData    		 ( writeDataInt    ) \n"; 
}
print GEN_FILE "	);\n";
print GEN_FILE "\n";	

if ($fo) {
	
print GEN_FILE "  reg    [$memwidth_minus_1:0]	readDataIntDly;\n";
print GEN_FILE "\n";
print GEN_FILE "  always @(posedge clockCore) begin\n";
print GEN_FILE "     readDataIntDly <= readDataInt;\n";   
print GEN_FILE "  end\n";
print GEN_FILE "\n";  
print GEN_FILE "  assign readData = readDataIntDly;\n";
print GEN_FILE "\n";  

}
else {
	
print GEN_FILE "  assign readData = readDataInt;\n";
print GEN_FILE "\n";

}

}

print GEN_FILE "endmodule\n";

close(GEN_FILE);

