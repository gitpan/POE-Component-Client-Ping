#!/usr/bin/perl
# $Id: Makefile.PL,v 1.2 2000/09/02 20:12:44 rcaputo Exp $

use ExtUtils::MakeMaker;

WriteMakefile
  ( NAME         => 'POE::Component::Client::Ping',
    AUTHOR       => 'Rocco Caputo <troc+poe@netrus.net>',
    ABSTRACT     => 'POE component for non-blocking/concurrent ICMP ping.',
    VERSION_FROM => 'Ping.pm',

    PM           => { 'Ping.pm'   => '$(INST_LIBDIR)/Ping.pm' },
    PREREQ_PM    => { POE         => 0.11,
                      Time::HiRes => 1.20,
                    },
    dist         => { COMPRESS    => 'gzip -9f',
                      SUFFIX      => 'gz',
                    },
  );
