#!/usr/local/bin/perl
# Refresh the AWstats report, from a cron job

$no_acl_check++;
require './virtualmin-awstats-lib.pl';
@ARGV == 1 || die "usage: awstats.pl <domainname>";

open(NULL, ">/dev/null");
&generate_report($ARGV[0], NULL, 0);
close(NULL);

