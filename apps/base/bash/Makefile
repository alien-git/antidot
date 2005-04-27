GARNAME = bash
GARVERSION = 2.05a
CATEGORIES = apps-tools
DISTFILES = $(GARNAME)-$(GARVERSION).tar.gz

MASTER_SITES =  http://alien.cern.ch/cache/ http://ftp.gnu.org/gnu/bash/

LIBDEPS = apps/gcc/gcc

DESCRIPTION = Bash is the GNU shell
AUTHOR = Chet Ramey
URL =  http://www.gnu.org/software/bash/bash.html
LICENSE = GPL2

CONFIGURE_SCRIPTS = $(WORKSRC)/configure 
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = $(WORKSRC)/Makefile

CONFIGURE_ARGS = $(DIRPATHS)
CONFIGURE_ENV  = 

include ../category.mk

