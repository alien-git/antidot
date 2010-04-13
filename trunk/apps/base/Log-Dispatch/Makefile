GARNAME = Log-Dispatch
GARVERSION = 2.26
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#http://search.cpan.org/CPAN/authors/id/D/DR/DROLSKY/Log-Dispatch-2.26.tar.gz
MASTER_SITES = http://cpan.mirror.solnet.ch/authors/id/D/DR/DROLSKY/

LIBDEPS = apps/base/perl

BUILDDEPS = apps/base/Module-Build

DESCRIPTION = Log4j implementation in Perl
AUTHOR = Dave Rolsky
URL = http://search.cpan.org/~drolsky/
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Build.PL
BUILD_SCRIPTS = $(WORKSRC)/Build
INSTALL_SCRIPTS = $(WORKSRC)/Build
TEST_SCRIPTS = $(WORKSRC)/Build

AUTOTEST =

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk
