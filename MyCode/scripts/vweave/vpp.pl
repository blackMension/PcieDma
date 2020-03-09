#!/usr/bin/perl
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



($VHome = $0) =~ s/([^\/]*)$//;

require "${VHome}/fileutils.pl";
require "${VHome}/VerilogPreProcessor.pl";

require "${VHome}getopts.pl";

&Getopts('uhyi:');

if(!@ARGV)
{
	 push(@ARGV, "-");
}

@InFiles = @ARGV;

if ($opt_u || $opt_h || !@InFiles) {
    select(STDERR) unless ($opt_u || $opt_h);
    print "usage: $VProg [-u|h]" .
        " [-y <path>] <Verilog files>\n";
    print "    -u:          print usage statement.\n";
    print "    -h:          print help statement (man page).\n";
	 print "    -i: <Path>   Include Libary Path.\n";
    print $Description if ($opt_h);
    exit (2);
}

$SearchDirs = ". $opt_y";

foreach $ev (qw/LIBDIRS INCDIRS/) {
    ${$ev} .= $ENV{$ev};
}

$opt_i = join(" ",split(/:+/,":".$INCDIRS));
$opt_y = join(" ",split(/:+/,":".$LIBDIRS));

foreach $ProcessFile (@InFiles)
{
	 #
	 # If we already did the file, ignore it.
	 #
	 $buffer = VerilogPreProcessor($ProcessFile);
	 print $buffer;
}


