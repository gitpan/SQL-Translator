#!/usr/local/bin/perl
# vim: set ft=perl:

# $Source: /cvsroot/sqlfairy/sqlfairy/t/25storable.t,v $
# $Id: 25storable.t,v 1.1 2003/10/08 18:24:24 phrrngtn Exp $

use Test::More tests => 2;

use_ok('SQL::Translator::Parser::Storable');
use_ok('SQL::Translator::Producer::Storable');

1;

