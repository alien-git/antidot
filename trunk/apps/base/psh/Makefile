GARNAME = psh
GARVERSION = 1.8
CATEGORIES = apps-perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES =  http://search.cpan.org/CPAN/authors/id/G/GR/GREGOR/

LIBDEPS = apps/base/Term-ReadLine-Gnu apps/base/BSD-Resource

DESCRIPTION = Bash is the GNU shell
AUTHOR = Gregor N. Pudry
URL = http://search.cpan.org/~gregor/  
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =
CONFIGURE_ENV  = 

include ../category.mk

