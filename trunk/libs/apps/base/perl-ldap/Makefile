GARNAME = perl-ldap
GARVERSION = 0.32
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/G/GB/GBARR/ http://www.cpan.org/authors/id/G/GB/GBARR/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/G/GB/GBARR/

LIBDEPS = apps/base/perl apps/base/XML-Parser apps/base/IO-Socket-SSL apps/base/XML-SAX-Base apps/base/ExtUtils-AutoInstall

DESCRIPTION = Interface to LDAP Protocol (RFC1777)

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = printf "\n" |  
BUILD_ARGS =  

include ../category.mk

