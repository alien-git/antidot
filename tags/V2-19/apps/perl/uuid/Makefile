GARNAME = uuid
GARVERSION = 1.6.2
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

PATCHFILES = osspuuid.diff

MASTER_SITES = ftp://ftp.ossp.org/pkg/lib/uuid/

LIBDEPS = apps/perl/perl 

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

