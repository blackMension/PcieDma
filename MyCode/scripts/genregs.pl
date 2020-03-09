#!/usr/bin/perl -w
### generate register block. execute in rtl/src directory.
### without the -f it will append the register name as well
### if need to convert from synchronous reset to asynchronus reset execute sync2async.pl
### after genregs.pl

### % genregs.pl -f ../reg/<block>.txt
### % sync2async.pl -w -f <block>Reg.v [optional if converting from sync to async reset]

use Carp;
#$writeAt = '../src';
$writeAt = '.';

($rules, $VNUM) = &init;
($spreadsheat, $_f) = &parseARGV;

$vdb = parseInput($spreadsheat, $rules, $VNUM);
############################# Check Overlap of Field #######################{
	foreach my $mem (sort keys %{$vdb->{RegMem}}) {
		my $memRef = $vdb->{RegMem}{$mem};
        # check overlap of fields {{
        my $fieldchkarray ={};
        for($offset = 0; $offset < $memRef->{Words}; $offset++) {
           (@{$memRef->{Offsets}[$offset]} > 0) || next;
           for(my $ii = 0; $ii < 32; $ii++) {
             $fieldchkarray->{$offset}[$ii] = "";
           }
        }
        
        for($offset = 0; $offset < $memRef->{Words}; $offset++) {
           (@{$memRef->{Offsets}[$offset]} > 0) || next;
           foreach my $field (@{$memRef->{Offsets}[$offset]}) {
              my $bithigh = $memRef->{Fields}{$field}{HiBit};
              my $bitlow = $memRef->{Fields}{$field}{LoBit};
              for(my $ii= $bitlow; $ii <= $bithigh; $ii ++){
                 if($fieldchkarray->{$offset}[$ii] eq ""){
                    $fieldchkarray->{$offset}[$ii] = "1";
                 }
                 else {
                    print "Field $field register $mem of module $vdb->{FileName} is overlapped in range offset $offset ($bithigh:$bitlow) with another field, please have a check!\n";
	            exit(9);
                    last;
                 }
              }
           }
        }
        # check overlap of fields }}

    }
	foreach my $reg (sort keys %{$vdb->{Register}}) {
      	my $regRef = $vdb->{Register}{$reg};
        # check overlap of fields {{
        my $fieldchkarray ={};
        for($offset = 0; $offset < $regRef->{Words}; $offset++) {
           (@{$regRef->{Offsets}[$offset]} > 0) || next;
           for(my $ii = 0; $ii < 32; $ii++) {
             $fieldchkarray->{$offset}[$ii] = "";
           }
        }
        
        for($offset = 0; $offset < $regRef->{Words}; $offset++) {
           (@{$regRef->{Offsets}[$offset]} > 0) || next;
           foreach my $field (@{$regRef->{Offsets}[$offset]}) {
              my $bithigh = $regRef->{Fields}{$field}{HiBit};
              my $bitlow = $regRef->{Fields}{$field}{LoBit};
              for(my $ii= $bitlow; $ii <= $bithigh; $ii ++){
                 if($fieldchkarray->{$offset}[$ii] eq ""){
                    $fieldchkarray->{$offset}[$ii] = "1";
                 }
                 else {
                    print "Field $field register $reg of module $vdb->{FileName} is overlapped in range offset $offset ($bithigh:$bitlow) with another field, please have a check!\n";
	            exit(9);
                    last;
                 }
              }
           }
        }
        # check overlap of fields }}
	}
############################# Check Overlap of Field #######################}
############################# Check Overlap of Register Address #######################{
    my $regAddressArray = {};
	foreach my $mem (sort keys %{$vdb->{RegMem}}) {
		my $memRef = $vdb->{RegMem}{$mem};
        # check overlap of registers {{
        my $address = $memRef->{DecodeAddress};
        my $highaddress = $address;
        my $lowaddress = $address;
           $highaddress =~ s/\?/1/;
           $lowaddress =~ s/\?/0/;
        my $high = &change_value_format($highaddress);
        my $low = &change_value_format($lowaddress);
	    foreach my $oldmem (sort keys %{$regAddressArray}) {
           if($high >= $regAddressArray->{$oldmem}{lowAddr} && $high <= $regAddressArray->{$oldmem}{highAddr}){
               printf "Address 32'h%08x of register $mem is overlapped by $oldmem : 32'h%08x ~ 32'h%08x \n", $high, $regAddressArray->{$oldmem}{lowAddr}, $regAddressArray->{$oldmem}{highAddr};
	            exit(9);
               last;
           }
           if($low >= $regAddressArray->{$oldmem}{lowAddr} && $low <= $regAddressArray->{$oldmem}{highAddr}){
               printf "Address 32'h%08x of register $mem is overlapped by $oldmem : 32'h%08x ~ 32'h%08x \n", $low, $regAddressArray->{$oldmem}{lowAddr}, $regAddressArray->{$oldmem}{highAddr};
	            exit(9);
               last;
           }
           
        }
        $regAddressArray->{$mem} = {};
        $regAddressArray->{$mem}{highAddr} = $high;
        $regAddressArray->{$mem}{lowAddr} = $low;
        
        # check overlap of registers }}

    }
	foreach my $reg (sort keys %{$vdb->{Register}}) {
      	my $regRef = $vdb->{Register}{$reg};
        # check overlap of registers {{
        my $address = $regRef->{DecodeAddress};
        my $highaddress = $address;
        my $lowaddress = $address;
           $highaddress =~ s/\?/1/;
           $lowaddress =~ s/\?/0/;
        my $high = &change_value_format($highaddress);
        my $low = &change_value_format($lowaddress);
	    foreach my $oldreg (sort keys %{$regAddressArray}) {
           if($high >= $regAddressArray->{$oldreg}{lowAddr} && $high <= $regAddressArray->{$oldreg}{highAddr}){
               printf "Address 32'h%08x of register $reg is overlapped by $oldreg : 32'h%08x ~ 32'h%08x \n", $high, $regAddressArray->{$oldreg}{lowAddr}, $regAddressArray->{$oldreg}{highAddr};
	       exit(9);
               last;
           }
           if($low >= $regAddressArray->{$oldreg}{lowAddr} && $low <= $regAddressArray->{$oldreg}{highAddr}){
               printf "Address 32'h%08x of register $reg is overlapped by $oldreg : 32'h%08x ~ 32'h%08x \n", $low, $regAddressArray->{$oldreg}{lowAddr}, $regAddressArray->{$oldreg}{highAddr};
	       exit(9);
               last;
           }
           
        }
        $regAddressArray->{$reg} = {};
        $regAddressArray->{$reg}{highAddr} = $high;
        $regAddressArray->{$reg}{lowAddr} = $low;

        # check overlap of registers }}
	}
