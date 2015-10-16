#!/usr/bin/perl

$string = "ML002";

substr($string,$offset, 2) = $newstring;
#substr($string, $offset, 2) = $newstring;
# print $string # , $offset, $count, $newstring;
print "The first two characters are cut off and the result is $string\n";
