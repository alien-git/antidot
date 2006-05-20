GARNAME = Crypt-GPG
GARVERSION = 1.52
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/A/AG/AGUL/

LIBDEPS = apps/base/TimeDate apps/base/IPC-Run apps/base/gnupg

DESCRIPTION = An Object Oriented Interface to GnuPG
AUTHOR =  Ashish Gulhati
URL = http://cpan.uwinnipeg.ca/~agul
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule Crypt::GPG $(GARVERSION)

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_ENV = env GPGBIN=$(PREFIX)/bin/gpg 
TEST_SCRIPTS = 

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

