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

use strict;

# ==================================
# Some Useful Routines
# ==================================

sub FindFile {
    my ($FindFile, @FindDirs) = @_;
    my ($FoundFile,$FindDir);

    $FoundFile = "";
    if ($FindFile =~ /^\s*\//) {
        $FoundFile = "$FindFile" if (-f "$FindFile");
    }
    else {
        foreach $FindDir (@FindDirs) {

            if (-f "${FindDir}/$FindFile") {
                $FoundFile = "${FindDir}/$FindFile";
                last;
            }
        }
    }
    $FoundFile =~ s/^\.\///;
    return ($FoundFile);
}

# -=-=-=-=-=-=-=-=-=-=-=-=-=-= CUT HERE =-=-=-=-=-=-=-=-=-=-=-=-=-=-
#
# Find Directories with files that match $fileSpec
#
sub FindDirs {
    my ($fileSpec, @searchDirs) = @_;
    my (@specs,@entries,@foundDirs);
    my ($d,$e,$s,$found);

    @specs = split(" ", $fileSpec);
    $found = 0;

    foreach $d (@searchDirs) {
	
	# get directory's contents (except those beginning with a dot)
	opendir(DIR, $d) || die "can't opendir $d: $!";
	@entries = grep {!/^\./} readdir(DIR);
	closedir DIR;
	
	# search entries
	foreach $e (@entries) {

	    # if entry is a directory, search it too
	    push (@foundDirs, &FindDirs($fileSpec, "$d/$e"))
		if( -d "$d/$e" );

	    # if entry is a file, does it match $FileSpec ?
	    foreach $s (@specs) {
		$found = 1 if ( $e =~ /$s/ ); 
	    }
	}
	
	# add directory to return list if a match was found
	push (@foundDirs, $d)
	    if ( $found )
	
    }
    
    return (@foundDirs);
    
}

# -=-=-=-=-=-=-=-=-=-=-=-=-=-= CUT HERE =-=-=-=-=-=-=-=-=-=-=-=-=-=-

########################################################################
#
# search upward in directory structure for $file, starting in $startDir
#
sub FindFileUpward {
    my ($file,$startDir) = @_;
    my (@matches);
    my ($curr_dir,$prev_dir,$e,$rlast);

    $curr_dir = $startDir;
    $curr_dir =~ s/\n//g;

    do {

	opendir(DIR, $curr_dir) 
	    || die "FindFileUpward: can't opendir $curr_dir: $!";  
	@matches = grep(/^$file$/,readdir(DIR));
	closedir DIR;
	
	return ($curr_dir) if (@matches);
	
	# file not found, look in parent
	$prev_dir = $curr_dir;
	$curr_dir =~ s#^(.*)/[^/]*$#$1#g;

    } while ( $curr_dir ne "" && $prev_dir ne $curr_dir );
    
    return "";
}

########################################################################
# 
# This routine causes the environment to be set for a given project/chip,
# then finds and executes a user-specified (child) program.
#
# First, the chip initialization (.ini) file is located and run.
# Then the user-specified (child) program is located and run.
#

sub LaunchPerl {
    my ($prog, @argv) = @_;
    my ($FindSpec,$progPath);
    my ($iniFile,$iniDir,@progDirs,$parentDir);

    # Find the Project Initialization (.ini) file
    $iniFile = "chip.ini";
    $iniDir = &FindFileUpward($iniFile,$ENV{PWD});
    $ENV{CHIPROOT} = $iniDir if ( $iniDir ne "" );
    warn "LauchPerl: could not find initialization file \"$iniFile\"\n" 
	if ( $iniDir eq "" );

    # Execute the .ini file
    require $iniDir."/".$iniFile
	if ( $iniDir ne "" );

    # Find the user-specified (i.e., child) program
    push(@progDirs, $iniDir."/tools/scripts"); # look locally first
    push(@progDirs, split(/:+/,$ENV{PATH}));    # then look thru the normal path
    $progPath = &FindFile($prog.".pl", @progDirs);

    die "Could not find program file $prog" 
	if($progPath eq "");

    # Keep track of the location of the parent Perl script
    $parentDir = $0; $parentDir =~ s#/[^/]*$##g;

    # Start the child program
    #   specify the -I perl flag so child programs can find
    #   site-specific perl utility libraries, etc.
    return system("perl","-I${parentDir}",$progPath,@argv);
}
1


