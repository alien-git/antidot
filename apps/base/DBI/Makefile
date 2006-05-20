GARNAME = DBI
GARVERSION = 1.49
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/T/TI/TIMB/ http://www.cpan.org/authors/id/T/TI/TIMB/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/T/TI/TIMB/

LIBDEPS = apps/base/PlRPC

DESCRIPTION = Generic Database Interface (see DBD modules)
AUTHOR = Tim Bunce 
URL = http://cpan.uwinnipeg.ca/~timb
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule DBI $(GARVERSION)
 
CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

