GARNAME = all
GARVERSION = 1
CATEGORIES = meta
DISTFILES  =
FILTER_OUT ?= 
FILTER     ?= % 
 
ALL=$(shell (cd $(GARDIR)/apps; make listdeps))

LIBDEPS=$(strip $(filter $(FILTER),$(filter-out $(FILTER_OUT),$(ALL))))

DESCRIPTION = AliEn

include ../category.mk

apps/install-%/Makefile:
	@mkdir -p $(COOKIEDIR)/install-$*
	@$(MAKECOOKIE)

list_packages:
	@echo $(LIBDEPS)