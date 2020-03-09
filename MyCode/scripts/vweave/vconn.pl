#!/usr/bin/perl
########################################################################
# Copyright (C) 1998-2000 
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
########################################################################
($VHome = $0) =~ s/([^\/]*)$//;
$VHome = "." if ( $VHome eq "");

require "${VHome}/fileutils.pl";
require "${VHome}/getopts.pl";

use File::Basename;

$progName = basename($0);

$VPORTS = "${VHome}/ports";

my ($file) = @ARGV;

open (PPORT, "$VPORTS $file |") ||
    die "unable to get ports for $fullName";

while (<PPORT>) {
#    print $_;
        
    @words = split(/\s/, $_);

    if ($#words < 2) {
        $bus = "";
    } else {
        $bus = "";
        $i = $#words;
        for ($i = 2; $i <= $#words; $i = $i + 1) {
            $bus = $bus . $words[$i];
        }
    }
        
    $signal = $words[1];

    if ($words[0] =~ /^[mn]$/) {
        push @modules, $signal;
        $currinst = $signal;
    }

    if ($words[0] =~ /^[iob]$/) {
        $connections{$modules[0]}{$signal} = $bus if (!$intask);
    }
    elsif ($words[0] =~ /^p$/) {
        $connections{$currinst}{$signal} = $bus if (!$intask);
    }
    elsif ($words[0] eq 'f') {
        $intask = $intask + 1;
    }
    elsif ($words[0] eq 't') {
        $intask = $intask + 1;
    }
    elsif ($words[0] eq 'ef') {
        $intask = $intask - 1;
    }
    elsif ($words[0] eq 'et') {
        $intask = $intask - 1;
    }
    elsif ($words[0] eq 'em') {
        $intask = $intask + 1;
    }
}

close(PPORT) || die "error getting ports for $fullName: $! $?";

#&printit;

# Construct the string for later
$instanceNumber = 0; 
$pf = 0; $pfmod = 1; #variables to control the spacing of lines (set to every other)
$bars = "|     " x $#modules; #note that it is bar then six spaces (every other)
$bars .= "|";
$barlen = length($bars);

foreach $instanceName (@modules) {
    $str = "// $instanceName";
    $i = 15 - (length($instanceName)) + 6 * $instanceNumber; 
    $str .= &dashes($i) if($pf == 0);
    $str .= &spaces($i) if($pf > 0);
    $pf++; $pf = 0 if($pf >$pfmod);

    push @moduleList ,$str.">".substr($bars, $instanceNumber * 6, $barlen);
    $instanceNumber++;
}

&printConnectionMatrix;

print "\n";
for ($i=0; $i<=$#modules; $i++) {
    printf "%-15s", $modules[$i];
    for ($j=0; $j<=$#modules; $j++) {
        printf "%5d ",connectionCount($modules[$i], $modules[$j]);
    }
    printf "\n";
}

exit 0;

sub printConnectionMatrix {
    my @lclinst = @modules;
    my $mod;
    my $modnum = $#moduleList;
    print "// CONNECTIVITY MATRIX\n";
    # Print them in reverse...
    foreach $mod (@moduleList) {              
        print @moduleList[$modnum]."\n";
        $modnum--;
    }
}

sub connectionCount {
    ($inst1, $inst2) = @_;
    my $count = 0;

    foreach $signal (keys %{ $connections{$inst1} }) {
        if (exists ($connections{$inst2}{$signal}) && !constant($signal)) {
            $count += min ( buswidth($connections{$inst1}{$signal}),
                            buswidth($connections{$inst2}{$signal}) );
        }
    }
    return $count;
}

sub printit {
    foreach $mod (keys %connections) {
        print "$mod: ";
        foreach $port (keys %{ $connections{$mod} }) {
            print "$port ";
        }
        print "\n";
    }
}

sub spaces {
    my $c = $_[0];
    my $d = ( $c > 0 ) ? " " x $c : "";
}

sub dashes {
    my $c = $_[0];
    my $d = ( $c > 0 ) ? "-" x $c : "";
}

sub buswidth {
    my $bus = $_[0];
    my $i, $max, $min;

    if ($bus ne '') {
        if ( $bus =~ m/\:/ ) {
            $i = index($bus, ":");
            $max = substr($bus, 1, $i);
            chop ($max);
            $min = substr($bus, $i + 1);
            chop ($min);
            return $max - $min + 1;
        }
    }
    return 1;
}

sub min {
    my ($a, $b) = @_;

    return $a if ($a < $b);
    return $b;
}

sub max {
    my ($a, $b) = @_;

    return $a if ($a > $b);
    return $b;
}

sub constant {
    my ($p) = @_;

    return (($p =~ /^(\d)*\'[bdoh][0-9a-fA-F_]*$/) ||
            ($p =~ /^$/)) ? 1 : 0;
}

