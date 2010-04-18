GARNAME = Compress-Raw-Bzip2
GARVERSION = 2.026
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://search.cpan.org/CPAN/authors/id/P/PM/PMQS/Compress-Raw-Bzip2-2.026.tar.gz
MASTER_SITES = http://search.cpan.org/CPAN/authors/id/P/PM/PMQS/

LIBDEPS = apps/base/perl apps/base/zlib

DESCRIPTION = Compress-Raw-Bzip2 provides the interface to the bzip2 library for the modules IO::Compress::Bzip2 and IO::Compress::Bunzip2.
AUTHOR =  Paul Marquess
URL = http://search.cpan.org/~pmqs/Compress-Raw-Bzip2-2.026/
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

#CONFIGURE_ARGS =  LIBS="-L$(PREFIX)/lib -L$(PREFIX)/lib64" INC="-I$(PREFIX)/include"

BUILD_ARGS =  

include ../category.mk

