#!/usr/bin/perl

for ($i = 1; $i <= 100; $i++ )
{
	if (($i % 3 == 0 ) && ($i % 5 == 0)) {
		print "Fizzbuzz";
	}
	elsif ( $i % 3 == 0 ) {
		print "Fizz";
	}
	elsif ( $i % 5 == 0 ) {
		print "Buzz";
	}
	else {
		print $i;
	}
	print "\n"
}
