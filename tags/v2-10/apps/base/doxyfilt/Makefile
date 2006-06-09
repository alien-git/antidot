GARNAME = doxyfilt
GARVERSION = 0.80
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://ftp.stack.nl/pub/users/dimitri/

LIBDEPS = apps/base/perl

DESCRIPTION =  Set of Perl scripts and classes that will process Perl, POD, POD-enabled Perl, and a few other simple formats into Doxygen

URL = http://spugwiki.perlocity.org/index.cgi?DoxyFilt
AUTHOR = Marc Adkins
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = 

CONFIGURE_ARGS = 

include ../category.mk

POST_INSTALL = (cd $(WORKSRC); cp DoxyFilt.pl DoxyLine.pl DoxyFilt DoxyLine DoxyPOD DoxyPerl /$(PREFIX)/bin)
