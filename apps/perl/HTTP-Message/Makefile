GARNAME = HTTP-Message
GARVERSION = 6.06
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/G/GA/GAAS/

LIBDEPS = apps/perl/LWP-MediaTypes apps/perl/Encode-Locale apps/perl/URI apps/perl/HTTP-Date apps/perl/HTML-Parser apps/perl/IO-HTML

DESCRIPTION = HTTP-Message
URL = http://lwp.linpro.no/lwp/
AUTHOR = Gisle Aas
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

include ../category.mk

