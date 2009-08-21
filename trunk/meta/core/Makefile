GARNAME = alien-core
GARVERSION = 1
CATEGORIES = meta
DISTFILES  =
FILTER_OUT ?= 
FILTER     ?= % 
 
ALL=\
apps/devel/dialog \
apps/base/eugridpma-carep \
apps/alien/classad \
apps/alien/common \
apps/base/alien-ca \
apps/alien/perl \
apps/alien/gapi \
apps/alien/admin \
apps/server/mysql \
apps/server/DBD-mysql \
apps/server/openldap \
apps/base/Authen-PAM \
apps/monitor/MonaLisa

LIBDEPS=$(strip $(filter $(FILTER),$(filter-out $(FILTER_OUT),$(ALL))))

DESCRIPTION = AliEn - core services

include ../category.mk

apps/install-%/Makefile:
	@mkdir -p $(COOKIEDIR)/install-$*
	@$(MAKECOOKIE)

list_packages:
	@echo $(LIBDEPS)

list_filtered:
	@echo $(FILTER_OUT)