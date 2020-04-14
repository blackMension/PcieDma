#!/usr/bin/perl -w
### generate register verification file
use Getopt::Std;
use Getopt::Long;
use Cwd;
use File::Path;
use Env;
$| = 1;

GetOptions("rw"     => \$RW, 
           "mess"   => \$MESS,
           "cpc"    => \$CPC,
          );


use Carp;

($rules, $VNUM) = &init;
($spreadsheat, $_f) = &parseARGV;

$vdb = parseInput($spreadsheat, $rules, $VNUM);

$top = $spreadsheat;
$top =~ s/Reg\.txt//;
#-----------------------------------------------------------------------------#
sub parseARGV {
#-----------------------------------------------------------------------------#
	my($spreadsheat, $_f);
	$_f = 0;
	$spreadsheat = pop @ARGV;
	foreach $dude (@ARGV) {
		($dude eq '-f') && do {
			$_f = 1;
			next;
		};
	}
	($spreadsheat, $_f);
}

#-----------------------------------------------------------------------------#
sub parseInput {
#-----------------------------------------------------------------------------#

	my($inFile, $rules, $VNUM) = @_;
	my(@input, @tmp, @keys, @regs, @values, @mem_regs);
	my($state, $rule, $key, $value, $i);

	my $vdb = {};

	open(F, $inFile) || die"Cannot open $inFile";
	$state = '';
	while (<F>) {
		s/#.*//;
		/^\s*$/ && do {
			$state = '';
			next;
		};
	    s/\t +/\t/g;
	    s/ +\t/\t/g;
	    s/ +\n$/\n/;
	    s/ +\r$/\r/;
	    @input = split(/[\r\t\n]/);
	#	@input = split(' ');
#--- New block of records. First line ALWAYS declares the KEYS!
#--- Find out what kind of block it is according to the 'guessing' rules
		$state || do {
			($input[0] eq 'MemRegFields') && do {
				@mem_regs = @input;
				shift @mem_regs;
				next;
			};

			foreach $st (keys %$rules) {
				$rule = join('|', keys %{$rules->{$st}});
				(@tmp = grep(/^(?:$rule)$/, @input)) || next;
				(@tmp == keys %{$rules->{$st}}) || next;
				@regs = grep(!/^(?:$rule)$/, @input);
				$state = $st;
				last;
			}
	
			(@keys = @tmp) || die"Confused @ line:\n$_";
			next;
		};
	
#--- Process the data line
#		print "keys = @keys regs = @regs and input = @input\n";
		((@keys + @regs) == @input) || do {
			die"Confused @ line:\n$_ "; };
#--- this is because of 'FIELDS' block.
#--- The remainder of @input holds the default values
		@values = splice(@input, 0, @keys);
		my $data = {};
		@$data{@keys} = @values;
		while (($key, $value) = each %$data) {
			exists($rules->{$state}{$key}) ||
				die"Bad state=$state or key=$key @ line:\n$_";
			($value =~ /^$rules->{$state}{$key}$/) ||
				die"$key = $value violates rule '/^$rules->{$state}{$key}$/'!\n";
		}
	
	
		($state eq 'GLOBAL') && do {
			$vdb = $data;
			next;
		};
	
		($state eq 'REG') && do {
			my $name = $data->{Register};
			delete $data->{Register};
			$vdb->{Register}{$name} = {};
			$vdb->{Register}{$name} = $data;
			next;
		};
	
		($state eq 'FIELDS') && do {
			foreach $reg (@regs) {
				exists($vdb->{Register}{$reg}) ||
					die"reg '$reg' does not exists @ line:\n$_ ";
				my $dataPerReg = { %$data };
				my $field = $dataPerReg->{Fields};
				delete $dataPerReg->{Fields};
				$dataPerReg->{Default} = shift(@input);
				($dataPerReg->{Default} =~ /^$VNUM$/) ||
					die"$reg = $dataPerReg->{Default} violates rule '/^$VNUM$/'!\n";
				$vdb->{Register}{$reg}{Fields}{$field} = {};
				$vdb->{Register}{$reg}{Fields}{$field} = $dataPerReg;
			}
			next;
		};
	
		($state eq 'MEM') && do {
			my $name = $data->{RegMem};
			delete $data->{RegMem};
			$vdb->{RegMem}{$name} = {};
			$vdb->{RegMem}{$name} = $data;
			next;
		};
	
		($state eq 'MEM_FIELDS') && do {
			foreach $reg (@mem_regs) {
				exists($vdb->{RegMem}{$reg}) ||
					die"reg '$reg' does not exists @ line:\n$_ ";
				my $dataPerReg = { %$data };
				my $field = $dataPerReg->{Fields};
				delete $dataPerReg->{Fields};
				$vdb->{RegMem}{$reg}{Fields}{$field} = {};
				$vdb->{RegMem}{$reg}{Fields}{$field} = $dataPerReg;
			}
			next;
		};
	
		die;
	}
#--- Cross-reference offsets->fields
	if ($vdb->{FlopInput} eq 'Y') {
		$vdb->{CtrlLogicMdfy} = '';
	} else {
		$vdb->{CtrlLogicMdfy} = 'NoInputFlop';
	}
	foreach $mem (keys %{$vdb->{RegMem}}) {
		my $memRef = $vdb->{RegMem}{$mem};
		$memRef->{Offsets} = [];
		for($i = 0; $i < $memRef->{Words}; $i++) {
			$memRef->{Offsets}[$i] = [];
		}

		foreach $field (keys %{$memRef->{Fields}}) {
			($memRef->{Fields}{$field}{Offset} >= $memRef->{Words}) &&
				die"field '$field' of mem '$mem' has offset '$memRef->{Fields}{$field}{Offset}' >= Words '$memRef->{Words}!";
			push(@{$memRef->{Offsets}[$memRef->{Fields}{$field}{Offset}]}, $field);
		}
	}


	foreach $reg (keys %{$vdb->{Register}}) {
		my $regRef = $vdb->{Register}{$reg};
		$regRef->{Offsets} = [];
		for($i = 0; $i < $regRef->{Words}; $i++) {
			$regRef->{Offsets}[$i] = [];
		}

		$regRO = 1;
		foreach $field (keys %{$regRef->{Fields}}) {
			$regRO = 0 if $regRef->{Fields}{$field}{ReadOnly} eq 'N';
			$regRO = 0 if $regRef->{Fields}{$field}{WriteIndicate} eq 'Y';
			($regRef->{Fields}{$field}{Offset} >= $regRef->{Words}) &&
				die"field '$field' of reg '$reg' has offset '$regRef->{Fields}{$field}{Offset}' >= Words '$regRef->{Words}!";
			push(@{$regRef->{Offsets}[$regRef->{Fields}{$field}{Offset}]}, $field);

			($regRef->{Fields}{$field}{ReadIndicate} eq 'Y') &&
				($regRef->{ReadIndicate} = '');

			($regRef->{Fields}{$field}{WriteIndicate} eq 'Y') &&
				($regRef->{WriteIndicate} = '');
		}
		$regRO && ($regRef->{ReadOnly} = '');
	}

	$vdb;
}
	



