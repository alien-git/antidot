GARNAME = IO-Compress
GARVERSION = 2.026
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://search.cpan.org/CPAN/authors/id/P/PM/PMQS/IO-Compress-2.026.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/P/PM/PMQS/

LIBDEPS = apps/base/perl apps/base/zlib apps/base/Scalar-List-Utils apps/base/Compress-Raw-Bzip2 apps/base/Compress-Raw-Zlib

DESCRIPTION =  This distribution provides a Perl interface to allow reading and writing of compressed data created with the zlib and bzip2 libraries.
AUTHOR =  Paul Marquess
URL = http://search.cpan.org/~pmqs/IO-Compress-2.026/
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

#CONFIGURE_ARGS =  LIBS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" INC="-I$(PREFIX)/include"

BUILD_ARGS =  

include ../category.mk

