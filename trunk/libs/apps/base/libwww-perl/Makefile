GARNAME = libwww-perl
GARVERSION = 5.803
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/G/GA/GAAS/ http://www.cpan.org/authors/id/G/GA/GAAS/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/G/GA/GAAS/

LIBDEPS = apps/base/perl apps/base/Compress-Zlib apps/base/HTML-Parser apps/base/URI

DESCRIPTION = Libwww-perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = printf "n\n" |
CONFIGURE_ARGS = -n 
BUILD_ARGS =  

include ../category.mk

