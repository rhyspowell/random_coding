#!/usr/bin/tclsh

for {set i 0} {$i <= 100} {incr i} {
	if {[expr {$i % 3} == 0] && [expr {$i % 5} == 0]}
		puts "Fizzbuzz" } elseif {
	[expr {$i % 3} == 0]
		puts "Fizz" } elseif {
	[expr {$i % 5} == 0]
		puts "Buzz" } else {
		puts $i
	}
}	
