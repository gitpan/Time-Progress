#!/usr/bin/perl -I .
use Time::Progress;

my $p = new Time::Progress;

print "-------------------------------------------------------------------\n";

$p->restart;

my $c = 0;
while($c < 110)
  {
  sleep 1;
  print $p->report( "done %p elapsed time %L (%l sec), ETA %E (%e sec)\n", $c );
  $c += 10;
  }

print "-------------------------------------------------------------------\n";

$p->attr( min => -2, max => -20 );
$p->restart;

my $c = -2;
while($c-- > -20)
  {
  sleep 1;
  print $p->report( "done %p elapsed time %L (%l sec), ETA %E (%e sec)\n", $c );
  }

$| = 1;

print "-------------------------------------------------------------------\n";

$p->restart;
my $c = -2;
while($c-- > -20)
  {
  sleep 1;
  print $p->report( "%70b %p\r", $c );
  }
print "\n";

print "-------------------------------------------------------------------\n";

$p->restart;
my $c = 0;
while($c-- > -20)
  {
  sleep 1;
  print $p->report( "done %p ETA %f\n", $c );
  }
print localtime( time() ) . "\n";


