#!/usr/bin/perl
use strict;	# Enforce some good programming rules

use Time::localtime;

my @MONTHS = qw( 01 02 03 04 05 06 07 08 09 10 11 12 );
my @DAYS = qw( 00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 );
my $ONE_DAY = 24 * 60 * 60;

my $this_year = localtime()->year + 1900;
my $this_month = $MONTHS[localtime()->mon];
my $this_day = $DAYS[localtime()->mday];

my $yester_year = localtime( time() - $ONE_DAY )->year + 1900;
my $yester_month = $MONTHS[localtime( time() - $ONE_DAY )->mon];
my $yester_day = $DAYS[localtime( time() - $ONE_DAY )->mday];

print "Today: $this_year-$this_month-$this_day\n";
print "Yesterday: $yester_year-$yester_month-$yester_day\n";
