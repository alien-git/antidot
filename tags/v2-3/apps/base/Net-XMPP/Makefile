GARNAME = Net-XMPP
GARVERSION = 1.0
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/R/RE/REATMON/ http://www.cpan.org/authors/id/R/RE/REATMON/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/R/RE/REATMON/

LIBDEPS = apps/base/XML-Stream

DESCRIPTION = XMPP Perl Library
AUTHOR = Ryan Eatmon 
URL = http://cpan.uwinnipeg.ca/~reatmon
LICENSE = 

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule Net::XMPP $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

PRE_CONFIGURE = (rm -f $(WORKSRC)/t/2_client_jabberd1.4.t)