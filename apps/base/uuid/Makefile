GARNAME = uuid
GARVERSION = 1.1.2
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = ftp://ftp.ossp.org/pkg/lib/uuid/

LIBDEPS = apps/base/perl 

AUTHOR  =  Ralf S. Engelschall
LICENSE = MIT
URL     = http://www.ossp.org/pkg/lib/uuid/

DESCRIPTION = C and Perl API and CLI for the generation of standard UUIDs

CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/perl/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX) --with-perl

include ../category.mk

 