############################# Check Overlap of Register Address #######################}
$file_h = makeFile_h($vdb);
open (H, "> $writeAt/$vdb->{FileName}.h") || die"Cannot write to $vdb->{FileName}.h";
print H $file_h;
close H;

$file_v = makeFile_v($vdb);
open (V, "> $writeAt/$vdb->{FileName}.v") || die"> $vdb->{FileName}.v";
print V $file_v;
close V;



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
sub makeFile_h {
#-----------------------------------------------------------------------------#
	my ($vdb) = @_;
	my($h,$offset,$Ufield,$Offset,$range, $regRef);
	my $LEN1 = 60;
	my $LEN2 = 16;
	my $LINE_BREAK = '//' . '-' x 78 . "\n";
        my $templine;

	$h .= sprintf "\n%-${LEN1}s%${LEN2}s\n\n",
			"`define $vdb->{Prefix}R",
			"$vdb->{AddrUpper}:$vdb->{AddrLower}";
	$h .= $LINE_BREAK;

	foreach $mem (sort keys %{$vdb->{RegMem}}) {
		$memRef = $vdb->{RegMem}{$mem};

		$h .= "// MEMREG: $vdb->{Prefix}$mem " .
				": $memRef->{FullName} " .
				": $memRef->{NumOfEntries} " .
				": $memRef->{Words}\n";
                $templine = "$vdb->{Prefix}${mem}_A";
                $templine =~ tr/a-z/A-Z/;
		$h .= sprintf "%-${LEN1}s%${LEN2}s\n",
				"`define $templine",
				$memRef->{DecodeAddress};
		$h .= "//$vdb->{RegMem}{$mem}{Description}\n\n";

		for($offset = 0; $offset < $memRef->{Words}; $offset++) {
			(@{$memRef->{Offsets}[$offset]} > 0) || next;

			foreach $field (@{$memRef->{Offsets}[$offset]}) {
				$Ufield = upit($field);
				if ($memRef->{Fields}{$field}{HiBit} >
					$memRef->{Fields}{$field}{LoBit}) {
					$range =
"$memRef->{Fields}{$field}{HiBit}:$memRef->{Fields}{$field}{LoBit}";
				} elsif ($memRef->{Fields}{$field}{HiBit} ==
						$memRef->{Fields}{$field}{LoBit}) {
					$range = $memRef->{Fields}{$field}{HiBit};
				} else {
die"$mem:Offset[$offset]:HiBit\t=$memRef->{Fields}{$field}{HiBit}
$mem:Offset[$offset]:LoBit\t=$memRef->{Fields}{$field}{LoBit}\n";
				}

				$h .= "//Offset $offset\n";
                                $templine = "$vdb->{Prefix}${mem}_${Ufield}_F";
                                $templine =~ tr/a-z/A-Z/;
				$h .= sprintf "%-${LEN1}s%${LEN2}s\n",
						"`define $templine", $range;
				$h .= "//$vdb->{RegMem}{$mem}{Fields}{$field}{Description}\n\n";
			}
		}
		$h .= "\n$LINE_BREAK";;
	}

	foreach $reg (sort keys %{$vdb->{Register}}) {
		$regRef = $vdb->{Register}{$reg};

		$h .= "// REG: $vdb->{Prefix}$reg " .
				": $regRef->{FullName} " .
				": $regRef->{Words}\n";
                $templine = "$vdb->{Prefix}${reg}_A";
                $templine =~ tr/a-z/A-Z/;
		$h .= sprintf "%-${LEN1}s%${LEN2}s\n",
				"`define $templine",
				$regRef->{DecodeAddress};
		$h .= "//$vdb->{Register}{$reg}{Description}\n\n";

		for($offset = 0; $offset < $regRef->{Words}; $offset++) {
			(@{$regRef->{Offsets}[$offset]} > 0) || next;

			foreach $field (@{$regRef->{Offsets}[$offset]}) {
				$Ufield = upit($field);
				if ($regRef->{Fields}{$field}{HiBit} >
					$regRef->{Fields}{$field}{LoBit}) {
					$range =
"$regRef->{Fields}{$field}{HiBit}:$regRef->{Fields}{$field}{LoBit}";
				} elsif ($regRef->{Fields}{$field}{HiBit} ==
						$regRef->{Fields}{$field}{LoBit}) {
					$range = $regRef->{Fields}{$field}{HiBit};
				} else {
die"$reg:Offset[$offset]:HiBit\t=$regRef->{Fields}{$field}{HiBit}
$reg:Offset[$offset]:LoBit\t=$regRef->{Fields}{$field}{LoBit}\n";
				}

				$h .= "//Offset $offset\n";
                                $templine = $_f ? "$vdb->{Prefix}${Ufield}_F" : "$vdb->{Prefix}${reg}_${Ufield}_F";
                                $templine =~ tr/a-z/A-Z/;
				$h .= sprintf "%-${LEN1}s%${LEN2}s\n", "`define $templine", $range;
                                $templine = $_f ? "$vdb->{Prefix}${Ufield}_D" : "$vdb->{Prefix}${reg}_${Ufield}_D";
                                $templine =~ tr/a-z/A-Z/;
				$h .= sprintf "%-${LEN1}s%${LEN2}s\n", "`define $templine", $regRef->{Fields}{$field}{Default};
				$h .= "//$vdb->{Register}{$reg}{Fields}{$field}{Description}\n\n";
			}
		}
		$h .= $LINE_BREAK;
	}
	$h;
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
#$VNUM= '  (?:(?:[0-9]*\'[sS]?[bBhHdDoO]\s*[0-9A-Fa-f_?xX]+)|(?:[0-9]+))';

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




#-----------------------------------------------------------------------------#
sub upit {
#-----------------------------------------------------------------------------#
	my($up2) = @_;

	$up2 =~ s/([A-Z]+)/_$1/g;
	$up2 =~ s/([0-9]+)/_$1/g;
	$up2 =~ s/^(_*)_([A-Z])/$1$2/;
	$up2 = uc($up2);
	$up2;
}
	



#-----------------------------------------------------------------------------#
sub paddedBin {
#-----------------------------------------------------------------------------#
	my ($length, $number) = @_;
	my $str;
	$str = unpack("B32", pack("N", $number));
	return substr($str, -$length);
}




#-----------------------------------------------------------------------------#
sub normalize {
#-----------------------------------------------------------------------------#
	my($first,$second) = @_;
	if ($first > $second) {
		return ('[' . ($first - $second) . ':0]');
	} elsif ($first < $second) {
		return ('[0:' . ($second - $first) . ']');
	} else {
		return '';
	}
}




#-----------------------------------------------------------------------------#
sub makeFile_v {
#-----------------------------------------------------------------------------#
my $tempDefine;
my $line_fmt = "    %-8s%-38s";
my(
	$readData2ShadowFields,
	$anyReadTrigger,
	$anyWriteTrigger,
	$everyMemField,
	$decode_casez_perMem,
	$init_allEn_perMem,
	$readData_perMem,
	$memReqTrigger,
	$memAckTrigger,
	$memRegsNWires,
	$mem_module_ports,
	$every_field_N_indicator,
	$outNreg__every_field_NOT_ro,
	$input__ro_fields,
	$reg__wrEn_readData_4everyReg,
	$reg__rdEnreg_4ReadIndicate,
	$readData_perReg,
	$decode_casez_perReg
) = ();
my $v;

	$everyMemField = '';
	$mem_module_ports = '';
	$memRegsNWires = '';
	$memReqTrigger = '';
	$memAckTrigger = '';
	$readData_perMem = '';
	$init_allEn_perMem = '';
	$decode_casez_perMem = '';
	$input__ro_fields = '';
	$reg__rdEnreg_4ReadIndicate = '';
	$init_rdEn_perReadIndicateReg = '';

foreach $reg (sort keys %{$vdb->{Register}}) {
        $tempDefine = "$vdb->{Prefix}${reg}_A";
        $tempDefine =~ tr/a-z/A-Z/;
	$decode_casez_perReg .= sprintf "%16s%-1s", '', "`$tempDefine : begin\n";
	$decode_casez_perReg .= sprintf "%20s%-30s= %-1s;\n", '', 'readDataInternal', "readData$reg";

	exists($vdb->{Register}{$reg}{ReadOnly}) || do {
		$reg__wrEn_readData_4everyReg .= sprintf $line_fmt, 'reg', '';
		$reg__wrEn_readData_4everyReg .= "wrEn$reg;\n";

		$init_wrEn_perReg .= sprintf "        %-42s= 1'b0;\n", "wrEn$reg";
		$decode_casez_perReg .= sprintf "%20s%-30s= %-1s;\n", '', "wrEn$reg", "!registerReadS";
	};
	$reg__wrEn_readData_4everyReg .= sprintf $line_fmt, 'reg', '[31:0]';
	$reg__wrEn_readData_4everyReg .= "readData$reg;\n";
        $readData_perReg .= "        readData$reg or\n";

	exists($vdb->{Register}{$reg}{ReadIndicate}) && do {
		$reg__rdEnreg_4ReadIndicate .= sprintf $line_fmt,
		'reg',
		'';
		$reg__rdEnreg_4ReadIndicate .= "rdEn$reg;\n";
		$init_rdEn_perReadIndicateReg .= 
				sprintf "        %-42s= 1'b0;\n", "rdEn$reg";
		$decode_casez_perReg .= sprintf "%20s%-30s= %-1s;\n", '',
								"rdEn$reg", "registerReadS";
	};
	$decode_casez_perReg .= "                end\n";

	foreach $field (sort keys %{$vdb->{Register}{$reg}{Fields}}) {
		$every_field_N_indicator .= $_f ? "    $field,\n" : "    $field$reg,\n";

		if ($vdb->{Register}{$reg}{Fields}{$field}{ReadOnly} eq 'Y') {
			$input__ro_fields .= sprintf $line_fmt,
			'input',
			normalize(
				$vdb->{Register}{$reg}{Fields}{$field}{HiBit},
				$vdb->{Register}{$reg}{Fields}{$field}{LoBit});
			$input__ro_fields .= $_f ? "$field;\n" : "$field$reg;\n";
		} else {
			foreach $type ('output', 'reg') {
				$outNreg__every_field_NOT_ro .= sprintf $line_fmt,
				$type,
				normalize(
					$vdb->{Register}{$reg}{Fields}{$field}{HiBit},
					$vdb->{Register}{$reg}{Fields}{$field}{LoBit});
				$outNreg__every_field_NOT_ro .= $_f ? "$field;\n" : "$field$reg;\n";
			}
		}

		($vdb->{Register}{$reg}{Fields}{$field}{ReadIndicate} eq 'Y') && do {
			$every_field_N_indicator .= $_f ? "    ${field}Read,\n" : "    $field${reg}Read,\n";
			foreach $type ('output', 'reg') {
				$outNreg__every_field_NOT_ro .= sprintf $line_fmt,
				$type, '';
				$outNreg__every_field_NOT_ro .= $_f ? "    ${field}Read;\n" : "$field${reg}Read;\n";
			}
		};

		($vdb->{Register}{$reg}{Fields}{$field}{WriteIndicate} eq 'Y') && do {
			$every_field_N_indicator .= $_f ? "    ${field}Write,\n" : "    $field${reg}Write,\n";
			$every_field_N_indicator .= $_f ? "    ${field}WriteData,\n" : "    $field${reg}WriteData,\n";
			foreach $type ('output', 'reg') {
				$outNreg__every_field_NOT_ro .= sprintf $line_fmt,
				$type,
				normalize(
					$vdb->{Register}{$reg}{Fields}{$field}{HiBit},
					$vdb->{Register}{$reg}{Fields}{$field}{LoBit});
				$outNreg__every_field_NOT_ro .= $_f ? "${field}WriteData;\n" : "$field${reg}WriteData;\n";

				$outNreg__every_field_NOT_ro .= sprintf $line_fmt,
				$type, '';
				$outNreg__every_field_NOT_ro .= $_f ? "${field}Write;\n" : "$field${reg}Write;\n";
			}

		};
	}
}
$readData_perReg =~ s/\s+or$//s;

my $regMem_portDir = {
	req			=> 'output',
	addr		=> 'output',
	read		=> 'output',
	ack			=> 'input',
	ReadData	=> 'input',
	WriteData	=> 'output',
};

#--- doing the mems
$memReqTrigger = sprintf "    %-46s%-1s", 'wire', "memReqTrigger = 1'b0";
$memAckTrigger = sprintf "    %-46s%-1s", 'wire', "memAckTrigger = 1'b0";

foreach $mem (sort keys %{$vdb->{RegMem}}) {

	$memRegsNWires .= sprintf $line_fmt, 'reg', '[31:0]';
	$memRegsNWires .= "readData$mem;\n";
	$readData_perMem .= "        readData$mem or\n";
	$memReqTrigger .= "\n" . ' ' x 66 . "| req${mem}Trigger";
	$memAckTrigger .= "\n" . ' ' x 66 . "| ack${mem}Trigger";
        $tempDefine = "$vdb->{Prefix}${mem}_A";
        $tempDefine =~ tr/a-z/A-Z/;
	$decode_casez_perMem .= sprintf "%16s%-1s", '',
							"`$tempDefine : begin\n";
	$decode_casez_perMem .= sprintf "%20s%-30s= %-1s;\n", '',
							'readDataInternal', "readData$mem";
	$decode_casez_perMem .= sprintf "%20s%-30s= %-1s;\n", '',
							"wrEn$mem", "!registerReadS";
	$decode_casez_perMem .= sprintf "%20s%-30s= %-1s;\n", '',
							"rdEn$mem", "registerReadS";
	$decode_casez_perMem .= "                end\n";

	foreach $type (qw(req read ack)) {
		$everyMemField .= "    $type$mem,\n";
		$mem_module_ports .= sprintf $line_fmt,
			$regMem_portDir->{$type},'';
		$mem_module_ports .= "$type${mem};\n";
	}

	foreach $type (qw(req read wrEn rdEn)) {
		$memRegsNWires .= sprintf $line_fmt, 'reg','';
		$memRegsNWires .= "$type$mem;\n";
	}

	($vdb->{RegMem}{$mem}{MemAddrBits} != 0) && do {
		$everyMemField .= "    addr$mem,\n";

		$mem_module_ports .= sprintf $line_fmt,
			$regMem_portDir->{addr},
			normalize($vdb->{RegMem}{$mem}{MemAddrBits} - 1, 0);
		$mem_module_ports .= "addr$mem;\n";

		$memRegsNWires .= sprintf $line_fmt,
			'reg',
			normalize($vdb->{RegMem}{$mem}{MemAddrBits} - 1, 0);
		$memRegsNWires .= "addr$mem;\n";
	};

	foreach $type (qw(wr rd)) {
		$memRegsNWires .= sprintf $line_fmt,
			'reg', '';
		$memRegsNWires .= "$type${mem}Trigger;\n";
		$init_allEn_perMem .= sprintf "        %-42s= 1'b0;\n", "${type}En$mem";
	}

	foreach $type (qw(req ack)) {
		$memRegsNWires .= sprintf $line_fmt, 'wire', '';
		$memRegsNWires .= "$type${mem}Trigger;\n";
	}
    foreach $type (qw(ack)) {
        $memRegsNWires .= sprintf $line_fmt, 'reg', '';
        $memRegsNWires .= "$type${mem}TriggerS;\n";
    }





	foreach $field (sort keys %{$vdb->{RegMem}{$mem}{Fields}}) {
		$memRegsNWires .= sprintf $line_fmt,
			'reg',
			normalize($vdb->{RegMem}{$mem}{Fields}{$field}{HiBit},
					$vdb->{RegMem}{$mem}{Fields}{$field}{LoBit});
		$memRegsNWires .= "$field${mem}Shadow;\n";
		$memRegsNWires .= sprintf $line_fmt,
			'wire',
			normalize($vdb->{RegMem}{$mem}{Fields}{$field}{HiBit},
					$vdb->{RegMem}{$mem}{Fields}{$field}{LoBit});
		$memRegsNWires .= "$field${mem}WriteData = $field${mem}Shadow;\n";



		foreach $type (qw(ReadData WriteData)) {
			$everyMemField .= "    $field${mem}$type,\n";
			$mem_module_ports .= sprintf $line_fmt,
				$regMem_portDir->{$type},
				normalize($vdb->{RegMem}{$mem}{Fields}{$field}{HiBit},
						$vdb->{RegMem}{$mem}{Fields}{$field}{LoBit});
			$mem_module_ports .= "$field${mem}$type;\n";
		}
	}
#---
	$everyMemField .= "\n";
	$mem_module_ports .= "\n";
}
$memReqTrigger .= ";\n";
$memAckTrigger .= ";\n";
if ($readData_perReg =~ /[0-9a-zA-Z]/) {
   ### do nothing
} else {  ### get rid of the or
   $readData_perMem =~ s/\s+or$//s;
}


$v = <<EOV ;
`include "$vdb->{FileName}.h"

module $vdb->{FileName} (
    // Outputs
    registerAck,
    registerError,
    registerReadData,

    // GENERATED
$every_field_N_indicator
$everyMemField
    // Inputs
    clock,
    reset,
    registerSelect,
    registerRead,
    registerAddress,
    registerWriteData
);
    // module IOs
    input                                         clock;
    input                                         reset;

    input                                         registerSelect;
    input                                         registerRead;
    input   [31:0]                                registerAddress;
    input   [31:0]                                registerWriteData;

    output                                        registerAck;
    output                                        registerError;
    output  [31:0]                                registerReadData;

    // GENERATED
$outNreg__every_field_NOT_ro
$input__ro_fields
$mem_module_ports

$reg__wrEn_readData_4everyReg
$reg__rdEnreg_4ReadIndicate
$memRegsNWires
$memReqTrigger
$memAckTrigger

    // register control state machine
    reg     [31:0]                                readDataInternal;
    reg                                           decodeInternal;

    wire    [31:0]                                registerReadData;
    wire                                          decodeEn;
    wire                                          registerReadS;
    wire    [31:0]                                registerWriteDataS;
    wire                                          registerAck;
    wire                                          registerError;
    wire    [31:0]                                decodeAddress;

    IP_Reg$vdb->{CtrlLogicMdfy} uRegCtl(
        .registerReadData                         ( registerReadData ),
        .decodeEn                                 ( decodeEn ),
        .registerReadS                            ( registerReadS),
        .registerWriteDataS                       ( registerWriteDataS ),
        .registerAck                              ( registerAck ),
        .registerError                            ( registerError),
        .decodeAddress                            ( decodeAddress),
        // Inputs
        .clock                                	  ( clock ),
        .reset                                    ( reset ),
        .registerSelect                           ( registerSelect),
        .registerRead                             ( registerRead ),

        .registerAddress                          ( registerAddress[31:2] ),
        .registerWriteData                        ( registerWriteData ),
        .readDataInternal                         ( readDataInternal ),
        .memReqTrigger                            ( memReqTrigger),
        .memAckTrigger                            ( memAckTrigger),
        .decodeInternal                           ( decodeInternal)
    );

//-------------------------------------------------------------------------
// Decoding register
   always @ (
        decodeAddress or
        decodeEn or
        registerReadS or
$readData_perMem
$readData_perReg    ) begin

        readDataInternal                          = 32'h0000_0000;
        decodeInternal                            = 1'b0;
$init_wrEn_perReg
$init_rdEn_perReadIndicateReg
$init_allEn_perMem
        if ( decodeEn ) begin
            decodeInternal                        = 1'b1;
            casez ( decodeAddress[`$vdb->{Prefix}R] )
