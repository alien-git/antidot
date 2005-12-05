GARNAME = DBD-LDAP
GARVERSION = 0.07
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/T/TU/TURNERJW/

LIBDEPS = apps/base/perl-ldap

DESCRIPTION = DBI driver providing an SQL interface to Ldap databases
AUTHOR = Jim Turner
URL = http://search.cpan.org/~turnerjw
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule DBD::LDAP $(GARVERSION)

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

