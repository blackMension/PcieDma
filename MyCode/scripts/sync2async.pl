#!/usr/bin/perl
### This script is used to convert RTL from sync reset to async reset
### Usage: sync2async.pl -w -f <>.v

use Getopt::Long;
       GetOptions(
              "-b"           => \$OPTBAK,
              "-w"           => \$OPTW,
              "-f:s"         => \$OPTFN,
              );
$fn = $OPTFN;
@txt;
$pre_txt ="";
$post_txt ="";
$errorline = "";
#################################################################

open(FILE, "$fn") || die "Can't Open file $fn";
@txt = <FILE>;
$pre_txt = join("",@txt);
close(FILE);

################################################################
# error check
$line = $pre_txt;
# Clock Name maybe error when positive edge trigger signal name is not prefix with clock- or clk- or postfix with -Clock
while($line =~ /(always(?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)*@(?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)*\((?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)*posedge(?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)+)(\w+)/g ){ 
      $errorline = $&;
      $clockName = $2;
      if($clockName !~ /(clock\w*|clk\w*|\w*Clock)/){
          print "clock signal name is [$clockName] in file ---$fn--- as follows: \n\"$errorline\"\n:  this file not changed, but please check it\n";
          exit ;
      }
}
# Reset Name maybe error when signal Name is prefix with rst- or postfix with -Reset
$line = $pre_txt;
   if($line =~ /(always(?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)*@(?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)*\((?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)*posedge(?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)+)(clock\w*|clk\w*|\w*Clock)((?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)*\)(?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)*(?:begin(?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)+)*if(?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)*\((?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)*)(rst\w*|\w*Reset)((?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)*\))/g ){ 
      $errorline = $&;
      $rstName = $4;
      print "reset signal name is [$rstName] in file ---$fn--- as follows: \n\"$errorline\"\n:  this file not changed, but please check it\n";
      exit ;
   }
################################################################
$post_txt = $pre_txt;
$post_txt =~ s/\/\/\s*synospsys\s+sync_set_reset.*//g;
#1    (always@(posedge )
#2    (clock\w*|clk\w*)
#3    (\)begin if\()
#4    (reset\w*)
#5    (\))
$post_txt =~ s/(always(?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)*@(?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)*\((?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)*posedge(?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)+)(clock\w*|clk\w*|\w*Clock)((?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)*\)(?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)*(?:begin(?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)+)*if(?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)*\((?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)*)(reset\w*)((?:\s|\/\/.*\n|\/\*(?:[^*]|[*][^\/*])*[*]*\*\/)*\))/\1\2 or negedge \4\3!\4\5/g;
#print $post_txt;
################################################################
if($OPTBAK){
 open(FILE, ">${fn}_sync.bak") || die "Can't Open file ${fn}_sync.bak";
 print FILE  $pre_txt;
 close(FILE);
}
if($OPTW){
 open(FILE, ">$fn") || die "Can't Open file $fn";
 print FILE  $post_txt;
 close(FILE);
}
else {
print $post_txt;
}


