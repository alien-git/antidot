GARNAME = DateTime
GARVERSION = 0.2901
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/D/DR/DROLSKY/ http://www.cpan.org/authors/id/D/DR/DROLSKY/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/D/DR/DROLSKY/

LIBDEPS = apps/base/DateTime-Locale apps/base/DateTime-TimeZone

BUILDDEPS = apps/base/Module-Build

DESCRIPTION = A complete, easy to use date and time object
URL = http://cpan.uwinnipeg.ca/~drolsky
AUTHOR = Dave Rolsky

AUTOTEST = testForAliEnPerlModule DateTime $(GARVERSION )

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

