GARNAME = Cache
GARVERSION = 2.02
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/C/CL/CLEISHMAN/ http://www.cpan.org/authors/id/C/CL/CLEISHMAN/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/C/CL/CLEISHMAN/

LIBDEPS = apps/base/TimeDate apps/base/Digest-SHA1 apps/base/File-NFSLock apps/base/Heap apps/base/IO-String apps/base/DB_File

AUTHOR = Chris Leishman
DESCRIPTION = The Cache interface
URL = http://cpan.uwinnipeg.ca/~cleishman
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule Cache $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

