GARNAME = alien-meta-site
GARVERSION = 1
CATEGORIES = meta
DISTFILES  =
FILTER_OUT ?= 
FILTER     ?= % 
 
ALL=\
apps/alien/admin \
apps/portal/mod_perl \
apps/base/Config-ApacheFormat \
apps/base/Term-ReadLine-Gnu \
apps/base/eugridpma-carep \
apps/base/alien-ca \
apps/alien/classad \
apps/alien/common \
apps/alien/perl \
apps/alien/gapi

LIBDEPS=$(strip $(filter $(FILTER),$(filter-out $(FILTER_OUT),$(ALL))))

DESCRIPTION = AliEn - Site services

include ../category.mk

apps/install-%/Makefile:
	@mkdir -p $(COOKIEDIR)/install-$*
	@$(MAKECOOKIE)

list_packages:
	@echo $(LIBDEPS)
