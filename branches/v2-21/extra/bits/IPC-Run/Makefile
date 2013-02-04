GARNAME = IPC-Run
GARVERSION = 0.89
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
#                http://search.cpan.org/CPAN/authors/id/T/TO/TODDR/IPC-Run-0.89.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/T/TO/TODDR/

LIBDEPS = apps/perl/perl

DESCRIPTION = Child procs w/ piping, redir and psuedo-ttys
AUTHOR = Richard Soderberg
URL = http://cpan.uwinnipeg.ca/~rsod
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule IPC::Run $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

