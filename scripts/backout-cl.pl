#!/usr/bin/perl

if ($#ARGV < 0) {
  print "Usage: ./backout-cl.pl  [perforce changelist id]\n";
  exit;
}

$P4 = `which p4`;
chomp $P4;
$changelistId = $ARGV[0];
$command = "$P4 describe -s $changelistId";
@changelistDesc = `$command`;
print $command."\n";

$readFiles = 0;
for $line (@changelistDesc) {
  chomp $line;
  if ($line =~ /^Affected files/) {
    $readFiles = 1;
  }
  if ($readFiles && $line =~ /(\/\/depot.*)\#(\d+) edit/) {
    $file = $1;
    $rev = $2;
    $newRev = $rev-1;
    $bkoutCmd = "$P4 sync $file#$newRev";
    print $bkoutCmd."\n";
    @command = `$bkoutCmd`;
  }
}
print "done\n";