#-----------------------------------------------------------------------------#
sub init {
#-----------------------------------------------------------------------------#
    my($context,$rules,$VNUM,@key);

$VNUM= '{?(?:(?:(?:[0-9]*\'[sS]?[bBhHdDoO]\s*[0-9A-Fa-f_?xX]+)|(?:[0-9]+)),?)+}?';

$rules = {
	GLOBAL		=> {
		'FileName'			=> '\w+',
		'Prefix'			=> '[A-Z0-9_]*',
		'AddrUpper'			=> '\d+',
		'AddrLower'			=> '\d+',
		'FlopInput'			=> '[YN]',
	},

	REG			=> {
		'Register'			=> '\w+',
		'FullName'			=> '\w+',
		'Words'				=> '\d+',
		'DecodeAddress'		=> $VNUM,
		'Description'		=> '.*',
	},

	FIELDS		=> {
		'Fields'			=> '\w+',
		'Offset'			=> '\d+',
		'HiBit'		=> '\d+',
		'LoBit'		=> '\d+',
		'ReadOnly'			=> '[NY]',
		'ReadIndicate'		=> '[NY]',
		'WriteIndicate'		=> '[NY]',
		'WriteOneIndicate'	=> '[NY]',
		'Description'		=> '.*',
	},

	MEM			=> {
		RegMem				=> '\w+',
		'FullName'			=> '\w+',
		'NumOfEntries'		=> '\d+',
		'Words'				=> '\d+',
		'MemAddrBits'		=> '\d+',
		'DecodeAddress'		=> $VNUM,
		'Description'		=> '.*',
	},

	MEM_FIELDS	=> {
		'Fields'			=> '\w+',
		'Offset'			=> '\d+',
		'HiBit'		=> '\d+',
		'LoBit'		=> '\d+',
		'ReadTrigger'		=> '[NY]',
		'WriteTrigger'		=> '[NY]',
		'Description'		=> '.*',
	},
} ;

	($rules, $VNUM);
}

