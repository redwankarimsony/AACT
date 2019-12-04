#!/usr/bin/perl
use strict;
use warnings;

use Path::Class;
use autodie; # die if problem reading or writing a file

my $file = file("GDS6010_partial_trimmed.soft");
my $file1 = file("id_ref.txt");
my $file2 = file("identifier.txt");
my $file3 = file("intensity_matrix.txt");


open(my $fh1, '>', $file1) or die "Could not open file '$file1' $!";
open(my $fh2, '>', $file2) or die "Could not open file '$file2' $!";
open(my $fh3, '>', $file3) or die "Could not open file '$file3' $!";


# Read in the entire contents of a file
my $content = $file->slurp();

# openr() returns an IO::File object to read from
my $file_handle = $file->openr();

# Read in line at a time
while( my $line = $file_handle->getline() ) {
        #print $line;
       my @fields = split("\t+", $line);
       
       print $fh1 "$fields[0]\n";
       print $fh2 "$fields[1]\n";
       for (my $i=2; $i <= 18; $i++) {
        print $fh3 "$fields[$i]\t";
        }
        print $fh3 "$fields[19]";
           
}