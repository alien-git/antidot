GARNAME = alien-meta-user
GARVERSION = 1
CATEGORIES = meta
DISTFILES  =
FILTER_OUT ?= apps/devel/m4 apps/devel/libtool apps/devel/autoconf apps/devel/automake apps/gcc/gcc apps/base/db apps/base/gdbm apps/base/perl apps/base/HTML-Tagset apps/base/HTML-Parser apps/base/URI apps/base/libwww-perl apps/devel/jdk apps/devel/ant apps/base/globus-toolkit
FILTER     ?= % 

ALL=\
apps/base/eugridpma-carep \
apps/base/alien-ca \
apps/alien/gapi 


LIBDEPS=$(strip $(filter $(FILTER),$(filter-out $(FILTER_OUT),$(ALL))))

DESCRIPTION = AliEn - User components

include ../category.mk

apps/install-%/Makefile:
	@mkdir -p $(COOKIEDIR)/install-$*
	@$(MAKECOOKIE)

list_packages:
	@echo $(LIBDEPS)

