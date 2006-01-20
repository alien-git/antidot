GARNAME = XML-DOM
GARVERSION = 1.44
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/T/TJ/TJMATHER/ http://www.cpan.org/authors/id/T/TJ/TJMATHER/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/T/TJ/TJMATHER/

LIBDEPS = apps/base/libwww-perl apps/base/libxml-perl apps/base/XML-RegExp

DESCRIPTION = Implements Level 1 of W3 DOM
AUTHOR = T.J. Mather
URL = http://cpan.uwinnipeg.ca/~tjmather
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule XML::DOM $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

