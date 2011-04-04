GARNAME = pcre
#1.3.39
GARVERSION = 8.12
CATEGORIES = tools-devel
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

BININSTALL_IGNORE = true

#ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.12.tar.gz
MASTER_SITES = ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/

LIBDEPS = apps/gcc/gcc apps/devel/libtool apps/devel/automake apps/devel/autoconf

DESCRIPTION = regular expression pattern matching using the same syntax and semantics as Perl 5
URL = http://www.pcre.org/
LICENSE = BSD LICENCE
AUTHOR = http://www.pcre.org/

CONFIGURE_SCRIPTS = $(WORKSRC)/configure
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = --prefix=$(PREFIX)

include ../category.mk
