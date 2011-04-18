#-*- mode: Fundamental; tab-width: 4; -*-
# ex:ts=4
# $Id$

# Copyright (C) 2001 Nick Moffitt
#
# Redistribution and/or use, with or without modification, is
# permitted.  This software is without warranty of any kind.  The
# author(s) shall not be liable in the event that use of the
# software causes damage.


# Comment this out to make much verbosity
#.SILENT:

#ifeq ($(origin GARDIR), undefined)
#GARDIR := $(CURDIR)/../..
#endif

DISTNAME    ?= $(GARNAME)-$(GARVERSION)
  
INTERFACE_VERSION = $(shell echo $(subst _,.,$(GARVERSION)) | awk -F'.' '{printf("%0d.%0d.%0d\n",$$1,$$2,$$3)}')

GARDIR ?= ../..
FILEDIR ?= files
DOWNLOADDIR ?= download
COOKIEDIR ?= cookies
WORKDIR ?= work
WORKSRC ?= $(WORKDIR)/$(DISTNAME)
EXTRACTDIR ?= $(WORKDIR)
SCRATCHDIR ?= tmp
CHECKSUM_FILE ?= checksums
MANIFEST_FILE ?= manifest
MAKEFILE = Makefile
INSTALL_TARGET ?= install

DIRSTODOTS = $(subst . /,./,$(patsubst %,/..,$(subst /, ,/$(1))))
ROOTFROMDEST = $(call DIRSTODOTS,$(DESTDIR))

ALLFILES    = $(DISTFILES) $(PATCHFILES)

GARFNAME=$(shell (echo $(CURDIR) | sed -e 's%.*/apps/%apps/%' -e 's%.*/meta/%meta/%'))

# Current build number for this package
PKG_BUILD_NUMBER=$(shell if test ! -f $(GARDIR)/BUILD_NUMBERS ; then touch $(GARDIR)/BUILD_NUMBERS ; fi ; grep $(GARFNAME)= $(GARDIR)/BUILD_NUMBERS | cut -f 2 -d= )

# Current BINDIST-NAMES and -FILES
BINDISTNAME=$(GARNAME)-$(GARVERSION)$(shell if test -n "$(PKG_BUILD_NUMBER)" ; then echo "_" ; fi)$(PKG_BUILD_NUMBER)_$(PLATFORM)
BINDISTFILES=$(BINDISTNAME).tar.bz2

# These are used for make cache -> if the is rebuilt, the binary will have its build number increased by one
ifeq ($(PKG_BUILD_NUMBER),)
	NEW_PKG_BUILD_NUMBER=1
else
	NEW_PKG_BUILD_NUMBER=$(shell expr 1 + $(PKG_BUILD_NUMBER))
endif
NEW_BINDISTNAME=$(GARNAME)-$(GARVERSION)_$(NEW_PKG_BUILD_NUMBER)_$(PLATFORM)
NEW_BINDISTFILES=$(NEW_BINDISTNAME).tar.bz2

ifeq ($(CATEGORIES),meta)
  BINDISTFILES=
endif

ifeq ($(CATEGORIES),source-only)
  BINDISTFILES=
endif

ifneq ($(CATEGORIES),perl)
  NORELOCATE=$(BINDISTFILES)
endif

MYNAME ?= $(shell basename $(GARFNAME))

# Several variables depend on the target architecture

GARUNAME_S=$(shell uname -s | sed -e 's/ *//g')
GARUNAME_M=$(shell uname -m | sed -e 's/ *//g')

include $(wildcard $(GARDIR)/platform/$(GARUNAME_S).mk $(GARDIR)/platform/$(GARUNAME_S).$(GARUNAME_M).mk $(GARDIR)/platform/$(shell $(GARDIR)/config.guess).mk)

ifneq ($(wildcard $(GARDIR)/alien.conf.mk),)
  include $(GARDIR)/alien.conf.mk
endif

MASKED += $(shell $(GARDIR)/autodetect.sh $(PREFIX) $(shell pwd)) 

