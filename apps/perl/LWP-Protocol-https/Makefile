GARNAME = LWP-Protocol-https
GARVERSION = 6.03
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = http://search.cpan.org/CPAN/authors/id/G/GA/GAAS/ http://backpan.perl.org/authors/id/G/GA/GAAS/

LIBDEPS = apps/perl/IO-Socket-SSL apps/perl/libwww-perl apps/perl/Mozilla-CA apps/perl/Net-HTTP

DESCRIPTION = LWP-Protocol-https
URL = http://lwp.linpro.no/lwp/
AUTHOR = Gisle Aas
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

include ../category.mk

