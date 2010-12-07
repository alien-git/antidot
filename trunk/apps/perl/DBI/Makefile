GARNAME = DBI
GARVERSION = 1.613
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#PATCHFILES = 40profile.diff

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/T/TI/TIMB/

LIBDEPS = apps/perl/perl

DESCRIPTION = Generic Database Interface (see DBD modules)
AUTHOR = Tim Bunce 
URL = http://cpan.uwinnipeg.ca/~timb
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule DBI $(GARVERSION)
 
CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

#CONFIGURE_ARGS = ccflags=-I/opt/alien//x86_64-unknown-linux-gnu/4.1.2/lib/gcc/x86_64-unknown-linux-gnu/4.1.2/include/  
BUILD_ARGS =  

include ../category.mk