ifeq ($(GARFNAME)=,$(findstring $(GARFNAME)=,$(MASKED)))
DISTFILES := 
CONFIGURE_SCRIPTS :=
BUILD_SCRIPTS :=
INSTALL_SCRIPTS :=
TEST_SCRIPTS :=
#LIBDEPS :=
#BUILDDEPS :=
#SOURCEDEPS :=
BINDISTFILES :=
PATCHFILES :=
ALLFILES := 
endif

INSTALL_DIRS = $(addprefix $(DESTDIR),$(BUILD_PREFIX) $(prefix) $(exec_prefix) $(bindir) $(sbindir) $(libexecdir) $(datadir) $(sysconfdir) $(sharedstatedir) $(localstatedir) $(libdir) $(infodir) $(lispdir) $(includedir) $(mandir) $(foreach NUM,1 2 3 4 5 6 7 8, $(mandir)/man$(NUM)) $(sourcedir))

# These are bad, since exporting them mucks up the dep rules!
# WORKSRC is added in manually for the manifest rule.
#export GARDIR FILEDIR DOWNLOADDIR COOKIEDIR WORKDIR WORKSRC EXTRACTDIR
#export SCRATCHDIR CHECKSUM_FILE MANIFEST_FILE

# For rules that do nothing, display what dependencies they
# successfully completed
DONADA = @echo "	[$(call TMSG_ACTION,$@)] complete for $(call TMSG_ID,$(GARNAME))."

# TODO: write a stub rule to print out the name of a rule when it
# *does* do something, and handle indentation intelligently.

# Default sequence for "all" is:  fetch checksum extract patch configure build
all: build
	$(DONADA)

# include the configuration file to override any of these variables

include $(GARDIR)/gar.conf.mk
include $(GARDIR)/gar.lib.mk
include $(GARDIR)/color.mk

ifdef BUILD_CLEAN
DO_BUILD_CLEAN = buildclean
else
DO_BUILD_CLEAN =
endif


# some packages use DESTDIR, but some use other methods.  For the
# rules that *we* write, the DESTDIR will be transparently added.
#  These need to happen after gar.conf.mk, as they use the := to
#  set the vars.
# NOTE: removed due to
# http://gar.lnx-bbc.org/wiki/ImplicitDestdirConsideredHarmful
#%-install: prefix := $(DESTDIR)$(prefix)
#install-none: prefix := $(DESTDIR)$(prefix)

#################### DIRECTORY MAKERS ####################

# This is to make dirs as needed by the base rules
$(sort $(DOWNLOADDIR) $(COOKIEDIR) $(WORKSRC) $(WORKDIR) $(EXTRACTDIR) $(FILEDIR) $(SCRATCHDIR) $(INSTALL_DIRS)) $(COOKIEDIR)/%:
	@if test -d $@; then : ; else \
		install -d $@; \
	fi

# These stubs are wildcarded, so that the port maintainer can
# define something like "pre-configure" and it won't conflict,
# while the configure target can call "pre-configure" safely even
# if the port maintainer hasn't defined it.
#
# in addition to the pre-<target> rules, the maintainer may wish
# to set a "pre-everything" rule, which runs before the first
# actual target.
pre-%:
	@true

post-%:
	@true

# Call any arbitrary rule recursively
deep-%: %
	@for i in $(LIBDEPS) $(DEPENDS) $(BUILDDEPS); do \
		$(MAKE) -C $(GARDIR)/$$i $@; \
	done

show-unique-deps:
	@myseen="$(SEEN)" ; \
	for pack in $(LIBDEPS) $(BUILDDEPS); do \
	  if test -z "`echo \" $$myseen \" | grep \" $$pack \"`" ; then \
	     myseen="`$(MAKE) -s -C $(GARDIR)/$$pack SEEN=\"$$myseen\" show-unique-deps`" ; \
	  fi ; \
	done ; \
	myfilterout="$(FILTER_OUT)" ; \
	if [ "x$$myfilterout" != "x" ] ; then \
	    myfilterout="`echo \"$$myfilterout\" | tr ' ' '|'`" ; \
	    myseen="`echo \"$$myseen\" | sed -r \"s#$$myfilterout##g\"`" ; \
	fi ; \
	echo -n "$$myseen " ; \
	if test -n "`echo $(GARFNAME) | grep -E -e ^apps/`" ; then \
	   echo $(GARFNAME) ; \
	fi 

