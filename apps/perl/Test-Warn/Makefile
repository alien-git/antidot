GARNAME = Test-Warn
GARVERSION = 0.30
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = 

#http://search.cpan.org/CPAN/authors/id/C/CH/CHORNY/Test-Warn-0.21.zip
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/C/CH/CHORNY/

LIBDEPS = apps/perl/Tree-DAG_Node apps/perl/Sub-Uplevel

DESCRIPTION = Perl extension to test methods for warnings
AUTHOR = Alexandr Ciornii
URL = http://search.cpan.org/~chorny/
LICENSE = Perl

AUTOTEST = 

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS =  $(WORKSRC)/Makefile

BUILD_ARGS =  

include ../category.mk

