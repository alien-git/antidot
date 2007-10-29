GARNAME = HTML-FromText
GARVERSION = 2.05
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/C/CW/CWEST/ http://www.cpan.org/authors/id/C/CW/CWEST/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/C/CW/CWEST/

LIBDEPS = apps/base/Email-Find apps/base/Exporter-Lite apps/base/HTML-Parser

DESCRIPTION = Mark up text as HTML
LICENSE  = Perl
AUTHOR   = Casey West and Gareth Rees
URL = http://search.cpan.org/~cwest/
 
AUTOTEST = testForAliEnPerlModule HTML::FromText $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