$decode_casez_perMem
$decode_casez_perReg
		// VCS coverage off
                default :
                    decodeInternal                = 1'b0;
		// VCS coverage on
            endcase
        end
    end
EOV



my (
	$regRef,
	$resetRegs,
	$resetRegs2,
	$resetMems,
	$clear_reqMem,
	$guts_if_req_mem_Trigger,
	$allShadowFields,
	$allFieldsNIndicator,
	$init_readData_N_all_mem_Triggers,
	$init_readData_N_allReadIndicateFields,
	$guts_mem_read,
	$guts_mem_read_case,
	$guts_mem_write,
	$guts_mem_write_case,
	$guts_read,
	$guts_read_case,
	$guts_write,
	$guts_write_case,
	$i,
	$offset
) = ();




foreach $mem (sort keys %{$vdb->{RegMem}}) {
	$thisMem = $vdb->{RegMem}{$mem};
	(
		$resetMems,
		$clear_reqMem,
		$guts_if_req_mem_Trigger,
		$readData2ShadowFields,
		$allShadowFields,
		$init_readData_N_all_mem_Triggers,
		$guts_mem_read,
		$guts_mem_read_case,
		$guts_mem_write,
		$guts_mem_write_case,
	) = ();

	$init_readData_N_all_mem_Triggers .=
		sprintf "%8s%-41s = 32'h0000_0000;\n", '', "readData$mem";


	foreach $type (qw(wr rd)) {
		$init_readData_N_all_mem_Triggers .=
		sprintf "%8s%-41s = 1'b0;\n", '', "$type${mem}Trigger";
	}

	foreach $field (sort keys %{$thisMem->{Fields}}) {
		$allShadowFields .= "        $field${mem}Shadow or\n";
		$readData2ShadowFields .= sprintf "%12s%-37s <= %-1s;\n", '',
				"$field${mem}Shadow", "$field${mem}ReadData";
	}
	$allShadowFields =~ s/\s+or\n$//s;


	if ($thisMem->{Words} > 1) {
		for($i = 1; 2**$i < $thisMem->{Words}; $i++){
		}
		$range = ($i == 1) ? '2' : $i+1 .":2";

		$guts_mem_read .= ' ' x 8 . "case ( decodeAddress [$range] )\n";
		$guts_mem_write .= ' ' x 12 . "case ( decodeAddress [$range] )\n";

		#for($offset = 0; $offset < $thisMem->{Words}; $offset++){
		for($offset = 0; $offset < 2**$i; $offset++){
			$guts_mem_read .= ' ' x 12 . "${i}'b" . paddedBin($i,$offset) . ' : ';
			$guts_mem_write .= ' ' x 16 . "${i}'b" . paddedBin($i,$offset) . ' : ';

			$guts_mem_read_case = '';
			$guts_mem_write_case = '';
			foreach $field (@{$thisMem->{Offsets}[$offset]}) {
                                $tempDefine = "$vdb->{Prefix}${mem}_";
                                $tempDefine =~ tr/a-z/A-Z/;
				$guts_mem_read_case .= sprintf "%16s%-33s = %-1s;\n", '',
				"readData${mem}[`$tempDefine" . upit($field) . '_F]',
				"$field${mem}Shadow";

				($thisMem->{Fields}{$field}{ReadTrigger} eq 'Y') && do {
					$guts_mem_read_case .= sprintf "%16s%-33s = %-1s;\n", '',
									"rd${mem}Trigger", "1'b1";
				};

				($thisMem->{Fields}{$field}{WriteTrigger} eq 'Y') && do {
					$guts_mem_read_case .= sprintf "%16s%-33s = %-1s;\n", '',
									"wr${mem}Trigger", "1'b1";
				};

				$guts_mem_write_case .= sprintf "%20s%-29s <= %-1s;\n", '',
										"$field${mem}Shadow",
					"registerWriteDataS[`$tempDefine" . upit($field) . '_F]';
			}

			if ($guts_mem_read_case) {
				$guts_mem_read .= "begin\n$guts_mem_read_case            end\n";
			} else {
				$guts_mem_read .= "\n" . ' ' x 12 . ";\n";
			}

			if ($guts_mem_write_case) {
				$guts_mem_write .= "begin\n$guts_mem_write_case                end\n";
			} else {
				$guts_mem_write .= "\n" . ' ' x 16 . ";\n";
			}
		}
		$guts_mem_read .= ' ' x 8 . "endcase";
		$guts_mem_write .= ' ' x 12 . "endcase";

	} else {
		$i = 0;
		$anyReadTrigger = 0;
		$anyWriteTrigger = 0;
		foreach $field (sort keys %{$thisMem->{Fields}}) {
                        $tempDefine = "$vdb->{Prefix}${mem}_";
                        $tempDefine =~ tr/a-z/A-Z/;
			$guts_mem_read .= sprintf "%8s%-41s = %-1s;\n", '',
		"readData${mem}[`$tempDefine" . upit($field) . '_F]',
			"$field${mem}Shadow";

			$anyReadTrigger = 1 if $thisMem->{Fields}{$field}{ReadTrigger} eq 'Y';
			$anyWriteTrigger = 1 if $thisMem->{Fields}{$field}{WriteTrigger} eq 'Y';
			$guts_mem_write .= sprintf "%16s%-33s <= %-1s;\n", '',
										"$field${mem}Shadow",
					"registerWriteDataS[`$tempDefine" . upit($field) . '_F]';
		}

		$anyReadTrigger && do {
			$guts_mem_read .= sprintf "%8s%-41s = %-1s;\n", '',
							"rd${mem}Trigger", "1'b1";
		};

		$anyWriteTrigger && do {
			$guts_mem_read .= sprintf "%8s%-41s = %-1s;\n", '',
							"wr${mem}Trigger", "1'b1";
		};
	}

	$resetMems .= sprintf "%12s%-37s <= %-1s;\n", '', "req$mem", "1'b0";
	$resetMems .= sprintf "%12s%-37s <= %-1s;\n", '', "read$mem", "1'b0";
	$resetMems .= sprintf "%12s%-37s <= %-1s;\n", '', "ack${mem}TriggerS", "1'b0";
	$sync_acqTrigger = sprintf "%12s%-37s <= %-1s;\n", '', "ack${mem}TriggerS", "ack${mem}Trigger";
	$clear_reqMem .= sprintf "%16s%-33s <= %-1s;\n", '', "req$mem", "1'b0";
	$guts_if_req_mem_Trigger .= sprintf "%16s%-33s <= %-1s;\n", '',
								"req$mem", "1'b1";
	$guts_if_req_mem_Trigger .= sprintf "%16s%-33s <= %12s & %-1s;\n", '',
								"read$mem", "rdEn${mem}", "rd${mem}Trigger";
	($thisMem->{MemAddrBits} != 0) && do {
		$resetMems .= sprintf "%12s%-37s <= %-1s;\n", '', "addr$mem",
			"$thisMem->{MemAddrBits}'b" . 'x' x $thisMem->{MemAddrBits};
	        if ($thisMem->{MemAddrBits} > 1) {
			$range =  '[' . ($i + $thisMem->{MemAddrBits} + 1) . ':' . ($i + 2) . ']';
		} else {
			$range = '[2]';
		}
		$guts_if_req_mem_Trigger .= sprintf "%16s%-33s <= %-1s;\n", '',
								"addr$mem", "decodeAddress$range";
	};



$v .= <<MEM_READ ;


//-------------------------------------------------------------------------
// $mem
    // read
    always @ (
        decodeAddress or
$allShadowFields    ) begin

$init_readData_N_all_mem_Triggers
$guts_mem_read
    end
MEM_READ

$v .= <<MEM_WRITE;


    // write
    always @ ( posedge clock ) begin
        if (
            req$mem &
            read$mem &
            ack$mem ) begin
$readData2ShadowFields
        end
        else begin
            if ( wrEn$mem & !req$mem ) begin
$guts_mem_write
            end
        end
    end

    assign req${mem}Trigger =  !ack${mem}TriggerS & ( decodeEn & !req$mem ) &
                                  (( rdEn$mem & rd${mem}Trigger ) |
                                   ( wrEn$mem & wr${mem}Trigger ));
    assign ack${mem}Trigger = req$mem & ack$mem;

    // drive request if needed
    // synospsys sync_set_reset "reset"
    always @ ( posedge clock ) begin
        if ( reset ) begin
$resetMems
        end
        else begin
$sync_acqTrigger
            if ( req${mem}Trigger ) begin
$guts_if_req_mem_Trigger
            end
            else if ( ack${mem}Trigger )
$clear_reqMem
        end
    end
MEM_WRITE
}