# ========================= MAIN RULES =========================
# The main rules are the ones that the user can specify as a
# target on the "make" command-line.  Currently, they are:
#	fetch-list fetch checksum makesum extract checkpatch patch
#	build install reinstall uninstall package
# (some may not be complete yet).
#
# Each of these rules has dependencies that run in the following
# order:
# 	- run the previous main rule in the chain (e.g., install
# 	  depends on build)
#	- run the pre- rule for the target (e.g., configure would
#	  then run pre-configure)
#	- generate a set of files to depend on.  These are typically
#	  cookie files in $(COOKIEDIR), but in the case of fetch are
#	  actual downloaded files in $(DOWNLOADDIR)
# 	- run the post- rule for the target
#
# The main rules also run the $(DONADA) code, which prints out
# what just happened when all the dependencies are finished.

$(MAKEFILE):
	@echo "[$(call TMSG_BRIGHT,=====) $(call TMSG_ACTION,NOW BUILDING):	 $(MAKEFILE))	$(call TMSG_BRIGHT,=====)]"

$(CHECKSUM_FILE):
	@echo "[$(call TMSG_BRIGHT,=====) $(call TMSG_ACTION,NOW BUILDING):	 $(CHECKSUM_FILE)	$(call TMSG_BRIGHT,=====)]"

announce:
	@echo "[$(call TMSG_BRIGHT,=====) $(call TMSG_ACTION,NOW BUILDING):	 $(call TMSG_ID,$(DISTNAME))	$(call TMSG_BRIGHT,=====)]"

# fetch-list	- Show list of files that would be retrieved by fetch.
# NOTE: DOES NOT RUN pre-everything!
fetch-list:
	@echo "Distribution files: "
	@for i in $(DISTFILES); do echo "	$$i"; done
	@echo "Patch files: "
	@for i in $(PATCHFILES); do echo "	$$i"; done
	@echo "Binary packages: "
	@for i in $(BINDISTFILES); do echo "	$$i"; done

# showdeps		- Show dependencies in a tree-structure
showdeps:
	@for i in $(LIBDEPS) $(BUILDDEPS); do \
		echo -e "$(TABLEVEL)$$i";\
		$(MAKE) -s -C $(GARDIR)/$$i TABLEVEL="$(TABLEVEL)\t" showdeps;\
	done

showautodeps:
	@for i in $(LIBDEPS); do \
		$(MAKE) -s -C $(GARDIR)/$$i showautoversion;\
	done

showautoversion:
	@echo "require @alien.cern.ch/$(GARFNAME) $(INTERFACE_VERSION)"

showdeps-l:
	@echo $(GARFNAME)
	@for i in $(LIBDEPS) $(BUILDDEPS); do \
		echo $$i; \
	done

version:
	@printf "%-32s %-14s\n" $(GARNAME) $(INTERFACE_VERSION)

status-q: $(TEST_TARGETS)
	@( [ ! -f $(COOKIEDIR)/$(TEST_TARGETS) -a -d $(COOKIEDIR)/test-work ] && echo "*failed*" ) || ( [ ! -f $(COOKIEDIR)/$(TEST_TARGETS) ] && echo "n/a" ) || echo "ok" 

status: 
	@printf "%-32s %-14s %-12s\n" $(GARNAME) $(GARVERSION) `$(MAKE) -s status-q`

# fetch			- Retrieves $(DISTFILES) (and $(PATCHFILES) if defined)
#				  into $(DOWNLOADDIR) as necessary.
FETCH_TARGETS =  $(addprefix $(DOWNLOADDIR)/,$(ALLFILES)) 

