all:

DIRS=all client  core  portal  site  wn

%:
	@for i in $(DIRS); do \
		$(MAKE) -C $$i -s $* 2> /dev/null ; \
	done

include ../all.mk

