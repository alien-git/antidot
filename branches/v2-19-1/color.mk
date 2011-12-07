#-*- mode: Fundamental; tab-width: 4; -*-
# ex:ts=4
# $Id: color.mk 37 2005-03-01 13:53:34Z buncic $

###
# This file contains non-invasive color patterns for output.
TPUT ?= /usr/bin/tput
###
#	failsafe defaults.
TMSG_BRIGHT	=$1
TMSG_ID		=$1
TMSG_ACTION =$1
TMSG_SUCCESS	=$1
TMSG_FAIL	=$1
TMSG_LIB	= ==> $1 $2 $3

##
# If there is no $TERM variable, we don't want colors.
ifneq ($(TERM),)
	# equivalently, we want TPUT, since it should be safe,
	# using valid terminfo(5), for almost any $(TERM) value.

	###
	# if you don't have tput, we could rely on ANSI, but that 
	# would defeat the purpose of using tput as a safe colorizer.
	ifneq ($(strip $(wildcard $(TPUT))),)
		TERM_RST 	=$(shell $(TPUT) sgr0)
		TERM_BOLD	=$(shell $(TPUT) bold)

		TERM_BLACK	=$(shell $(TPUT) setaf 0)
		TERM_RED 	=$(shell $(TPUT) setaf 1)
		TERM_GREEN	=$(shell $(TPUT) setaf 2)
		TERM_YELLOW	=$(shell $(TPUT) setaf 3)
		TERM_BLUE	=$(shell $(TPUT) setaf 4)
		TERM_MAGENTA	=$(shell $(TPUT) setaf 5)
		TERM_CYAN	=$(shell $(TPUT) setaf 6)
		TERM_WHITE	=$(shell $(TPUT) setaf 7)

		# some functional color substitutions; these
		# were designed on a white background; YMMV.
		#	If they are ugly, an if condition that checks
		#	the background color(?) of the terminal could
		#	select more appropriate colors.
		# 
		# use these likeso:
		#  $(call TMSG_BRIGHT,bright message)
		# these are all unary functions.
		TMSG_BRIGHT	=$(TERM_YELLOW)$1$(TERM_RST)
		TMSG_ID		=$(TERM_BLUE)$1$(TERM_RST)
		TMSG_ACTION =$(TERM_RED)$1$(TERM_RST)
		TMSG_SUCCESS	=$(TERM_GREEN)$1$(TERM_RST)
		TMSG_FAIL	=$(TERM_RED)$(TERM_BOLD)$1$(TERM_RST)
		
		# $(call TMSG_LIB,building|grabbing source|...,file|package,as a dependency|as build dep|...)
		# eg.
		# $(call TMSG_LIB,building,$*,as a dependency)
		# or, alternatively, just 2 arguments
		# $(call TMSG_LIB,extracting,some_file)
		TMSG_LIB	=$(call TMSG_BRIGHT,==>) $1 $(call TMSG_ID,$2) $3
		
	endif # $(TPUT)?
endif # TERM?

