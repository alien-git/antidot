GARNAME = Net-XMPP
GARVERSION = 1.02
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/H/HA/HACKER/

LIBDEPS = apps/base/XML-Stream

DESCRIPTION = XMPP Perl Library
AUTHOR = Eric Hacker
URL = http://search.cpan.org/~hacker/
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = 

CONFIGURE_ARGS =  
BUILD_ARGS =  
INSTALL_ENV = env PREFIX=

include ../category.mk

PRE_CONFIGURE = (rm -f $(WORKSRC)/t/2_client_jabberd1.4.t)