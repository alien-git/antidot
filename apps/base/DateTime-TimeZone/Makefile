GARNAME = DateTime-TimeZone
GARVERSION = 0.39
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/D/DR/DROLSKY/ http://www.cpan.org/authors/id/D/DR/DROLSKY/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/D/DR/DROLSKY/

LIBDEPS = apps/base/Class-Singleton apps/base/Params-Validate
BUILDDEPS = apps/base/Module-Build 

DESCRIPTION = Time zone object base class and factory
AUTHOR = Dave Rolsky
URL = http://cpan.uwinnipeg.ca/~drolsky
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Build.PL
BUILD_SCRIPTS = $(WORKSRC)/Build
INSTALL_SCRIPTS = $(WORKSRC)/Build
TEST_SCRIPTS = $(WORKSRC)/Build

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

