GARNAME = Expect
GARVERSION = 1.15
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz


MASTER_SITES = $(CPAN_MIRROR)/authors/id/R/RG/RGIERSIG/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/R/RG/RGIERSIG/

LIBDEPS = apps/base/IO-Tty 

DESCRIPTION = Perl version of Don Libes Tcl-Expect
AUTHOR = Roland Giersig 
URL = http://cpan.uwinnipeg.ca/~rgiersig
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule Expect $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

