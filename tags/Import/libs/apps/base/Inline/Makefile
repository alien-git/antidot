GARNAME = Inline
GARVERSION = 0.44
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/I/IN/INGY/ http://www.cpan.org/authors/id/I/IN/INGY/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/I/IN/INGY/

LIBDEPS = apps/base/perl

DESCRIPTION = Write Perl subroutines in C

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = echo y |   
BUILD_ARGS =  

include ../category.mk

