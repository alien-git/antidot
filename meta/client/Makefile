GARNAME = alien-meta-client
GARVERSION = 1
CATEGORIES = meta
DISTFILES  =
FILTER_OUT ?= 
FILTER     ?= % 
 
ALL=\
apps/base/eugridpma-carep \
apps/base/alien-ca \
apps/alien/classad \
apps/alien/common \
apps/alien/perl \
apps/alien/gapi \
apps/base/Config-ApacheFormat \
apps/base/Term-ReadLine-Gnu 


LIBDEPS=$(strip $(filter $(FILTER),$(filter-out $(FILTER_OUT),$(ALL))))

DESCRIPTION = AliEn - Client components

include ../category.mk

apps/install-%/Makefile:
	@mkdir -p $(COOKIEDIR)/install-$*
	@$(MAKECOOKIE)

list_packages:
	@echo $(LIBDEPS)

list_filtered:
	@echo $(FILTER_OUT)