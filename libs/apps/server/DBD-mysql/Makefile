GARNAME = DBD-mysql
GARVERSION = 2.9004
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/R/RU/RUDY/ http://www.cpan.org/authors/id/R/RU/RUDY/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/R/RU/RUDY/

LIBDEPS = apps/base/perl apps/server/mysql

DESCRIPTION = MySQL driver for DBI

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

