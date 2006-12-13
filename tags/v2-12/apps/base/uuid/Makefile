GARNAME = uuid
GARVERSION = 1.5.1
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
#ifeq ($(shell uname -s),Darwin)
#PATCHFILES = macos.diff
#endif

PATCHFILES = osspuuid.diff

MASTER_SITES = ftp://ftp.ossp.org/pkg/lib/uuid/

LIBDEPS = apps/base/perl 

AUTHOR  =  Ralf S. Engelschall
LICENSE = MIT
URL     = http://www.ossp.org/pkg/lib/uuid/

DESCRIPTION = C and Perl API and CLI for the generation of standard UUID

CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/perl/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --includedir=$(PREFIX)/include/ossp --with-perl

include ../category.mk

PRE_INSTALL = (rm -f $(WORKSRC)/Install)
