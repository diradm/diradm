#!/usr/bin/perl
# $Header: /code/convert/cvsroot/infrastructure/diradm/Attic/mkpasswd.pl,v 1.4 2004/12/09 14:01:34 robbat2 Exp $
use Crypt::SmbHash qw(lmhash nthash ntlmgen);
#use warnings;
use strict;

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

# trim whitespace
my $passwd = $ARGV[1];
$passwd =~ s/^\s+//g;
$passwd =~ s/\s+$//g;
#print "passwd: '",$passwd,"'\n";

if( $ARGV[0] =~ /-m/ ) {    print  crypt( $passwd, generatesalt( '$1$%.8s$' ) ) }
elsif( $ARGV[0] =~ /-i/ ) { print  crypt( $passwd, generatesalt ) }
elsif( $ARGV[0] =~ /-n/ ) { print nthash( $passwd ) }
elsif( $ARGV[0] =~ /-l/ ) { print lmhash( $passwd ) }

#print "\n"
