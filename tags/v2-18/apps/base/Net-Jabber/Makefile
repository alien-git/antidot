GARNAME = Net-Jabber
GARVERSION = 1.30
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/R/RE/REATMON/ http://www.cpan.org/authors/id/R/RE/REATMON/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/R/RE/REATMON/

LIBDEPS = apps/base/XML-Stream apps/base/Digest-SHA1

DESCRIPTION = Access to the Jabber protocol
AUTHOR = Ryan Eatmon
URL = http://cpan.uwinnipeg.ca/~reatmon
LICENSE = LGPL

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule Net::Jabber $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

PRE_CONFIGURE = (rm -rf $(WORKSRC)/t/2_client.t)
