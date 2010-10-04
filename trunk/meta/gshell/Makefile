GARNAME = alien-meta-gshell
GARVERSION = 1
CATEGORIES = meta
DISTFILES  =
FILTER_OUT ?= 
FILTER     ?= % 
 
ALL=\
apps/alien/gapi   \
apps/tools/xrootd-xrdcpapmonplugin  \
apps/alien/alien-ca \
apps/tools/eugridpma-carep \
apps/system/Linux-PAM \
apps/tools/cyrus-sasl \
apps/perl/uuid

LIBDEPS=$(strip $(filter $(FILTER),$(filter-out $(FILTER_OUT),$(ALL))))

DESCRIPTION = AliEn Grid Shell

include ../category.mk

apps/install-%/Makefile:
	@mkdir -p $(COOKIEDIR)/install-$*
	@$(MAKECOOKIE)

list_packages:
	@echo $(LIBDEPS)

list_filtered:
	@echo $(FILTER_OUT)