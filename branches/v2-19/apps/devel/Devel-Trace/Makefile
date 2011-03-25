GARNAME = Devel-Trace
GARVERSION = 0.10
CATEGORIES = perl-devel
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES = $(CPAN_MIRROR)/authors/id/M/MJ/MJD/ http://www.cpan.org/authors/id/M/MJ/MJD/ ftp://sunsite.cnlab-switch.ch/mirror/CPAN/authors/id/M/MJ/MJD/

LIBDEPS = apps/perl/perl

DESCRIPTION = Print out each line before it is executed 
URL = http://cpan.uwinnipeg.ca/~mjd
AUTHOR = Mark Jason Dominus 
LICENSE =

CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile.PL
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

AUTOTEST = testForAliEnPerlModule Devel::Trace $(GARVERSION)

TEST_ENV = printf "\n" |

BUILD_ARGS =  

include ../category.mk

