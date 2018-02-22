set pdb [lindex $argv 0]
set dcd [lindex $argv 1]

mol new $pdb
animate read xtc $dcd waitfor all 0

set nf [molinfo 0 get numframes]

for {set i 1} {$i < $nf} {incr i} {
     set p [atomselect top all frame $i]
     $p writepdb ${i}.pdb
}

exit
