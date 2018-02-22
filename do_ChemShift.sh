source $cmyc/code/environ_set.sh
condition='c36m'
set_parms

extractPDB=true
calShift=true

for i in 3
do

cd $i
mkdir pdb

if $extractPDB
then
cd pdb
vmd -dispdev text -e $CodeHOME/split.tcl -args $struct ${TrjDIR}/${i}.xtc
cd ..
fi

if $calShift
then
cd pdb
nf="$(ls | grep -c '.pdb')"
echo $nf
for j in `seq 1 $nf`
do
   /home/hliu/shiftx/shiftx 1 ${j}.pdb out.dat
   sed -n 3,42p out.dat >> all_shift.dat
done
rm out.dat
mv all_shift.dat ../
cd ..
fi

cd ..
done
