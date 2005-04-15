GARNAME = Authen-PAM
GARVERSION = 0.15
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = test.pl.diff

MASTER_SITES = $(CPAN_MIRROR)/authors/id/N/NI/NIKIP/ http://www.cpan.org/authors/id/N/NI/NIKIP/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/N/NI/NIKIP/

LIBDEPS = apps/base/perl apps/base/Linux-PAM

DESCRIPTION = Interface to PAM library
AUTHOR = Nikolay Pelov 
URL    = http://cpan.uwinnipeg.ca/~nikip
LICENSE= Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
ifeq ($(ALICBS),)
TEST_SCRIPTS = $(WORKSRC)/Makefile
endif

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

