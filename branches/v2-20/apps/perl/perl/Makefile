GARNAME = perl
GARVERSION = 5.10.1
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

PATCHFILES = locale.t.diff ubuntu.patch

MASTER_SITES = http://ftp.funet.fi/pub/CPAN/src/  http://www.cpan.org/src/

LIBDEPS = apps/gcc/gcc

DESCRIPTION = The Perl interpreter
AUTHOR = Larry Wall
URL = http://www.perl.org
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile


CONFIGURE_ARGS = -des -Dprefix=$(PREFIX) -Dinstallprefix=$(PREFIX) -Dusethreads -Duselargefiles -Uafs -Ud_csh -Ud_ualarm -Uusesfio -Uusenm -DDEBUGGING=-g -Doptimize=-O2 -Dinstalldirs=perl -Dccflags="-fPIC" -Dplibpth="$(PREFIX)/lib" -Dldflags="-L$(PREFIX)/lib"

#$(PERL_DIRPATHS) -d -des -Dinstalldirs=perl  -Doptimize="-O" -Dccflags="-fPIC" -Dinstallprefix=$(PREFIX) -Dprefix=$(PREFIX) -Dd_semctl_semun -Di_db -Di_syslog -Dudsedl=yes -Dman3ext=3 -Dusemymalloc=no -DDEBUGGING -Dplibpth="$(PREFIX)/lib" -Dldflags="-L$(PREFIX)/lib" -A append:libswanted=" pthread"

include ../category.mk
