#
# Extract important data from a Verilog File.  This assumes the file
# Has been pre-processed (comments removed).  Returns a Depend List.
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

$SPLITS  = "endmodule|begin|end|task|endtask|function|endfunction|enddefine";
$PRIMATIVES  = 'input|output|inout';
$PRIMATIVES .= '|reg|wire|supply[01]';
$PRIMATIVES .= '|tri[01]?|wand|wor|triand|trio|trireg';

#
# Search for special characters
#
$BUSCHARS  = '[\[\d\s\+\-\*\/\:\]]*';
$NETCHARS  = '[\w\s,]+';
$CONCHARS  = '[\w\s\.\(\)\{\}\[\:\],\'\\\/]+';

sub VerilogData {
	 local ($InString) = @_;
	 local ($Module) = 0;
	 local ($Block ) = 0;
	 local (@LargeArray);
	 local ($Depend);

	 @LargeArray = split (";", $InString);

	 foreach $Line (@LargeArray)
	 { 

		  @Blocks = split (/\b($SPLITS)\b/, $Line);

		  while(@Blocks)
		  {
				$_ = shift (@Blocks);

				$Module = 0 if(/\bendmodule\b/);
				$Block++ if(/\bbegin\b/);
				$Block-- if(/\bend\b/);

				if(/\bmodule\b/)
				{
					 $Module = 1;

				}
				elsif($Module != 0 && $Block == 0)
				{ 

					 # Skip over verilog primatives.
					 if(/\b($PRIMATIVES)\b/)
					 {
					 }
					 elsif(/\b(\w+)\s+([\w\\\/]+)\s*\(/)  {

						  if(!exists $module_file{"$1"})
						  {
								#
								# Globals
								#
								$module_file{"$1"} = "EMPTY";
								push(@DoModules, "$1");
								$EmptyModules ++;

								$Depend .= ($Depend ne "") ? ",$1" : "$1";

#								print "*-*-* $_ *-*-*\n";
						  }
					 }
				}
		  }
	 }

	 return ($Depend);

}

1

