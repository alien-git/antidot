GARNAME = libwww-perl
GARVERSION = 5.64
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/G/GA/GAAS/ http://www.cpan.org/authors/id/G/GA/GAAS/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/G/GA/GAAS/

LIBDEPS = apps/base/Compress-Zlib apps/base/HTML-Parser apps/base/URI

DESCRIPTION = Libwww-perl
URL = http://lwp.linpro.no/lwp/
AUTHOR = Gisle Aas
LICENSE = Perl

AUTOTEST = testForAliEnPerlModule LWP $(GARVERSION )
 
CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ENV = printf "n\n" |
CONFIGURE_ARGS = -n 
BUILD_ARGS =  

include ../category.mk

