#!/usr/bin/perl

use Crypt::SmbHash qw(lmhash nthash ntlmgen);

sub generatesalt {
    my $formatstr = $_[0];
    if(!$formatstr or length($formatstr) == 0) { $formatstr = '%.2s'; }
    my $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/
.";
    my $randstr = '';
    while(length($randstr) < 64) {
        my $val = int(rand(64));
        $randstr .= substr($chars,$val,1);
    }
    return sprintf($formatstr, $randstr);
}

if( $ARGV[0] =~ /-m/ ) { print crypt( $ARGV[0], generatesalt( '$1$%.8s$' ) ) }
elsif( $ARGV[0] =~ /-i/ ) { print crypt( $ARGV[0], generatesalt ) }
elsif( $ARGV[0] =~ /-n/ ) { print nthash( $ARGV[1] ) }
elsif( $ARGV[0] =~ /-l/ ) { print lmhash( $ARGV[1] ) }

#print "\n"