if(defined $RW) {  ## for register walk
  # generate module level register walk configuraton file
   open(RW_FILE, "> $top/sim/register_walk") || die "can not create register_walk";
   printf RW_FILE ("// %s                                                      \n", $top);

   # Memory
   foreach $mem (sort keys (%{$vdb->{RegMem}})) {
      printf RW_FILE ("          \n");
      printf RW_FILE ("// %s     \n", $mem);
      # printf ("%s  \n", $vdb->{RegMem}->{$mem}->{DecodeAddress});  # for debug use

      @mask = ();
      $readEn  = 0;
      $writeEn = 0;
      foreach $fields (sort keys (%{$vdb->{RegMem}->{$mem}->{Fields}})) {
         $readEn  = $readEn || ($vdb->{RegMem}->{$mem}->{Fields}->{$fields}->{ReadTrigger} eq 'Y');
         $writeEn = $writeEn || ($vdb->{RegMem}->{$mem}->{Fields}->{$fields}->{WriteTrigger} eq 'Y');
         if($vdb->{RegMem}->{$mem}->{Fields}->{$fields}->{HiBit} == $vdb->{RegMem}->{$mem}->{Fields}->{$fields}->{LoBit}) {
            $mask[$vdb->{RegMem}->{$mem}->{Fields}->{$fields}->{Offset}] += 1 << $vdb->{RegMem}->{$mem}->{Fields}->{$fields}->{HiBit} 
         }
         else {
            $tmp = 0xffffffff >> (32 - ($vdb->{RegMem}->{$mem}->{Fields}->{$fields}->{HiBit} - $vdb->{RegMem}->{$mem}->{Fields}->{$fields}->{LoBit} + 1));
            $mask[$vdb->{RegMem}->{$mem}->{Fields}->{$fields}->{Offset}] +=  $tmp << $vdb->{RegMem}->{$mem}->{Fields}->{$fields}->{LoBit};
         }
      }
      #for ($i=0; $i<@mask; $i++) {
      #printf ("mask = %x\n", $mask[$i]);
      #}
      $tmp = $vdb->{RegMem}->{$mem}->{DecodeAddress};
      $tmp =~ tr/\?/0/;
      $tmp =~ tr/_//d;
      $tmp =~ s/^[0-9]*\'[bB]//;
      $tmp = oct("0b$tmp");
      $k = $vdb->{RegMem}->{$mem}->{Words};
      $k = findWidth($k);

      if(defined $CPC){
         # reg_write
         $bool = 0;
         if(($vdb->{RegMem}->{$mem}->{NumOfEntries}) >= 5){
            $step = ($vdb->{RegMem}->{$mem}->{NumOfEntries})/2 - 1;
         }else{
            $step = 1;
         }
         if($writeEn) {
            for($i=0; $i<$vdb->{RegMem}->{$mem}->{NumOfEntries}; $i += $step ) {
               for($j=0; $j<$vdb->{RegMem}->{$mem}->{Words}; $j++) {
                   if($bool == 0) {
                      if ($MESS) {
                        printf RW_FILE ("reg_write %08x  695a4b3c\n", ($tmp+$i*$k+$j)*4);
                      }
                      else {
                        printf RW_FILE ("reg_write %08x  5a5a5a5a\n", ($tmp+$i*$k+$j)*4);
                      }
                      $bool = 1;
                   }
                   else {
                      if ($MESS) {
                        printf RW_FILE ("reg_write %08x  96a5b4c3\n", ($tmp+$i*$k+$j)*4);
                      }
                      else {
                        printf RW_FILE ("reg_write %08x  a5a5a5a5\n", ($tmp+$i*$k+$j)*4);
                      }
                      $bool = 0;
                   }
               }
            }
         }#end reg_write


         # reg_check
         $bool = 0;
         if($readEn) {
            for($i=0; $i<$vdb->{RegMem}->{$mem}->{NumOfEntries}; $i+= $step ) {
               for($j=0; $j<$vdb->{RegMem}->{$mem}->{Words}; $j++) {
                  if($writeEn) {
                     if($bool == 0) {
                        if ($MESS) {
                           printf RW_FILE ("reg_check %08x  695a4b3c  %08x\n", ($tmp+$i*$k+$j)*4, $mask[$j]);
                        }
                        else {
                           printf RW_FILE ("reg_check %08x  5a5a5a5a  %08x\n", ($tmp+$i*$k+$j)*4, $mask[$j]);
                        }
                        $bool = 1;
                     }
                     else {
                        if ($MESS) {
                           printf RW_FILE ("reg_check %08x  96a5b4c3 %08x\n", ($tmp+$i*$k+$j)*4, $mask[$j]);
                        }
                        else {
                           printf RW_FILE ("reg_check %08x  a5a5a5a5 %08x\n", ($tmp+$i*$k+$j)*4, $mask[$j]);
                        }
                        $bool = 0;
                     }
                  } else {
                      printf RW_FILE ("reg_read %0x  \n", ($tmp+$i*$k+$j)*4);
                  }
               }
            } 
         }#reg_check

      }else{
      # reg_write
         $bool = 0;
         if($writeEn) {
            for($i=0; $i<$vdb->{RegMem}->{$mem}->{NumOfEntries}; $i++) {
               for($j=0; $j<$vdb->{RegMem}->{$mem}->{Words}; $j++) {
                   if($bool == 0) {
                      if ($MESS) {
                        printf RW_FILE ("reg_write %08x  695a4b3c\n", ($tmp+$i*$k+$j)*4);
                      }
                      else {
                        printf RW_FILE ("reg_write %08x  5a5a5a5a\n", ($tmp+$i*$k+$j)*4);
                      }
                      $bool = 1;
                   }
                   else {
                      if ($MESS) {
                        printf RW_FILE ("reg_write %08x  96a5b4c3\n", ($tmp+$i*$k+$j)*4);
                      }
                      else {
                        printf RW_FILE ("reg_write %08x  a5a5a5a5\n", ($tmp+$i*$k+$j)*4);
                      }
                      $bool = 0;
                   }
               }
            }
         }#reg_write


         # reg_check
         $bool = 0;
         if($readEn) {
            for($i=0; $i<$vdb->{RegMem}->{$mem}->{NumOfEntries}; $i++) {
               for($j=0; $j<$vdb->{RegMem}->{$mem}->{Words}; $j++) {
                  if($writeEn) {
                     if($bool == 0) {
                        if ($MESS) {
                           printf RW_FILE ("reg_check %08x  695a4b3c  %08x\n", ($tmp+$i*$k+$j)*4, $mask[$j]);
                        }
                        else {
                           printf RW_FILE ("reg_check %08x  5a5a5a5a  %08x\n", ($tmp+$i*$k+$j)*4, $mask[$j]);
                        }
                        $bool = 1;
                     }
                     else {
                        if ($MESS) {
                           printf RW_FILE ("reg_check %08x  96a5b4c3 %08x\n", ($tmp+$i*$k+$j)*4, $mask[$j]);
                        }
                        else {
                           printf RW_FILE ("reg_check %08x  a5a5a5a5 %08x\n", ($tmp+$i*$k+$j)*4, $mask[$j]);
                        }
                        $bool = 0;
                     }
                  } else {
                      printf RW_FILE ("reg_read %0x  \n", ($tmp+$i*$k+$j)*4);
                  }
               }
            } 
         }#reg_check

      }
      


   }

   ## Register
   foreach $reg (sort keys (%{$vdb->{Register}})) {
      printf RW_FILE ("          \n");
    #  printf ("%s  \n", $vdb->{Register}->{$reg}->{DecodeAddress});   # for debug use
      printf RW_FILE ("// %s     \n", $reg);

      @mask = ();
      @readEn  = 0;
      @writeEn = 0;
      foreach $fields (sort keys (%{$vdb->{Register}->{$reg}->{Fields}})) {
         $readEn[$vdb->{Register}->{$reg}->{Fields}->{$fields}->{Offset}]  = $readEn[$vdb->{Register}->{$reg}->{Fields}->{$fields}->{Offset}] || ($vdb->{Register}->{$reg}->{Fields}->{$fields}->{ReadOnly} eq 'Y');
         $writeEn[$vdb->{Register}->{$reg}->{Fields}->{$fields}->{Offset}] = $writeEn[$vdb->{Register}->{$reg}->{Fields}->{$fields}->{Offset}] || ($vdb->{Register}->{$reg}->{Fields}->{$fields}->{WriteIndicate} eq 'Y');

         if($vdb->{Register}->{$reg}->{Fields}->{$fields}->{HiBit} == $vdb->{Register}->{$reg}->{Fields}->{$fields}->{LoBit}) {
            $mask[$vdb->{Register}->{$reg}->{Fields}->{$fields}->{Offset}] += 1 << $vdb->{Register}->{$reg}->{Fields}->{$fields}->{HiBit} 
         }
         else {
            $tmp = 0xffffffff >> (32 - ($vdb->{Register}->{$reg}->{Fields}->{$fields}->{HiBit} - $vdb->{Register}->{$reg}->{Fields}->{$fields}->{LoBit} + 1));
            $mask[$vdb->{Register}->{$reg}->{Fields}->{$fields}->{Offset}] +=  $tmp << $vdb->{Register}->{$reg}->{Fields}->{$fields}->{LoBit};
         }
      }
      #for ($i=0; $i<@mask; $i++) {
      #printf ("mask = %x\n", $mask[$i]);
      #}
      $tmp = $vdb->{Register}->{$reg}->{DecodeAddress};
      $tmp =~ tr/\?/0/;
      $tmp =~ tr/_//d;
      $tmp =~ s/^[0-9]*\'[bB]//;
      $tmp = oct("0b$tmp");

      # reg_write
      $bool = 0;
      for($j=0; $j<$vdb->{Register}->{$reg}->{Words}; $j++) {
         if($readEn[$j] && !$writeEn[$j] ) {
            ;
         } else {
            if($bool == 0) {
               if ($MESS) {
                  printf RW_FILE ("reg_write %x  695a4b3c\n", ($tmp+$j)*4);
               }
               else {
                  printf RW_FILE ("reg_write %x  5a5a5a5a\n", ($tmp+$j)*4);
               }
               $bool = 1;
            }
            else {
               if ($MESS) {
                  printf RW_FILE ("reg_write %x  96a5b4c3\n", ($tmp+$j)*4);
               }
               else {
                  printf RW_FILE ("reg_write %x  a5a5a5a5\n", ($tmp+$j)*4);
               }
               $bool = 0;
            }
         }
      }

      # reg_check
      $bool = 0;
      for($j=0; $j<$vdb->{Register}->{$reg}->{Words}; $j++) {
         if($readEn[$j] && !$writeEn[$j]) {
             printf RW_FILE ("reg_read %08x  \n", ($tmp+$j)*4);
         } else {
            if($bool == 0) {
               if ($MESS) {
                  printf RW_FILE ("reg_check %08x  695a4b3c %08x\n", ($tmp+$j)*4, $mask[$j]);
               }
               else {
                  printf RW_FILE ("reg_check %08x  5a5a5a5a %08x\n", ($tmp+$j)*4, $mask[$j]);
               }
               $bool = 1;
            }
            else {
               if ($MESS) {
                  printf RW_FILE ("reg_check %08x  96a5b4c3 %08x\n", ($tmp+$j)*4, $mask[$j]);
               }
               else {
                  printf RW_FILE ("reg_check %08x  a5a5a5a5 %08x\n", ($tmp+$j)*4, $mask[$j]);
               }
               $bool = 0;
            }
         }
      }

   }

} else {
   open(INIT, "> $top/../src/RegInit$top.sv") || die "can not create RegInit$top.sv !";
   open(CTRL_REG, "> $top/sim/reg_dice") || die "can not create reg_dice";
   
   printf INIT ("module RegInit$top();                                                              \n");
   printf INIT ("\`ifdef FULL_CHIP                                                       \n");
   printf INIT ("   \`define %s_RTL_PATH  u%s                                                    \n", uc($top), $top);
   printf INIT ("\`else                                                     \n");
   printf INIT ("   \`define %s_RTL_PATH  u%s                                                    \n", uc($top), $top);
   printf INIT ("\`endif                                                       \n");
       
   printf INIT ("bit    %sRegInitDone;                                                       \n",$top);
   foreach $mem (sort keys (%{$vdb->{RegMem}})) {
      printf INIT     ("// %-10s -------------------------------------------------------------------\n", $mem);
      $seq = 0;
      my @field_name;
      my @field_lobit;
      my @field_offset;
      
      printf INIT ("bit [%-4d:0]    %s_%s [0:%d]\;\n",$vdb->{RegMem}->{$mem}->{Words}*32-1, $top, $mem, $vdb->{RegMem}->{$mem}->{NumOfEntries}-1);
      foreach $fields (keys (%{$vdb->{RegMem}->{$mem}->{Fields}})) {
         printf INIT ("bit [%-2d:%2d]    %s_%s_%-40s\;\n",$vdb->{RegMem}->{$mem}->{Fields}->{$fields}->{HiBit} - $vdb->{RegMem}->{$mem}->{Fields}->{$fields}->{LoBit}, 0, $top, $mem,$fields);
   
         push(@field_name, $fields);
         push(@field_lobit, $vdb->{RegMem}->{$mem}->{Fields}->{$fields}->{LoBit});
         push(@field_offset, $vdb->{RegMem}->{$mem}->{Fields}->{$fields}->{Offset});
         $seq++;
      }
      $vdb->{RegMem}->{$mem}->{Total} = $seq;
      #make seq in memory field
      for($i=0; $i<@field_name; $i++) {
         for($j=$i+1; $j<@field_name; $j++) {
            if($field_offset[$i] < $field_offset[$j]) {next;}
            elsif ( $field_offset[$i] > $field_offset[$j] ) { 
      
               my $name   = $field_name[$j];
               my $lobit  = $field_lobit[$j];
               my $offset = $field_offset[$j];
      
               $field_name[$j]   = $field_name[$i];
               $field_lobit[$j]  = $field_lobit[$i];
               $field_offset[$j] = $field_offset[$i];
      
               $field_name[$i]   = $name;
               $field_lobit[$i]  = $lobit;
               $field_offset[$i] = $offset;
            }
            else {
               if($field_lobit[$i] < $field_lobit[$j]) {next;}
               else {
                  my $name   = $field_name[$j];
                  my $lobit  = $field_lobit[$j];
                  my $offset = $field_offset[$j];
      
                  $field_name[$j]   = $field_name[$i];
                  $field_lobit[$j]  = $field_lobit[$i];
                  $field_offset[$j] = $field_offset[$i];
      
                  $field_name[$i]   = $name;
                  $field_lobit[$i]  = $lobit;
                  $field_offset[$i] = $offset;
               }    
            }
         }
      }
      
      foreach $fields (keys (%{$vdb->{RegMem}->{$mem}->{Fields}})) {
         for($i=0; $i<@field_name; $i++) {
            if($fields eq $field_name[$i]) {
               $vdb->{RegMem}->{$mem}->{Fields}->{$fields}->{Seq} = $i;
               last;
            }       
      
         }
      }
      
   } 
   
   printf INIT ( "                                                                                                  \n");
   print INIT ("initial begin                                                                                       \n");
   print INIT ("   wait(top.uIntfCpu.ioInitDone);                                                                   \n");
   print INIT ("   if(top.uIntfCpu.backdoor_init) begin                                                             \n");
   printf INIT     ("   // Register -------------------------------------------------------------------\n");
   printf CTRL_REG ("## *******************************************************************************\n", $reg);
   printf CTRL_REG ("##                                 %s                                             \n", $top);
   printf CTRL_REG ("## *******************************************************************************\n", $reg);
   foreach $reg (sort keys (%{$vdb->{Register}})) {
      printf CTRL_REG ("## %-10s -------------------------------------------------------------------\n", $reg);
      printf INIT     ("   // %-10s -------------------------------------------------------------------\n", $reg);
      foreach $fields (keys (%{$vdb->{Register}->{$reg}->{Fields}})) {
         if($vdb->{Register}->{$reg}->{Fields}->{$fields}->{ReadOnly} eq 'Y') {} else {
   
               printf INIT ("   `%s_RTL_PATH.u%sReg.%-40s = dice(\"Reg_%s_%s\",\"\")\;\n",uc($top), $top,$fields,uc($top),$fields);
               printf CTRL_REG ("dice    Reg_%s_%-45s %-10s  1\; \n",uc($top),$fields, $vdb->{Register}->{$reg}->{Fields}->{$fields}->{Default} );
         }
      }
   }
   
   printf INIT     ("   // Memory -------------------------------------------------------------------\n");
   printf CTRL_REG ("   ## Memory -------------------------------------------------------------------\n");
   foreach $mem (sort keys (%{$vdb->{RegMem}})) {
      printf CTRL_REG ("## %-10s -------------------------------------------------------------------\n", $mem);
      printf INIT     ("   // %-10s -------------------------------------------------------------------\n", $mem);
      my @tmp;
   
      printf INIT ( "   \`ifdef CMODEL                                                                          \n");
      printf INIT ( "      \$readmemh\(\"%s_%s_0.txt\", %s_%s\)\;  \n", uc($top), $mem, $top, $mem);
      printf INIT ( "   \`endif \n");
   
      printf INIT ( "   for (int i=0\; i<%d\; i++) begin\n",                               $vdb->{RegMem}->{$mem}->{NumOfEntries});     
      foreach $fields (keys (%{$vdb->{RegMem}->{$mem}->{Fields}})) {
            printf INIT ("   \`ifdef CMODEL                                                                          \n");
            printf INIT ("      %s_%s_%-40s = %s_%s[i][%s:%s]\;   \n",$top,$mem, $fields,$top, $mem, $vdb->{RegMem}->{$mem}->{Fields}->{$fields}->{Offset}*32 + $vdb->{RegMem}->{$mem}->{Fields}->{$fields}->{HiBit}, 
                                                                                               $vdb->{RegMem}->{$mem}->{Fields}->{$fields}->{Offset}*32 + $vdb->{RegMem}->{$mem}->{Fields}->{$fields}->{LoBit});
            printf INIT ("   \`else \n");
   
            printf INIT ("      %s_%s_%-40s = dice(\"%s_%s_%s\",\"\")\;\n",$top,$mem, $fields,$top,$mem,$fields);
            printf INIT ("   \`endif \n");
            printf CTRL_REG ("dice   %s_%s_%-45s 0  1\; \n",$top,$mem,$fields);
            @tmp[$vdb->{RegMem}->{$mem}->{Fields}->{$fields}->{Seq}] = $fields;
      }
   
      
      printf INIT ( "      `%s_RTL_PATH..mem[i] = { \n", uc($top)                                                                   );                                                                  
      for($i=@tmp-1; $i>=0; $i--) {
         if($i==0){
            printf INIT ( "                      %s_%s_%s                                                                    \n",$top,$mem,$tmp[$i]);
         }
         else {
            printf INIT ( "                      %s_%s_%s,                                                                   \n",$top,$mem,$tmp[$i]);
         }
      }
      printf INIT ( "                     };                                                                           \n");
      printf INIT ( "   end                                                                                            \n");
   
   }
   printf INIT ("   %sRegInitDone = 1\;                                                                                \n",$top);
   printf INIT ("   \$display\(\"------------------------------------------------\"\)\;                                    \n",$top);
   printf INIT ("   \$display\(\"   %s backdoor init done !                      \" )\;                                    \n",$top);
   printf INIT ("   \$display\(\"------------------------------------------------\"\)\;                                    \n",$top);
   print INIT ("end                                                                                                    \n");
   print INIT ("else begin                                                                                                    \n");
   printf INIT ("   %sRegInitDone = 1\;                                                                                \n",$top);
   printf INIT ("   \$display\(\"------------------------------------------------\"\)\;                                    \n",$top);
   printf INIT ("   \$display\(\"   %s backdoor init done !                      \" )\;                                    \n",$top);
   printf INIT ("   \$display\(\"------------------------------------------------\"\)\;                                    \n",$top);
   print INIT ("end                                                                                                    \n");
   print INIT ("end                                                                                                    \n");
   printf INIT ("endmodule                                                              \n");
}


sub findWidth{
   local $var;
   if($_[0] == 1)    {$var = 1;  }
   elsif($_[0]==2)   {$var = 2;  }
   elsif($_[0]<=4)   {$var = 4;  }
   elsif($_[0]<=8)   {$var = 8;  }
   elsif($_[0]<=16)  {$var = 16; }
   elsif($_[0]<=32)  {$var = 32; }
   elsif($_[0]<=64)  {$var = 64; }
   elsif($_[0]<=128) {$var = 128;}
   elsif($_[0]<=256) {$var = 256;}
   elsif($_[0]<=512) {$var = 512;}
   else  {exit;}
   $var;
}