fetch: announce pre-everything $(DOWNLOADDIR) $(addprefix dep-$(GARDIR)/,$(FETCHDEPS)) pre-fetch $(FETCH_TARGETS) post-fetch
	$(DONADA)

fetch-bin: announce pre-everything $(DOWNLOADDIR) $(addprefix dep-$(GARDIR)/,$(FETCHDEPS)) pre-fetch  $(addprefix $(DOWNLOADDIR)/,$(BINDISTFILES)) post-fetch
	$(DONADA)

# returns true if fetch has completed successfully, false
# otherwise
fetch-p:
	@$(foreach COOKIEFILE,$(FETCH_TARGETS), test -e $(COOKIEFILE) ;)

# checksum		- Use $(CHECKSUMFILE) to ensure that your
# 				  distfiles are valid.
CHECKSUM_TARGETS = $(addprefix checksum-,$(filter-out $(NOCHECKSUM),$(ALLFILES)))

checksum: fetch $(COOKIEDIR) pre-checksum $(CHECKSUM_TARGETS) post-checksum
	$(DONADA)

checksum-bin: fetch-bin $(COOKIEDIR) pre-checksum  $(addprefix checksum-,$(BINDISTFILES)) post-checksum
	$(DONADA)

# returns true if checksum has completed successfully, false
# otherwise
checksum-p:
	@$(foreach COOKIEFILE,$(CHECKSUM_TARGETS), test -e $(COOKIEDIR)/$(COOKIEFILE) ;)

# makesum		- Generate distinfo (only do this for your own ports!).
MAKESUM_TARGETS =  $(addprefix $(DOWNLOADDIR)/,$(filter-out $(NOCHECKSUM),$(ALLFILES)))

makesum: fetch $(MAKESUM_TARGETS)
	@if test "x$(MAKESUM_TARGETS)" != "x "; then \
		$(MD5) $(MAKESUM_TARGETS) > $(CHECKSUM_FILE) ; \
		echo "Checksums complete for $(call TMSG_ID,$(MAKESUM_TARGETS))" ; \
	fi

# I am always typing this by mistake
makesums: makesum

