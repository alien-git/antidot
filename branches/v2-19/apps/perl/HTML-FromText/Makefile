GARNAME = HTML-FromText
GARVERSION = 2.05
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

PATCHFILES = 01_features.t.patch 02_v2.01.t.patch

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/C/CW/CWEST/

LIBDEPS = apps/perl/Email-Find apps/perl/Exporter-Lite apps/perl/HTML-Parser

DESCRIPTION = Mark up text as HTML
LICENSE  = Perl
AUTHOR   = Casey West and Gareth Rees
URL = http://search.cpan.org/~cwest/
 
CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

include ../category.mk

