GARNAME = alien-meta-client
GARVERSION = 1
CATEGORIES = meta
DISTFILES  =
FILTER_OUT ?= 
FILTER     ?= % 
 
ALL=\
apps/devel/dialog \
apps/devel/glite \
apps/base/eugridpma-carep \
apps/alien/classad \
apps/alien/rls \
apps/alien/srm \
apps/alien/gas \
apps/alien/common \
apps/alien/gssapi \
apps/alien/perl \
apps/alien/api

LIBDEPS=$(strip $(filter $(FILTER),$(filter-out $(FILTER_OUT),$(ALL))))

DESCRIPTION = AliEn - Client components

include ../category.mk

apps/install-%/Makefile:
	@mkdir -p $(COOKIEDIR)/install-$*
	@$(MAKECOOKIE)

list_packages:
	@echo $(LIBDEPS)