garchive: checksum
	mkdir -p $(GARCHIVEDIR)
	cp -Lr $(DOWNLOADDIR)/* $(GARCHIVEDIR) || true

# extract		- Unpacks $(DISTFILES) into $(EXTRACTDIR) (patches are "zcatted" into the patch program)
EXTRACT_TARGETS = $(addprefix extract-,$(filter-out $(NOEXTRACT),$(DISTFILES)))

extract: checksum $(EXTRACTDIR) $(COOKIEDIR) $(addprefix dep-$(GARDIR)/,$(EXTRACTDEPS)) pre-extract $(EXTRACT_TARGETS) post-extract
	$(DONADA)

# extract-bin		- Unpacks $(DISTFILES) into $(BUILD_PREFIX) 
BINEXTRACT_TARGETS = $(addprefix binextract-,$(filter-out $(NOEXTRACT),$(BINDISTFILES))) 

RELOCATE_TARGETS = $(addprefix relocate-,$(filter-out $(NOEXTRACT),$(BINDISTFILES))) 

relocate: install-bin $(RELOCATE_TARGETS)
	    $(DONADA)

install-bin: fetch-bin $(BUILD_PREFIX) $(COOKIEDIR) $(addprefix bindep-$(GARDIR)/,$(LIBDEPS))  binclean pre-extract $(BINEXTRACT_TARGETS) post-extract
	$(DONADA)

binclean:
	@$(GARDIR)/clean.sh $(BUILD_PREFIX) $(GARNAME) $(GARVERSION)_$(PKG_BUILD_NUMBER) 
	@rm -rf $(COOKIEDIR)/*binextract*

bininstall: 
	if [[ "x$(CATEGORIES)" == "xsource-only" ]]; then \
	    $(MAKE) reinstall; \
	else \
	    if [[ "x$(BININSTALL_IGNORE)" != "xtrue" ]]; then \
		if [[ "x$(GARAUTODETECT)" == "xtrue" ]]; then \
		    env MASKED="$(MASKED) $(MYMASK)" BININSTALL=1 $(MAKE) install-bin MASTER_SITES=$(BITS_URL); \
		else \
		    env BININSTALL=1 $(MAKE) install-bin MASTER_SITES=$(BITS_URL); \
		fi; \
	    fi; \
	fi  

bininstall-p:
	$(foreach COOKIEFILE, $(addprefix binextract-,$(filter-out $(NOEXTRACT),$(BINDISTFILES))), test -e $(COOKIEDIR)/$(COOKIEFILE) ;)

# returns true if extract has completed successfully, false
# otherwise
extract-p:
	@$(foreach COOKIEFILE,$(EXTRACT_TARGETS), test -e $(COOKIEDIR)/$(COOKIEFILE) ;)

# checkpatch	- Do a "patch -C" instead of a "patch".  Note
# 				  that it may give incorrect results if multiple
# 				  patches deal with the same file.
# TODO: actually write it!
checkpatch: extract
	@echo "$(call TMSG_FAIL,$@) NOT IMPLEMENTED YET"

# patch			- Apply any provided patches to the source.
PATCH_TARGETS = $(addprefix patch-,$(PATCHFILES))

patch: extract $(WORKSRC) pre-patch $(PATCH_TARGETS) post-patch
	$(DONADA)

# returns true if patch has completed successfully, false
# otherwise
patch-p:
	@$(foreach COOKIEFILE,$(PATCH_TARGETS), test -e $(COOKIEDIR)/$(COOKIEFILE) ;)

# makepatch		- Grab the upstream source and diff against $(WORKSRC).  Since
# 				  diff returns 1 if there are differences, we remove the patch
# 				  file on "success".  Goofy diff.
makepatch: $(SCRATCHDIR) $(FILEDIR) $(FILEDIR)/gar-base.diff
	$(DONADA)

# this takes the changes you've made to a working directory,
# distills them to a patch, updates the checksum file, and tries
# out the build (assuming you've listed the gar-base.diff in your
# PATCHFILES).  This is way undocumented.  -NickM
beaujolais: makepatch makesum clean build
	$(DONADA)

# configure		- Runs either GNU configure, one or more local
# 				  configure scripts or nothing, depending on
# 				  what's available.
CONFIGURE_TARGETS = $(addprefix configure-,$(CONFIGURE_SCRIPTS))
LIBDEPS += $(DEPENDS)

configure: patch $(addprefix builddep-$(GARDIR)/,$(BUILDDEPS)) $(addprefix dep-$(GARDIR)/,$(LIBDEPS)) $(addprefix srcdep-$(GARDIR)/,$(SOURCEDEPS)) pre-configure $(CONFIGURE_TARGETS) post-configure
	$(DONADA)

# returns true if configure has completed successfully, false
# otherwise
configure-p:
	@$(foreach COOKIEFILE,$(CONFIGURE_TARGETS), test -e $(COOKIEDIR)/$(COOKIEFILE) ;)

# build			- Actually compile the sources.
BUILD_TARGETS = $(addprefix build-,$(BUILD_SCRIPTS))

build: configure pre-build $(BUILD_TARGETS) post-build buildtime
	$(DONADA)

# returns true if build has completed successfully, false
# otherwise
build-p:
	@$(foreach COOKIEFILE,$(BUILD_TARGETS), test -e $(COOKIEDIR)/$(COOKIEFILE) ;)

# strip			- Strip binaries
strip: build pre-strip $(addprefix strip-,$(STRIP_SCRIPTS)) post-strip
	@echo "$(call TMSG_FAIL,$@) NOT IMPLEMENTED YET"

AUTOPACKAGE_TARGETS = $(addprefix autopackage-,$(WORKSRC)/makeinstaller)

autopackage: cache skeletons $(AUTOPACKAGE_TARGETS)
	$(DONADA)

SKELETON_TARGETS = $(addprefix autopackage-,$(WORKSRC)/skeleton)

skeletons: $(SKELETON_TARGETS)
	$(DONADA)

TEST_TARGETS = $(addprefix test-,$(TEST_SCRIPTS))

test: install $(TEST_TARGETS) post-install
	$(DONADA)

use: $(addprefix usedby-$(GARDIR)/,$(BUILDDEPS)) $(addprefix usedby-$(GARDIR)/,$(LIBDEPS)) 
	$(DONADA)

use-q: 
	@(([ ! -d $(COOKIEDIR)/usedby ] && echo 0 ) || ls -1 $(COOKIEDIR)/usedby |  wc -l) 

ustatus: 
	@printf "%-32s %-14s %s\n" $(GARNAME) $(GARVERSION) `$(MAKE) -s use-q`

# install		- Install the results of a build.
INSTALL_TARGETS = $(addprefix install-,$(INSTALL_SCRIPTS))

install: build $(addprefix dep-$(GARDIR)/,$(INSTALLDEPS)) $(INSTALL_DIRS) pre-install $(INSTALL_TARGETS) post-install $(DO_BUILD_CLEAN)
	$(DONADA)

# returns true if install has completed successfully, false
# otherwise
install-p:
	@$(foreach COOKIEFILE,$(INSTALL_TARGETS), test -e $(COOKIEDIR)/$(COOKIEFILE) ;)

# installstrip		- Install the results of a build, stripping first.
installstrip: strip pre-install $(INSTALL_TARGETS) post-install
	$(DONADA)

# reinstall		- Install the results of a build, ignoring
# 				  "already installed" flag.
# TODO: actually write it!
reinstall: build
	rm -rf $(COOKIEDIR)/install*
	$(MAKE) install

# uninstall		- Remove the installation.
# TODO: actually write it!
uninstall: build
	@[ -f $(COOKIEDIR)/provides -a ! -z $(COOKIEDIR)/provides ] && cat $(COOKIEDIR)/provides | (while read file; do rm -f $$file; done) 
	@echo "	[$(call TMSG_ACTION,$@)] complete for $(call TMSG_ID,$(GARNAME))."

# provides
provides: build
	@[ -f $(COOKIEDIR)/provides ] && cat $(COOKIEDIR)/provides


# cache	 - Create a package from an _installed_ port.
# remove previous binary package
# don't distribute .la files in lib
# create the archive with the current build number from the provided files
# update the build number for this package
cache: install create-tarball
	$(DONADA)

create-tarball:
	@mkdir -p $(CACHE_DIR)
ifeq ($(wildcard $(COOKIEDIR)/provides), $(COOKIEDIR)/provides)
	@rm -f $(DOWNLOADDIR)/$(BINDISTFILES)
	@rm -f $(CACHE_DIR)/$(BINDISTFILES)
	@(grep -v -e '.*/lib.*\.la' $(COOKIEDIR)/provides | sed 's%$(BUILD_PREFIX)/%%') > $(COOKIEDIR)/provides.swp
	@($(TAR) jcf $(DOWNLOADDIR)/$(NEW_BINDISTFILES) -C $(BUILD_PREFIX) -T $(COOKIEDIR)/provides.swp ) || touch $(DOWNLOADDIR)/$(NEW_BINDISTFILES)
	@rm -f $(COOKIEDIR)/provides.swp
	@(grep -v $(GARFNAME)= $(GARDIR)/BUILD_NUMBERS ; echo $(GARFNAME)=$(NEW_PKG_BUILD_NUMBER)) | sort > $(GARDIR)/BUILD_NUMBERS.swp
	@mv $(GARDIR)/BUILD_NUMBERS.swp $(GARDIR)/BUILD_NUMBERS
	@cp -f $(DOWNLOADDIR)/$(NEW_BINDISTFILES) $(CACHE_DIR)
	@$(MAKECOOKIE)
