#!/usr/bin/env perl
###############################################################################
#
# Simple API for testing support for perl using carton
#
###############################################################################
use strict;
use warnings;
use Mojolicious::Lite;

get '/' => { text => 'Hello from Shipa on Perl' };

app->config(hypnotoad => {
    listen => [
                "http://*:$ENV{PORT}",
                ],
});
app->start;
