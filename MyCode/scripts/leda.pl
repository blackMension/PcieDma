#!/usr/bin/perl -w

# this script to be run in sim directory

use Getopt::Long;

   GetOptions("nochk|n" => \$NOCHK,
              "top|t=s" => \$TOP,
              "bb=s"    => \$BBOX,
              "sdc=s"   => \$SDC,
              "nv2k"    => \$NOV2K,
              "phy"     => \$PHYMEM,
              "dump|d"  => \$DUMP,
              "cs|config_summary" => \$CONFIG_SUMMARY,
              "vr|vrep" => \$VREP,
              "g|gui"   => \$GUI,
              "debug"   => \$DEBUG,
              "help|h"  => \$HELP,
              "sv"      => \$SV) ;

if(!defined $TOP || $HELP || (defined $GUI & defined $VREP)) {
   printf "\n    Usage : leda_lint.pl -top <top_design_name> [-vrep|-gui] [-nochk] [-help] [-config_summary] [-debug] [-sv] [-dump] \n ";
   printf "\n    ************>NOTE: -gui and -vrep can't be specified together\n " if ($GUI && $VREP);
   printf "\n    [-dump] to dump dump_file_list.f and  dump_unit_list.f files\n";
   printf "\n    check your results in /project/asic/<whoami>/lint/ \n " ;
   die "\n    [-vrep|-gui] to open html/gui after checking\n    [-config_summary] to print out the rule used to check the design\n    [-nochk] do not check design, just compile it\n\n";
}

#$rundir = `pwd`;
#$rundir =~ s/\s+//;

while (! -f "TOP") {
   chdir("..");
   $topdir = `pwd`;
}
$topdir =~ s/\s+//;

$whoami = `whoami`;
$whoami =~ s/\s+//;

$lint_dir_name = "lint";
#$rundir = "/project/asic/$whoami/$lint_dir_name";
$rundir = "$topdir/rtl/syn/$lint_dir_name";

if (-e $rundir) {
    chdir("$rundir");
} else {
    system  ("mkdir $rundir");
    chdir("$rundir");
}

if(defined $SDC) {
    #$sdcdir = "/project/asic/$whoami/syn";
    $sdcdir = "$topdir/rtl/syn";
    if($SDC eq "rtl") {
        $leda_flags = " +lic+wait -translate_directive -constraint_file $sdcdir/syn_sdc_$TOP.tcl -sdc -config $topdir/scripts/sdc_rtl_config.tcl " ;
    } elsif ($SDC eq "pre") {
        $leda_flags = " +lic+wait -translate_directive -constraint_file $sdcdir/syn_sdc_$TOP.tcl -sdc -config $topdir/scripts/sdc_prelayout_config.tcl " ;
    }
    # sdc check command
} else { 
    $leda_flags = " -project $TOP.pro -html $TOP +lic+wait -translate_directive -block -chip -nomaxviolations -nomaxmessages -work leda_work -forcehierdump -full_inf -config $topdir/scripts/leda_config.tcl" ;
    # rtl check command
}

if(!defined $NOV2K) {
   $leda_flags .= " +v2k " ;
}

if(defined $CONFIG_SUMMARY) {
   $leda_flags .= " -config_summary " ;
}

if(defined $NOCHK | defined $DUMP) {
   $leda_flags .= " -c " ;
}

if(defined $TOP) {
   $leda_flags .= " -top $TOP " ;
}

if(defined $SV) {
   $leda_flags .= " +sv " ;
}

if(defined $BBOX) {
    my @units = split ("," , $BBOX); 
    foreach $unit (@units) {
        $leda_flags .= " -bbox $unit " ;
    }
}


$DEFAUL_EXT   = "+libext+.v+.vh+.vcs+.h+.sv";
@DEFAULT_LIBS_ARRAY  = (
                        "-y $topdir/rtl/src     ",
                        "-y $topdir/rtl/src/Dp  ",
                        "-y $topdir/rtl/src/Igr ",
                        "-y $topdir/rtl/src/Egr ",
                        "-y $topdir/rtl/src/Shim ",
                        "-y $topdir/rtl/common  ",
                        "-y $topdir/rtl/fifo    ",
                        "-y $topdir/rtl/src/Include ",
                        "-y $topdir/rtl/ram/beh ",
                        "-y /home/tools/eda/dc/dw/sim_ver "
                        ); 
