GARNAME = ApMon_perl
GARVERSION = 2.2.23
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://monalisa.cern.ch/download/apmon/ http://monalisa.cacr.caltech.edu/download/apmon/

LIBDEPS = apps/perl/libwww-perl

AUTHOR  = Catalin Cirstoiu
LICENSE = 

DESCRIPTION = Perl application monitor using MonaLisa

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule ApMon $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

