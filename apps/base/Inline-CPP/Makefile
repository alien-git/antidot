GARNAME = Inline-CPP
GARVERSION = 0.25
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/N/NE/NEILW/ http://www.cpan.org/authors/id/N/NE/NEILW/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/N/NE/NEILW/

LIBDEPS = apps/base/perl apps/base/Inline

DESCRIPTION = Easy implementation of C++ extensions

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = yes |  
BUILD_ARGS =  

include ../category.mk

