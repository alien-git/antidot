GARNAME = perl
GARVERSION = 5.8.6
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.bz2

MASTER_SITES = http://ftp.funet.fi/pub/CPAN/src/ 

LIBDEPS = apps/base/gcc apps/base/db apps/base/openssl

DESCRIPTION = GNU Autoconf

CONFIGURE_SCRIPTS = $(WORKSRC)/Configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(PERL_DIRPATHS) -d -des -DPERL_OLD_SIGNALS -Darchname=$(HOSTTYPE) -Dinstalldirs=perl  -Doptimize="-O" -Dcccdlflags=-fPIC -Dinstallprefix=$(PREFIX) -Dprefix=$(PREFIX) -Dd_semctl_semun -Di_db -Di_syslog -Dudsedl=yes -Dman3ext=3 -Dusemymalloc=no -DDEBUGGING -Dlibpth="/lib /usr/lib" 

#ifeq ($(shell uname),Darwin)
# CONFIGURE_ARGS += -Dlddlflags="-dylib -undefined dynamic_lookup -single_module" -Ddlext=dylib 
#endif
 
include ../category.mk