foreach $reg (sort keys %{$vdb->{Register}}) {
	$thisReg = $vdb->{Register}{$reg};
(
	$resetRegs,
	$allFieldsNIndicator,
	$init_readData_N_allReadIndicateFields,
	$guts_read,
	$guts_read_case,
	$guts_write,
	$guts_write_case,
	$i,
	$offset
) = ();
	
        $resetRegs2 = " ";

	$init_readData_N_allReadIndicateFields .=
		sprintf "%8s%-42s= 32'h0000_0000;\n", '', "readData$reg";


	exists($thisReg->{ReadIndicate}) && do {
		$allFieldsNIndicator .= "        rdEn$reg or\n";
	};



	foreach $field (sort keys %{$thisReg->{Fields}}) {
		$allFieldsNIndicator .= $_f ? "        $field or\n" : "        $field$reg or\n";


		($thisReg->{Fields}{$field}{ReadIndicate} eq 'Y') && do{
			$init_readData_N_allReadIndicateFields .=
				sprintf "%8s%-42s= 1'b0;\n", '', $_f ? "${field}Read" : "$field${reg}Read";
		};

		($thisReg->{Fields}{$field}{ReadOnly} eq 'N') && do {
			$resetRegs .= sprintf "%12s%-37s <= %-1s", '', $_f ? "$field" : "$field$reg", $_f ? "`$vdb->{Prefix}" . upit($field) . "_D;\n" : "`$vdb->{Prefix}${reg}_" . upit($field) . "_D;\n";
		};

		($thisReg->{Fields}{$field}{WriteIndicate} eq 'Y') && do {
			$resetRegs .= sprintf "%12s%-37s <= %-1s", '',
					$_f ? "${field}WriteData" : "$field${reg}WriteData",
					$_f ? "`$vdb->{Prefix}" . upit($field) . "_D;\n" :
						"`$vdb->{Prefix}${reg}_" . upit($field) . "_D;\n";
			$resetRegs .= sprintf "%12s%-37s <= %-1s", '',
					$_f ? "${field}Write" : "$field${reg}Write",
					"1'b0;\n";
		};

		($thisReg->{Fields}{$field}{WriteIndicate} eq 'Y') && do {
			$resetRegs2 .= sprintf "%12s%-37s <= %-1s", '',
					$_f ? "${field}Write" : "$field${reg}Write",
					"1'b0;\n";
		};

	}
	$allFieldsNIndicator =~ s/\s+or$//s;
	chomp($init_readData_N_allReadIndicateFields);


	if ($thisReg->{Words} > 1) {
		for($i = 1; 2**$i < $thisReg->{Words}; $i++){
		}
		$range = ($i == 1) ? '2' : $i+1 .":2";

		$guts_read .= ' ' x 8 . "case ( decodeAddress [$range] )\n";
		$guts_write .= ' ' x 12 . "case ( decodeAddress [$range] )\n";

		for($offset = 0; $offset < $thisReg->{Words}; $offset++){
			$guts_read .= ' ' x 12 . "${i}'b" . paddedBin($i,$offset) . ' : ';
			$guts_write .= ' ' x 16 . "${i}'b" . paddedBin($i,$offset) . ' : ';

			$guts_read_case = '';
			$guts_write_case = '';
			foreach $field (@{$thisReg->{Offsets}[$offset]}) {
                                $tempDefine = $_f ? "$vdb->{Prefix}" : "$vdb->{Prefix}${reg}_";
                                $tempDefine =~ tr/a-z/A-Z/;
				$guts_read_case .= sprintf "%16s%-33s = %-1s;\n", '',
				"readData${reg}[`$tempDefine" . upit($field) . '_F]' ,
				$_f ? "$field" : "$field$reg";

				($thisReg->{Fields}{$field}{ReadIndicate} eq 'Y') && do {
					$guts_read_case .= sprintf "%16s%-33s = %-1s;\n", '',
									$_f ? "${field}Read" : "$field${reg}Read",
									"rdEn$reg";
				};

#				($thisReg->{Fields}{$field}{ReadOnly} eq 'N') && do{
					$guts_write_case .= write2fields($field, $reg, 20, 29);
#				};
			}

			if ($guts_read_case) {
				$guts_read .= "begin\n$guts_read_case            end\n";
			} else {
				$guts_read .= "\n" . ' ' x 12 . ";\n";
			}

			if ($guts_write_case) {
				$guts_write .= "begin\n$guts_write_case                end\n";
			} else {
				$guts_write .= "\n" . ' ' x 16 . ";\n";
			}
		}
		$guts_read .= ' ' x 8 . "endcase";
		$guts_write .= ' ' x 12 . "endcase";

	} else {
		foreach $field (sort keys %{$thisReg->{Fields}}) {
                                $tempDefine = $_f ? "$vdb->{Prefix}" : "$vdb->{Prefix}${reg}_";
                                $tempDefine =~ tr/a-z/A-Z/;
			$guts_read .= sprintf "%8s%-41s = %-1s;\n", '',
			"readData${reg}[`$tempDefine" . upit($field) . '_F]' ,
			$_f ? "$field" : "$field$reg";

#			($thisReg->{Fields}{$field}{ReadOnly} eq 'N') && do{
				$guts_write .= write2fields($field, $reg, 16, 33);
#			};

			exists($thisReg->{ReadIndicate}) && do {
				$guts_read .= sprintf "%8s%-41s = %-1s;\n", '',
								$_f ? "${field}Read" : "$field${reg}Read",
								"rdEn$reg";
			};
		}
	}



$v .= <<REG_READ ;


//-------------------------------------------------------------------------
// $reg
    // read
    always @ (
        decodeAddress or
$allFieldsNIndicator    ) begin

$init_readData_N_allReadIndicateFields
$guts_read
    end
REG_READ

if (! exists($thisReg->{ReadOnly})) {
$v .= <<REG_WRITE ;


    // write
    // synospsys sync_set_reset "reset"
    always @ ( posedge clock ) begin
        if ( reset ) begin
$resetRegs
        end
        else begin
$resetRegs2
            if ( wrEn$reg ) begin
$guts_write
            end
        end
    end
REG_WRITE
}

#return $v;

}
$v .= "\nendmodule\n\n";