endif

# tarball		- Make a tarball from an install of the package into a scratch dir
tarball: build
	@rm -rf $(COOKIEDIR)/install*
	@$(MAKE) DESTDIR=$(CURDIR)/$(SCRATCHDIR) BUILD_PREFIX=$(call DIRSTODOTS,$(CURDIR)/$(SCRATCHDIR))/$(BUILD_PREFIX) install
	@find $(SCRATCHDIR) -depth -type d | while read i; do rmdir $$i > /dev/null 2>&1 || true; done
	@$(TAR) czvf $(CURDIR)/$(WORKDIR)/$(DISTNAME)-install.tar.gz -C $(SCRATCHDIR) .
	@$(MAKECOOKIE)

# The clean rule.  It must be run if you want to re-download a
# file after a successful checksum (or just remove the checksum
# cookie, but that would be lame and unportable).
clean:
	@([ -f $(COOKIEDIR)/provides.all ] && cat $(COOKIEDIR)/provides.all | (while read file; do rm -f $$file; done)) || true
	@rm -rf $(DOWNLOADDIR) $(COOKIEDIR) $(COOKIEDIR)-* $(WORKSRC) $(WORKDIR) $(EXTRACTDIR) $(SCRATCHDIR) $(SCRATCHDIR)-$(COOKIEDIR) $(SCRATCHDIR)-build *~ autopackage

