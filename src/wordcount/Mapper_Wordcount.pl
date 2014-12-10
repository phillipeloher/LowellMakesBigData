#!/usr/bin/perl
use strict;
use warnings;

# MAPPER
# Demo by Phillipe Loher
# For Lowell Makes education session

# read one line at a time
while (my $inputline = <STDIN>)
{
   # split the line into individual words
   my @matches = ($inputline =~ m/[a-zA-Z][a-zA-Z0-9]*/g);
   foreach my $match (@matches)
   {
      # print each word (in lower case)
      printf ("LongValueSum:%s\t1\n", lc ($match));
   }
}
