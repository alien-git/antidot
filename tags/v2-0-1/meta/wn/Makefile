GARNAME = wn
GARVERSION = 1
CATEGORIES = meta
DISTFILES  =
FILTER_OUT ?= 
FILTER     ?= % 
 
ALL=\
apps/devel/dialog \
apps/base/eugridpma-carep \
apps/glite/glite \
apps/glite/glite-data \
apps/glite/data-io-quanta \
apps/glite/data-io-gss-auth \
apps/glite/data-io-base \
apps/glite/data-config-service \
apps/alien/classad \
apps/alien/rls \
apps/alien/srm \
apps/alien/gas \
apps/alien/common \
apps/alien/gssapi \
apps/alien/packman \
apps/alien/perl \
apps/alien/apiservice

LIBDEPS=$(strip $(filter $(FILTER),$(filter-out $(FILTER_OUT),$(ALL))))

DESCRIPTION = AliEn

include ../category.mk

apps/install-%/Makefile:
	@mkdir -p $(COOKIEDIR)/install-$*
	@$(MAKECOOKIE)

list_packages:
	@echo $(LIBDEPS)