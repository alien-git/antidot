GARNAME = libwww-perl
GARVERSION = 6.04
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/G/GA/GAAS/ http://backpan.perl.org/authors/id/G/GA/GAAS/

LIBDEPS = apps/perl/URI apps/perl/LWP-MediaTypes apps/perl/Encode-Locale apps/perl/HTTP-Message apps/perl/File-Listing apps/perl/HTTP-Negotiate apps/perl/HTTP-Daemon apps/perl/Net-HTTP apps/perl/HTTP-Cookies apps/perl/WWW-RobotRules

DESCRIPTION = Libwww-perl
URL = http://lwp.linpro.no/lwp/
AUTHOR = Gisle Aas
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

include ../category.mk

