GARNAME = Log-Agent-Rotate
GARVERSION = 0.1.3
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES =

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/R/RA/RAM/
#http://search.cpan.org/CPAN/authors/id/R/RA/RAM/Log-Agent-Rotate-0.1.3.tar.gz

LIBDEPS = apps/base/Getargs-Long apps/base/Compress-Zlib apps/base/LockFile-Simple

DESCRIPTION = Logging Agent
AUTHOR = Mark Rogaski
URL = http://search.cpan.org/~mrogaski
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

