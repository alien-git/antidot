GARNAME = Email-Find
GARVERSION = 0.10
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/M/MI/MIYAGAWA/

LIBDEPS = apps/perl/Email-Valid

DESCRIPTION = Find RFC 822 email addresses in plain text
AUTHOR = Tatsuhiko Miyagawa
URL = http://cpan.uwinnipeg.ca/~miyagawa
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule Email::Find $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