$DEFAULT_LIBS = "";
foreach $default_libs_dir (@DEFAULT_LIBS_ARRAY) {
   $DEFAULT_LIBS .= " $default_libs_dir ";
}
@INCLUDE_PATH_ARRAY  = (
                        "+incdir+$topdir/rtl/src     ",
                        "+incdir+$topdir/rtl/src/Dp  ",
                        "+incdir+$topdir/rtl/src/Igr ",
                        "+incdir+$topdir/rtl/src/Egr ",
                        "+incdir+$topdir/rtl/src/Shim ",
                        "+incdir+$topdir/rtl/common  ",
                        "+incdir+$topdir/rtl/fifo    ",
                        "+incdir+$topdir/rtl/src/Include ",
                        "+incdir+/home/tools/eda/dc/dw/sim_ver "
                       );

$INCLUDE_PATH = "";
foreach $include_path_dir (@INCLUDE_PATH_ARRAY) {
   $INCLUDE_PATH .= "$include_path_dir";
}


if(defined $PHYMEM) {
   #$DEFAULT_LIBS .= " -y $topdir/rtl/ram/gate -y /home/asic/vendors/";
   #$INCLUDE_PATH .= " +incdir+$topdir/rtl/ram/gate +incdir+/home/asic/vendors/";
} else {
    $DEFAULT_LIBS .= " -y $topdir/rtl/ram/beh ";
    $INCLUDE_PATH .= " +incdir+$topdir/rtl/ram/beh ";
}

#$LEDA_CMD = " $leda_flags $DEFAUL_EXT $DEFAULT_LIBS $INCLUDE_PATH " ;
#
#if(defined $NOCHK | defined $DUMP) {
#    $LEDA_CMD .= " $topdir/rtl/src/$TOP/$TOP.v ";
#} else {
#    print "\n Processing sub-modules. Please wait... \n";
#    print "\n leda $LEDA_CMD $topdir/rtl/src/$TOP/$TOP.v -c > /dev/null \n";
#    system ("leda $LEDA_CMD $topdir/rtl/src/$TOP/$TOP.v -c > /dev/null ");
#    @sub_modules = `cat $rundir/$TOP-libs/leda_work/__FILES__ | grep "\.v\$" | grep -v "\/DW" | grep -v "\.vh\$" | grep -v ".*Include" | grep -v "${TOP}Reg\.v"`;
#    foreach $design (@sub_modules) {
#        chomp $design;
#        $LEDA_CMD .=  " $design ";
#    }
#}

$LEDA_CMD = " $leda_flags $DEFAUL_EXT $DEFAULT_LIBS $INCLUDE_PATH " ;

$topfile = glob "$topdir/rtl/src/*/$TOP.v";
if(-e $topfile) {
    $TOP_SRC = $topfile;
} else {
    die "cant find top design in $rtl_dir/$TOP or other dirs";
}

if(defined $NOCHK | defined $DUMP) {
    $LEDA_CMD .= " $TOP_SRC ";
} else {
    print "\n Processing sub-modules. Please wait... \n";
    system ("leda $LEDA_CMD $TOP_SRC -c > /dev/null ");
    @sub_modules = `cat $rundir/$TOP-libs/leda_work/__FILES__ | grep "\.v\$" | grep -v "\/DW" | grep -v "\.vh\$" | grep -v ".*Include" | grep -v "${TOP}Reg\.v"`;
    foreach $design (@sub_modules) {
        chomp $design;
        $LEDA_CMD .=  " $design ";
    }
}

# compile

if(defined $DEBUG) {
   printf ("command:\n leda $LEDA_CMD \n"); 
} else {
   if(defined $SDC) {
      system("leda $LEDA_CMD | tee -i $rundir/$TOP.sdc.rpt"); 
   } else {
      system("leda $LEDA_CMD "); 
   }

   if(defined $GUI & !defined $SDC & !defined $NOCHK) {
      system ("leda -project $TOP.pro -config $topdir/scripts/leda_config.tcl ")  ;
   }
   
   if(defined $VREP) {
      if(defined $SDC) {
         system ("gvim $rundir/$TOP.sdc.rpt");
      } else {
         system ("mozilla file://$rundir/$TOP-html/$TOP.html");
      }
   }
   
   if(defined $DUMP) {
       system ("cp $rundir/$TOP-libs/leda_work/__FILES__ $rundir/dump_file_list.f");
       system ("cp $rundir/$TOP-libs/leda_work/__UNIT__ $rundir/dump_unit_list.f");
   }
}

