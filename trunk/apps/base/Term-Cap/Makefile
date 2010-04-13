GARNAME = Term-Cap
GARVERSION = 1.12
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://search.cpan.org/CPAN/authors/id/J/JS/JSTOWE/Term-Cap-1.12.tar.gz
MASTER_SITES = $(CPAN_MIRROR)/authors/id/J/JS/JSTOWE/ http://www.cpan.org/authors/id/J/JS/JSTOWE/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/J/JS/JSTOWE/

LIBDEPS = apps/base/perl

DESCRIPTION = Basic termcap 
AUTHOR = Jonathan Stowe
URL = http://cpan.uwinnipeg.ca/~jstowe
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule Term::Cap $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

