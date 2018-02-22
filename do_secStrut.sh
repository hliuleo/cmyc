source $cmyc/code/environ_set.sh
condition='c36mProt'
set_parms

for i in 1 2 3
do
  cd ${i}
  vmd -dispdev text -e $CodeHOME/2nd_struct.tcl -args $struct ${TrjDIR}/${i}.xtc
  cd ..
done
