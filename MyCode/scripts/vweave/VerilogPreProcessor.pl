#
# Remove Comments From Verilog.  Expand / Collapse IFDEFS.
# Also expand Defines, and get include files. Requires fileutils.pl
#
# Copyright (C) 1998-2000 Raydiant
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public LIcense
# as published by the Free Software Foundation;  either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABLILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

sub VerilogPreProcessor {
    local ($InFile) = @_;
    local ($Comment) = 0;
    local ($Continue) = 0;
    local ($Line, $NewLine, $PrevLine);
    local ($Buffer);
    local ($IfDef) = 0; # Default 0 = no deletion
    
    # Global, bad way to due this.  Someone else may have the same handle!
    $IN++;
    
    local ($Ticks) = "define|ifdef|else|endif|timescale";
    
    #
    # Ticks to just IGNORE
    #
    $IgnoreList{"timescale"} = 1;
    $IgnoreList{"celldefine"} = 1;
    $IgnoreList{"endcelldefine"} = 1;
    
    open ($IN, "<$InFile");
	 
    $PrevLine = "";
    $NewLine = "";
    $Line = "";

    while (<$IN>) {
        chop;
        $Line = $PrevLine . $_;
        # $Line =~ s/(\s)+/$1/g; # Remove excess whitespace
        
        $NewLine = "";
        $PrevLine = "";
        
        #
        # Multi-line statements
        #
        if ($Line =~ /\\$/) {
            chop $Line;
            $PrevLine = $Line;
            $Continue = 1;
        } else {
            $Continue = 0;
        }
        next if ($Continue);
        
        #
        # Comments.  Remove them.
        #
        while ($Line) {
            if ($Line =~ /\/[\*\/]/) {
                $NewLine .= $` if (!$Comment);
                $Line = $NewLine if ($& eq "//");
                $Comment = 1 if ($Line =~ /\/\*/);
            }
            if ($Comment) {
                if ($Line =~ /\*\//) {
                    $NewLine .= $';
                    $Comment = 0;
                }
                $Line = $NewLine;
            }
            last if ($NewLine eq "");
            $Line = $NewLine;
            $NewLine = "";
        }

        #
        # Glorified Comments, but LINE Based! (Yea!)
        # Deal with ifdefs.  Look in Defines stack.
        #
        if ($Line =~ /^\s*\`ifdef\s+(\w+)/) {
            $DefName = $1;
            push (@IfNestLevel, $IfDef); #Save the current state (comment out or not)
            $IfDef = (defined $DefineList{$DefName})? 0 : 1;
            $Line = "\n";
        }
        if ($Line =~ /^\s*\`else/) {
            $IfDef = ! $IfDef;
            $Line = "\n";
        }
        
        if ($Line =~ /^\s*\`endif/) {
            $IfDef = pop (@IfNestLevel);
            $Line = "\n";
        } 
        
        $Line = "" if ($IfDef);
        
        #
        # Deal with Includes
        #
        if ($Line =~ s/^\s*\`include\s+\"([^\"]*)\"//) {
            $IncFile = $1;
            # This could be bad, since we don't check for a recusive include!
            $IncFileFound = &FindFile ($IncFile, split(" ",". $opt_i"));
            if ($IncFileFound) {
                $Buffer .= VerilogPreProcessor ($IncFileFound);
            }
            else
            {
                print STDERR "ERROR: Could Not locate file $IncFile \n";
            }
            next;
        }
        
        #
        # Deal with Defines
        #
        if ($Line =~ /\`define\s+(\w+)\s+(.*)\s*$/) {
            ($DefName, $DefValue) = ($1, $2);
            $DefValue =~ s/\"//g; # Remove Quotes
            $DefineList{$DefName} = $DefValue;
            $Line = "\n";
        }
        
        while ($Line =~ /\`(\w+)\b/g) {
            $DefName = $1;
            if (defined $DefineList{$DefName}) {
                $DefValue = $DefineList{$DefName};
                # PS -- handle recursive `defines
                while ( $DefValue =~ /\`(\w+)\b/g ) {
                    my ($key,$val);
                    $key = $1;
                    if (defined $DefineList{$key}) {
                        $val = $DefineList{$key};
                        $DefValue =~ s/\`$key/$val/;
                    } else {
                        print STDERR "WARNING: undefined macro $key \n";
                    }
                }
                $Line =~ s/\`$DefName/$DefValue/;
            }
            elsif(! defined $IgnoreList{$DefName}) {
                print STDERR "WARNING: undefined macro $DefName \n";
            }
        }
        
        # Kill Dead Lines, Buffer the good ones...
        $Buffer .= "$Line\n" if ($Line !~ /^\s*$/); 
        
    }
    
    $IN--;
    
    ################################################
    ## add to convert verilog 2001 to 1995
    $tmp = $Buffer;
    @fields = split /\n/, $tmp;

    $inmod = 0;
    @match = ();
    @out=();
    foreach $cont (@fields) {
       if($cont =~ /^\s*module.*\(/) {
          $inmod = 1;
       }
       
       if($inmod & ($cont =~ /^\s*\binput\b/)) {
          $a = $cont;
          $a =~ s/\bwire\b\s+/ /;
          $a =~ s/\);//;
          if($a =~ /,/) {$a =~ s/,/;/;}
          else{$a =~ s/$/;/;}
          push(@match,$a);
       } elsif ($inmod & ($cont =~ /^\s*\boutput\b/)) {
          $a = $cont;
          $a =~ s/\bwire\b\s+/ /;
          $a =~ s/\breg\b\s+/ /;
          $a =~ s/\);//;
          if($a =~ /,/) {$a =~ s/,/;/;}
          else{$a =~ s/$/;/;}
          push(@match,$a);
       }

       if($inmod & ($cont =~ /.*\);/)) {
          $inmod = 0;
       }

       #syswrite(FILE1,"$cont\n");
    }

    foreach $aaa (@fields){
       if($aaa =~ /^\s*module.*\(/) {
          $inmod = 1;
       }

       if($inmod & ($aaa =~ /.*\);/)) {
          $inmod = 0;
          push(@out,$aaa);
          push(@out,@match);
       } else {
          push(@out,$aaa);
       }
    }

    $tmpa;
    foreach $bb (@out){
       $tmpa .= "$bb\n";
    }
    $Buffer = $tmpa;
    ##syswrite(FILE2,"$Buffer");
    ###############################################
    return ($Buffer);
}
1

