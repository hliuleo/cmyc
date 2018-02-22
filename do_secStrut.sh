source $cmyc/code/environ_set.sh
condition='c36mYC'
set_parms

for i in 1 2 3
do
  if [ ! -d "${i}" ]
  then
      mkdir ${i}
  fi
  cd ${i}
  vmd -dispdev text -e $CodeHOME/2nd_struct.tcl -args $struct ${TrjDIR}/${i}.xtc
  cd ..
done
