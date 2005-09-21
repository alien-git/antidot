GARNAME = perl
GARVERSION = 5.8.7
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.bz2
PATCHFILES = hints_darwin.sh.diff locale.t.diff

MASTER_SITES = http://ftp.funet.fi/pub/CPAN/src/ 

LIBDEPS = apps/base/gdbm

DESCRIPTION = The Perl interpreter
AUTHOR = Larry Wall
URL = http://www.perl.org
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(PERL_DIRPATHS) -d -des -Dinstalldirs=perl  -Doptimize="-O" -Dcccdlflags="-fPIC" -Dinstallprefix=$(PREFIX) -Dprefix=$(PREFIX) -Dd_semctl_semun -Di_db -Di_syslog -Dudsedl=yes -Dman3ext=3 -Dusemymalloc=no -DDEBUGGING -Dplibpth="$(PREFIX)/lib" -A append:libswanted=" pthread"

include ../category.mk
