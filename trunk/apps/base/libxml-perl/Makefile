GARNAME = libxml-perl
GARVERSION = 0.08
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/K/KM/KMACLEOD/ http://www.cpan.org/authors/id/K/KM/KMACLEOD/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/K/KM/KMACLEOD/

LIBDEPS = apps/base/perl apps/base/XML-Parser

DESCRIPTION = Collection of Perl modules, scripts, and documents for working with XML in Perl
URL = http://perl-xml.sourceforge.net/libxml-perl/
AUTHOR = Ken MacLeod
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

