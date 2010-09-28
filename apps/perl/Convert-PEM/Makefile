GARNAME = Convert-PEM
GARVERSION = 0.07
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/B/BT/BTROTT/ http://www.cpan.org/authors/id/B/BT/BTROTT/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/B/BT/BTROTT/

LIBDEPS = apps/perl/Crypt-DES_EDE3 apps/perl/Class-ErrorHandler apps/perl/Convert-ASN1

DESCRIPTION = Read/write encrypted ASN.1 PEM files
AUTHOR =  Benjamin Trott
URL = http://cpan.uwinnipeg.ca/~btrott
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

