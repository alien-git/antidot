GARNAME = Authen-PAM
GARVERSION = 0.16
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = 
#test.pl.diff Makefile.PL.diff

MASTER_SITES = $(CPAN_MIRROR)/authors/id/N/NI/NIKIP/ http://www.cpan.org/authors/id/N/NI/NIKIP/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/N/NI/NIKIP/
#http://search.cpan.org/CPAN/authors/id/N/NI/NIKIP/Authen-PAM-0.16.tar.gz

LIBDEPS = apps/base/perl apps/base/Linux-PAM

DESCRIPTION = Interface to PAM library
AUTHOR = Nikolay Pelov 
URL    = http://cpan.uwinnipeg.ca/~nikip
LICENSE= Perl

CONFIGURE_ENV = env LDFLAGS=" -L$(PREFIX)/lib -L$(PREFIX)/lib64" 
BUILD_ENV = LDFLAGS=" -L$(PREFIX)/lib -L$(PREFIX)/lib64"
#INSTALL_ENV = env  LDFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" CFLAGS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" LD_RUN_PATH="-L$(PREFIX)/lib -L$(PREFIX)/lib64" CPPFLAGS="-I$(PREFIX)/include -L$(PREFIX)/lib -L$(PREFIX)/lib64"

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

ifeq ($(ALICBS),)
TEST_SCRIPTS = $(WORKSRC)/Makefile
endif

AUTOTEST = testForAliEnPerlModule Authen::PAM $(GARVERSION)

CONFIGURE_ARGS =
BUILD_ARGS =  

include ../category.mk

