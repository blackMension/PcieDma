mkdir tmp
cd tmp
grep -hr GenRam ../Dp > tmp.list
grep -hr GenRam ../Igr >> tmp.list
grep -hr GenRam ../Egr >> tmp.list
grep -hr GenRam ../Shim >> tmp.list

## delete comment
sed -i 's/\/\/.*//g' tmp.list

## delete blank line
sed -i '/^ *$/d' tmp.list

## extract GenRam*
egrep -o 'GenRam[0-9a-zA-Z]+ ' tmp.list > tmp.list2

## remove repeat 
sort tmp.list2 | uniq > ram.list
#awk ' !x[$0]++'  Ram.list2 > Ram.list3

## extract GenRamFifo
egrep -o 'GenRamFifo[0-9a-zA-Z]+ ' ram.list > fifo.list

## delete fifo line
sed -i '/GenRamFifo/d' ram.list

## gen fifo command
cp fifo.list fifo.cmd
sed -i 's/GenRamFifo/genfifo.pl /g' fifo.cmd
sed -i 's/\([0-9]\+\)D/-d \1 /g' fifo.cmd
sed -i 's/\([0-9]\+\)W/-w \1 -ram/g' fifo.cmd
chmod 777 fifo.cmd

## gen ram command
cp ram.list ram.cmd
sed -i 's/GenRam/genmem.pl /g' ram.cmd
sed -i 's/\([1-2]\+\)P/-\1p /g' ram.cmd
sed -i 's/\([0-9]\+\)D/-d \1 /g' ram.cmd
sed -i 's/\([0-9]\+\)W/-w \1 /g' ram.cmd
sed -i 's/Fi/-fi /g' ram.cmd
sed -i 's/Fo/-fo /g' ram.cmd
chmod 777 ram.cmd