buildclean:
	@rm -rf $(WORKSRC) $(WORKDIR) $(EXTRACTDIR) $(SCRATCHDIR) $(SCRATCHDIR)-$(COOKIEDIR) $(SCRATCHDIR)-build *~ autopackage

#check cvs time for Makefile and checksum, we get the latest commit
#if svn or cvs we have to check the log to see the date
buildtime:
	@makefileTime="`$(GARDIR)/parseSVNFileLog.sh Makefile`"; \
	if [[ "$$makefileTime" =~ ^.*ERROR.*$$ ]]; then \
	    echo "ERROR getting Makefile time"; \
	    exit 1; \
	fi; \
	echo $$makefileTime > work/TIME.tmp; 
	@if [[ "$(MASTER_SITES)" =~ ^.*pserver.*$$ ]]; then \
	    cvsTime="`cd $(WORKSRC) && LD_LIBRARY_PATH= cvs log 2>&1 | $(GARDIR)../../parseCVSLog.sh $(GARCVSVERSION)`"; \
	    echo $$cvsTime >> work/TIME.tmp; \
	fi
	@if [[ "$(MASTER_SITES)" =~ ^.*svn.*$$ ]]; then \
	    cvsTime="`cd $(WORKSRC) && LD_LIBRARY_PATH= svn info 2>&1 | $(GARDIR)../../parseSVNLog.sh`"; \
	    echo $$cvsTime >> work/TIME.tmp; \
	fi
	@if [[ ! "$(MASTER_SITES)" =~ ^.*pserver.*$$ ]]; then \
	    if [[ ! "$(MASTER_SITES)" =~ ^.*svn.*$$ ]]; then \
		checksumsTime="`$(GARDIR)/parseSVNFileLog.sh checksums`"; \
		    if [[ "$$makefileTime" =~ ^.*ERROR.*$$ ]]; then \
		    echo "ERROR getting Makefile time"; \
		    exit 1; \
		fi; \
		echo $$checksumsTime >> work/TIME.tmp; \
	    fi \
	fi
	@sort work/TIME.tmp | tail -n1 > work/TIME
	@rm work/TIME.tmp

# these targets do not have actual corresponding files
.PHONY: all fetch-list fetch checksum makesum extract checkpatch patch makepatch configure build bininstall install clean buildclean beaujolais strip fetch-p checksum-p extract-p patch-p configure-p build-p install-p bininstall-p builtime

# apparently this makes all previous rules non-parallelizable,
# but the actual builds of the packages will be, according to
# jdub.
.NOTPARALLEL:


