GARNAME = perl
GARVERSION = 5.8.8
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz
PATCHFILES = locale.t.diff swig.diff

UBUNTU = 0

ifneq ($(shell uname -s),Darwin)
	UBUNTU = $(shell cat /etc/*-release | grep -i -c ubuntu)
endif

ifneq ($(UBUNTU), 0)
    PATCHFILES += page.h.patch
endif

MASTER_SITES = http://ftp.funet.fi/pub/CPAN/src/  http://www.cpan.org/src/

LIBDEPS = apps/base/gdbm

DESCRIPTION = The Perl interpreter
AUTHOR = Larry Wall
URL = http://www.perl.org
LICENSE = Perl

CONFIGURE_SCRIPTS = $(WORKSRC)/Configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

TEST_SCRIPTS =

ifneq ($(shell uname -s),Darwin)
        TEST_SCRIPTS += $(WORKSRC)/Makefile
endif


CONFIGURE_ARGS = $(PERL_DIRPATHS) -d -des -Dinstalldirs=perl  -Doptimize="-O" -Dccflags="-fPIC" -Dinstallprefix=$(PREFIX) -Dprefix=$(PREFIX) -Dd_semctl_semun -Di_db -Di_syslog -Dudsedl=yes -Dman3ext=3 -Dusemymalloc=no -DDEBUGGING -Dplibpth="$(PREFIX)/lib $(PREFIX)/lib64" -Dldflags="-L$(PREFIX)/lib -L$(PREFIX)/lib64" -A append:libswanted=" pthread"

include ../category.mk

ifeq ($(PLATFORM),x86_64-unknown-linux-gnu)
CONFIGURE_ARGS += -Dlibpth=" $(PREFIX)/lib $(PREFIX)/lib64 /usr/local/lib64 /lib64 /usr/lib64" 
endif
