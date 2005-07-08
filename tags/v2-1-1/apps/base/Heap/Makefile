GARNAME = Heap
GARVERSION = 0.71
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/J/JM/JMM/ http://www.cpan.org/authors/id/J/JM/JMM/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/J/JM/JMM/

LIBDEPS = apps/base/perl

DESCRIPTION = Define Heap interface
AUTHOR = John Macdonald
URL = http://cpan.uwinnipeg.ca/~jmm
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule Heap $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