$v;
}



#-----------------------------------------------------------------------------#
sub write2fields {
#-----------------------------------------------------------------------------#
	my($field, $reg, $s1, $s2) = @_;
	my $code = '';
	($vdb->{Register}{$reg}{Fields}{$field}{ReadOnly} eq 'N') && do {
	$code .= sprintf "%${s1}s%-${s2}s <= %-1s;\n", '',
		$_f ? "$field" : "$field$reg",
		$_f ? "registerWriteDataS[`$vdb->{Prefix}" . upit($field) . '_F]' :
			"registerWriteDataS[`$vdb->{Prefix}${reg}_" . upit($field) . '_F]';
	};

	($vdb->{Register}{$reg}{Fields}{$field}{WriteIndicate} eq 'Y') && do {
	$code .= sprintf "%${s1}s%-${s2}s <= %-1s;\n", '',
		$_f ? "${field}WriteData" : "$field${reg}WriteData",
		$_f ? "registerWriteDataS[`$vdb->{Prefix}" . upit($field) . '_F]' :
			"registerWriteDataS[`$vdb->{Prefix}${reg}_" . upit($field) . '_F]';
	$code .= sprintf "%${s1}s%-${s2}s <= 1'b1;\n", '',
		$_f ? "${field}Write" : "$field${reg}Write";
	};
	$code;
}

