GARNAME = alien-meta-wn
GARVERSION = 1
CATEGORIES = meta
DISTFILES  =
FILTER_OUT ?= apps/server/mysql
FILTER     ?= % 
 
ALL=\
apps/alien/alien-ca \
apps/alien/classad \
apps/alien/common \
apps/alien/gapi \
apps/tools/aria2 \
apps/alien/lcg/ \
apps/tools/xrootd-shellcmds \
apps/tools/xrootd-xrdcpapmonplugin

LIBDEPS=$(strip $(filter $(FILTER),$(filter-out $(FILTER_OUT),$(ALL))))

DESCRIPTION = AliEn - Worker Node components

include ../category.mk

apps/install-%/Makefile:
	@mkdir -p $(COOKIEDIR)/install-$*
	@$(MAKECOOKIE)

list_packages:
	@echo $(LIBDEPS)
	
list_filtered:
	@echo $(FILTER_OUT)
