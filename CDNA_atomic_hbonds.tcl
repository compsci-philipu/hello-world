package require pbctools

package require hbonds

set water [atomselect top water]

pbc wrap -center com -centersel "index 167" -compound residue -all

set res [atomselect top "index 167"]

hbonds -dist 3.5 -ang 45.0 -sel1 $res -sel2 $water -plot no -writefile yes -outfile C_atomic2_wrapped/N1.dat

pbc wrap -center com -centersel "index 173" -compound residue -all

set water [atomselect top water]

set res [atomselect top "index 173"]

hbonds -dist 3.5 -ang 45.0 -sel1 $res -sel2 $water -plot no -writefile yes -outfile C_atomic2_wrapped/O2.dat

set water [atomselect top water]

pbc wrap -center com -centersel "index 174" -compound residue -all

set res [atomselect top "index 174"]

hbonds -dist 3.5 -ang 45.0 -sel1 $res -sel2 $water -plot no -writefile yes -outfile C_atomic2_wrapped/N3.dat

set water [atomselect top water]

pbc wrap -center com -centersel "index 176" -compound residue -all

set res [atomselect top "index 176"]

hbonds -dist 3.5 -ang 45.0 -sel1 $res -sel2 $water -plot no -writefile yes -outfile C_atomic2_wrapped/N4.dat

set water [atomselect top water]

pbc wrap -center com -centersel "index 177" -compound residue -all

set res [atomselect top "index 177"]

hbonds -dist 3.5 -ang 45.0 -sel1 $res -sel2 $water -plot no -writefile yes -outfile C_atomic2_wrapped/H41.dat

set water [atomselect top water]

pbc wrap -center com -centersel "index 178" -compound residue -all

set res [atomselect top "index 178"]

hbonds -dist 3.5 -ang 45.0 -sel1 $res -sel2 $water -plot no -writefile yes -outfile C_atomic2_wrapped/H42.dat

