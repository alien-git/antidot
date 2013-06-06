GARNAME = perl-ldap
GARVERSION = 0.53
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

PATCHFILES = Makefile.PL.patch

MASTER_SITES =  http://search.cpan.org/CPAN/authors/id/M/MA/MARSCHAP/

LIBDEPS = apps/perl/Convert-ASN1 apps/perl/XML-SAX-Writer apps/perl/IO-Socket-SSL apps/perl/JSON apps/perl/libwww-perl

DESCRIPTION = Interface to LDAP Protocol (RFC1777)
URL = http://ldap.perl.org/
AUTHOR = Graham Barr
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

#CONFIGURE_ENV = printf "\n" |  
BUILD_ARGS =  

include ../category.mk

