all:

DIRS=devel base gui portal server glite alien


%:
	@for i in $(DIRS); do \
		$(MAKE) -C $$i $* ; \
	done

status:
	@for i in $(DIRS); do \
		$(MAKE) -C $$i -s status ; \
	done

version:
	@for i in $(DIRS); do \
		$(MAKE) -C $$i -s version ; \
	done
