GARNAME = bzip2
GARVERSION = 1.0.5
CATEGORIES = apps-libs
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

PATCHFILES = Makefile.patch Makefile-libbz2.patch

MASTER_SITES =  http://www.bzip.org/1.0.5/

LIBDEPS = apps/gcc/gcc

DESCRIPTION = bzip2 is a freely available, patent free (see below), high-quality data compressor. 
URL = http://www.bzip.org
AUTHOR =  julian@bzip.org
LICENSE = bzip2

INSTALL_SCRIPTS = $(WORKSRC)/Makefile
TEST_SCRIPTS = $(WORKSRC)/Makefile

INSTALL_ARGS = PREFIX=$(PREFIX)

include ../category.mk

POST_INSTALL = (cd $(WORKSRC) && make -f Makefile-libbz2_so PREFIX=$(PREFIX))
