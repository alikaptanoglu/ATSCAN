#!/usr/bin/perl
use strict;
use warnings;
use FindBin '$Bin';
## ALISAM TECHNOLOGY 2015
######################################################################################################################################################################################################
######################################################################################################################################################################################################
## DELETE / UNINSTALL TOOL
our ($uninstall, $scriptbash, $script, @TT, @c, @OTHERS);
if (defined $uninstall) {
  desclaimer();
  print $c[2]."$OTHERS[8]";
  my $resp=<STDIN>;
  chomp ($resp);
  if ($resp=~/(Y|y)/) {
    unlink $scriptbash if -e $scriptbash;
    system "rm -rf $Bin";
    print $c[3]."$OTHERS[9]\n";
  }else{
    system("chmod +x $script | perl $script || atscan");
    mtak(); ptak();
    print $c[4]."[!] $TT[13]\n";
  }
}
######################################################################################################################################################################################################
######################################################################################################################################################################################################
1;
######################################################################################################################################################################################################
######################################################################################################################################################################################################
