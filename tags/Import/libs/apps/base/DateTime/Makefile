GARNAME = DateTime
GARVERSION = 0.25
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/D/DR/DROLSKY/ http://www.cpan.org/authors/id/D/DR/DROLSKY/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/D/DR/DROLSKY/

LIBDEPS = apps/base/perl apps/base/Module-Build apps/base/DateTime-Locale apps/base/DateTime-TimeZone apps/base/Params-Validate

DESCRIPTION = A complete, easy to use date and time object

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS =  
BUILD_ARGS =  

include ../category.mk

