GARNAME = perl-ldap
GARVERSION = 0.32
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/G/GB/GBARR/ http://www.cpan.org/authors/id/G/GB/GBARR/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/G/GB/GBARR/

LIBDEPS = apps/base/XML-Parser apps/base/IO-Socket-SSL apps/base/XML-SAX-Base apps/base/ExtUtils-AutoInstall apps/base/Convert-ASN1

DESCRIPTION = Interface to LDAP Protocol (RFC1777)
URL = http://ldap.perl.org/
AUTHOR = Graham Barr
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = printf "\n" |  
BUILD_ARGS =  

include ../category.mk

