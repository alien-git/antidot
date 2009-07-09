GARNAME = alien-meta-gshell
GARVERSION = 1
CATEGORIES = meta
DISTFILES  =
FILTER_OUT ?= 
FILTER     ?= % 
 
ALL=\
apps/alien/gapi   \
apps/base/xrootd-xrdcpapmonplugin  \
apps/base/alien-ca \
apps/base/eugridpma-carep \
apps/base/Linux-PAM \
apps/base/cyrus-sasl \
apps/base/uuid

LIBDEPS=$(strip $(filter $(FILTER),$(filter-out $(FILTER_OUT),$(ALL))))

DESCRIPTION = AliEn Grid Shell

include ../category.mk

apps/install-%/Makefile:
	@mkdir -p $(COOKIEDIR)/install-$*
	@$(MAKECOOKIE)

list_packages:
	@echo $(LIBDEPS)
