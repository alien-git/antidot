GARNAME = Filesys-DiskFree
GARVERSION = 0.06
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = macos.diff zombies.diff df.diff

MASTER_SITES = $(CPAN_MIRROR)/authors/id/A/AB/ABARCLAY/ http://www.cpan.org/authors/id/A/AB/ABARCLAY/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/A/AB/ABARCLAY/

LIBDEPS = apps/base/perl

DESCRIPTION = OS independant parser of the df command
AUTHOR = Alan Barclay 
URL = http://cpan.uwinnipeg.ca/~abarclay
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule Filesys::DiskFree $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

