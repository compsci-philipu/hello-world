package require pbctools
package require hbonds

set water [atomselect top water]

pbc wrap -center com -centersel "index 168" -compound residue -all
set res [atomselect top "index 168"]

set gro [measure gofr $res $water delta .1 rmax 10 selupdate 1 first 1 last -1 step 1]
puts "calculating radial distribution function for N1"

set outfile [open radialdistribution/N1.dat w]
set r [lindex $gro 0]
set gr2 [lindex $gro 1]
set igr [lindex $gro 2]

set i 0
foreach j $r k $gr2 l $igr {
	puts $outfile "$j $k $l" 
}
close $outfile

hbonds -dist 3.5 -ang 45.0 -sel1 $res -sel2 $water -plot no -writefile yes -outfile atomic_hbonds/N1.dat

pbc wrap -center com -centersel "index 174" -compound residue -all

set water [atomselect top water]

set res [atomselect top "index 174"]

set gro [measure gofr $res $water delta .1 rmax 10 selupdate 1 first 1 last -1 step 1]
puts "calculating radial distribution function for O2"

set outfile [open radialdistribution/O2.dat w]
set r [lindex $gro 0]
set gr2 [lindex $gro 1]
set igr [lindex $gro 2]

set i 0
foreach j $r k $gr2 l $igr {
	puts $outfile "$j $k $l" 
}
close $outfile

hbonds -dist 3.5 -ang 45.0 -sel1 $res -sel2 $water -plot no -writefile yes -outfile atomic_hbonds/O2.dat

set water [atomselect top water]

pbc wrap -center com -centersel "index 175" -compound residue -all

set res [atomselect top "index 175"]

set gro [measure gofr $res $water delta .1 rmax 10 selupdate 1 first 1 last -1 step 1]
puts "calculating radial distribution function for N3"

set outfile [open radialdistribution/N3.dat w]
set r [lindex $gro 0]
set gr2 [lindex $gro 1]
set igr [lindex $gro 2]

set i 0
foreach j $r k $gr2 l $igr {
	puts $outfile "$j $k $l" 
}
close $outfile

hbonds -dist 3.5 -ang 45.0 -sel1 $res -sel2 $water -plot no -writefile yes -outfile atomic_hbonds/N3.dat

set water [atomselect top water]

pbc wrap -center com -centersel "index 177" -compound residue -all

set res [atomselect top "index 177"]

set gro [measure gofr $res $water delta .1 rmax 10 selupdate 1 first 1 last -1 step 1]
puts "calculating radial distribution function for N4"

set outfile [open radialdistribution/N4.dat w]
set r [lindex $gro 0]
set gr2 [lindex $gro 1]
set igr [lindex $gro 2]

set i 0
foreach j $r k $gr2 l $igr {
	puts $outfile "$j $k $l" 
}
close $outfile

hbonds -dist 3.5 -ang 45.0 -sel1 $res -sel2 $water -plot no -writefile yes -outfile atomic_hbonds/N4.dat

set water [atomselect top water]

pbc wrap -center com -centersel "index 178" -compound residue -all

set res [atomselect top "index 178"]

set gro [measure gofr $res $water delta .1 rmax 10 selupdate 1 first 1 last -1 step 1]
puts "calculating radial distribution function for H41"

set outfile [open radialdistribution/H41.dat w]
set r [lindex $gro 0]
set gr2 [lindex $gro 1]
set igr [lindex $gro 2]

set i 0
foreach j $r k $gr2 l $igr {
	puts $outfile "$j $k $l" 
}
close $outfile

hbonds -dist 3.5 -ang 45.0 -sel1 $res -sel2 $water -plot no -writefile yes -outfile atomic_hbonds/H41.dat

set water [atomselect top water]

pbc wrap -center com -centersel "index 179" -compound residue -all

set res [atomselect top "index 179"]

set gro [measure gofr $res $water delta .1 rmax 10 selupdate 1 first 1 last -1 step 1]
puts "calculating radial distribution function for H42"

set outfile [open radialdistribution/H42.dat w]
set r [lindex $gro 0]
set gr2 [lindex $gro 1]
set igr [lindex $gro 2]

set i 0
foreach j $r k $gr2 l $igr {
	puts $outfile "$j $k $l" 
}
close $outfile

hbonds -dist 3.5 -ang 45.0 -sel1 $res -sel2 $water -plot no -writefile yes -outfile atomic_hbonds/H42.dat
puts "Calculation of Radial Distribution Function and Atomic Hbonds Done."
