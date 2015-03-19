GARNAME = DBD-Oracle
GARVERSION = 1.26
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/P/PY/PYTHIAN/


LIBDEPS = apps/perl/DBI apps/system/oracle-instantclient-basic apps/system/oracle-instantclient-sdk apps/system/oracle-instantclient-sqlplus

DESCRIPTION = Oracle database driver for the DBI module
AUTHOR = Tim Bunce
URL = http://search.cpan.org/~timb/
LICENSE = Perl

CONFIGURE_ENV = env ORACLE_HOME=$(PREFIX)/oracle LD_LIBRARY_PATH=$(LD_LIBRARY_PATH):$(PREFIX)/oracle DYLD_LIBRARY_PATH=$(DYLD_LIBRARY_PATH):$(PREFIX)/oracle

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

