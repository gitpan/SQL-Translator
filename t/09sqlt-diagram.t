#!/usr/bin/perl
# vim: set ft=perl:

use strict;

use File::Spec::Functions qw(catfile updir tmpdir);
use File::Temp qw(mktemp);
use FindBin qw($Bin);
use Test;

my @script = qw(blib script sqlt-diagram);
my @data = qw(data mysql Apache-Session-MySQL.sql);

my $sqlt_diagram = (-d "blib")
    ? catfile($Bin, updir, @script)
    : catfile($Bin, @script);

my $test_data = (-d "t")
    ? catfile($Bin, @data)
    : catfile($Bin, "t", @data);

my $tmp = mktemp('sqlXXXXX');

BEGIN {
    plan tests => 3;
}

ok(-e $sqlt_diagram); 
eval { require GD; };
if ($@ && $@ =~ /locate GD.pm in /) {
    skip($@, "GD not installed");
    skip($@, "GD not installed");
} else {
    my @cmd = ($sqlt_diagram, "-d", "MySQL", "-o", $tmp, $test_data);
    eval { system(@cmd); };
    ok(!$@ && ($? == 0));
    ok(-e $tmp); 
    eval { unlink $tmp; };
}