#-----------------------------------------------------------------------------#
sub change_value_format {
#-----------------------------------------------------------------------------#
    my ($defaultvalue) = @_;
    my $defaultvalue_len;
    my $value;
    if($defaultvalue =~ /^.*(?:'b|'B)/){
       $defaultvalue =~ s/^.*(?:'b|'B)//;
       $defaultvalue =~ s/_//g;
       $defaultvalue_len = length($defaultvalue);
       $value = 0;
       for ($iNum = 0; $iNum < $defaultvalue_len; $iNum++) {
           $char = substr ($defaultvalue, $defaultvalue_len - $iNum-1, 1);
           if($char eq '1'){ $value |= 1 << $iNum;}
       }
    }elsif($defaultvalue =~ /^.*(?:'o|'O)/){
       $defaultvalue =~ s/^.*(?:'o|'O)//;
       $defaultvalue =~ s/_//g;
       $value = oct($defaultvalue);
    }elsif($defaultvalue =~ /^.*(?:'h|'H)/){
       $defaultvalue =~ s/^.*(?:'h|'H)//;
       $defaultvalue =~ s/_//g;
       $value = hex($defaultvalue);
    }elsif($defaultvalue =~ /^.*(?:'d|'D)/){
       $defaultvalue =~ s/^.*(?:'d|'D)//;
       $defaultvalue =~ s/_//g;
       $value = $defaultvalue;
    }else{
       $defaultvalue =~ s/_//g;
       $value = $defaultvalue;
    }
    $value ;
}

__END__
Usage:
$0 [-f] Spreadsheat.txt

