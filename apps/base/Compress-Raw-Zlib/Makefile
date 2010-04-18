GARNAME = Compress-Raw-Zlib
GARVERSION = 2.026
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://search.cpan.org/CPAN/authors/id/P/PM/PMQS/Compress-Raw-Bzip2-2.026.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/P/PM/PMQS/

LIBDEPS = apps/base/perl apps/base/zlib

DESCRIPTION = Compress-Raw-Zlib provides the interface to the zlib library for the modules IO::Compress::Zlib and IO::Compress::Zlib.
AUTHOR =  Paul Marquess
URL = http://search.cpan.org/~pmqs/Compress-Raw-Zlib-2.026/
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

#CONFIGURE_ARGS =  LIBS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" INC="-I$(PREFIX)/include"

BUILD_ARGS =  

include ../category.mk

