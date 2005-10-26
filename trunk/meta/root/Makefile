GARNAME = alien-meta-root
GARVERSION = 1
CATEGORIES = meta
DISTFILES  =
FILTER_OUT ?= 
FILTER     ?= % 
 
ALL=\
apps/devel/dialog \
apps/root/root

LIBDEPS=$(strip $(filter $(FILTER),$(filter-out $(FILTER_OUT),$(ALL))))

DESCRIPTION = AliEn enabled ROOT 

include ../category.mk

apps/install-%/Makefile:
	@mkdir -p $(COOKIEDIR)/install-$*
	@$(MAKECOOKIE)

list_packages:
	@echo $(LIBDEPS)

