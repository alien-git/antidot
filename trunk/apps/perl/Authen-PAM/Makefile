GARNAME = Authen-PAM
GARVERSION = 0.16
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = test.pl.diff Makefile.PL.diff

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/N/NI/NIKIP/

LIBDEPS = apps/perl/perl apps/system/Linux-PAM

DESCRIPTION = Interface to PAM library
AUTHOR = Nikolay Pelov 
URL    = http://cpan.uwinnipeg.ca/~nikip
LICENSE= Perl

CONFIGURE_ENV = env LDFLAGS=" -L$(PREFIX)/lib"

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS = PREFIX=$(PREFIX) CCFLAGS="-I$(PREFIX)/include"

include ../category.mk

