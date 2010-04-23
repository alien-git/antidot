GARNAME = Net-Daemon
GARVERSION = 0.43
CATEGORIES = perl
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
DISTNAME = $(GARNAME)

PATCHFILES = server.patch

MASTER_SITES =  http://search.cpan.org/CPAN/authors/id/M/MN/MNOONING/Net-Daemon/ 

LIBDEPS = apps/base/perl apps/base/IO

DESCRIPTION = Abstract base class for portable servers
AUTHOR = Jochen Wiedmann
URL = http://cpan.uwinnipeg.ca/~jwied
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

include ../category.mk
