GARNAME = perl
GARVERSION = 5.18.2
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

#PATCHFILES = locale.t.diff ubuntu.patch
PATCHFILES = ubuntu2.patch testspatch.patch

MASTER_SITES = http://ftp.funet.fi/pub/CPAN/src/  http://www.cpan.org/src/5.0/

LIBDEPS = apps/gcc/gcc

DESCRIPTION = The Perl interpreter
AUTHOR = Larry Wall
URL = http://www.perl.org
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

#POST_INSTALL = (echo y;echo o conf prerequisites_policy follow;echo o conf commit)|cpan


CONFIGURE_ARGS = -des -Dprefix=$(PREFIX) -Dinstallprefix=$(PREFIX) -Di_pthread -Di_math -Duselargefiles -Uafs -Ud_csh -Ud_ualarm -Uusesfio -Uusenm -DDEBUGGING=-g -Doptimize=-O2 -Dinstalldirs=perl -Dccflags="-fPIC" -Dplibpth="$(PREFIX)/lib" -Dldflags="-L$(PREFIX)/lib" -A append:libswanted=" pthread"
#-Dusethreads

#$(PERL_DIRPATHS) -d -des -Dinstalldirs=perl  -Doptimize="-O" -Dccflags="-fPIC" -Dinstallprefix=$(PREFIX) -Dprefix=$(PREFIX) -Dd_semctl_semun -Di_db -Di_syslog -Dudsedl=yes -Dman3ext=3 -Dusemymalloc=no -DDEBUGGING -Dplibpth="$(PREFIX)/lib" -Dldflags="-L$(PREFIX)/lib" -A append:libswanted=" pthread"

include ../category.mk
