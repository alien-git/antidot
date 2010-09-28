GARNAME = Crypt-DES_EDE3
GARVERSION = 0.01
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/B/BT/BTROTT/ http://www.cpan.org/authors/id/B/BT/BTROTT/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/B/BT/BTROTT/

LIBDEPS = apps/perl/Crypt-DES

DESCRIPTION = Triple-DES EDE encryption/decryption
AUTHOR =  Benjamin Trott
URL = http://cpan.uwinnipeg.ca/~btrott
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule Crypt::DES_EDE3 $(GARVERSION)

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

