GARNAME = Log-Dispatch-FileRotate
GARVERSION = 1.13
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = nfs.patch

MASTER_SITES = $(CPAN_MIRROR)/authors/id/M/MA/MARKPF/ http://www.cpan.org/authors/id/M/MA/MARKPF/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/M/MA/MARKPF/

LIBDEPS = apps/base/DateManip apps/base/Log-Dispatch apps/base/Log-Log4perl apps/base/LockFile-Simple


DESCRIPTION = Log to files that archive/rotate themselves
AUTHOR = Mark Pfeiffer 
URL = http://cpan.uwinnipeg.ca/~markpf
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule Log::Dispatch::FileRotate $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

