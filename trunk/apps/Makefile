all:

DIRS=devel base gui portal server glite alien


%:
	@for i in $(DIRS); do \
		$(MAKE) -C $$i -s $* ; \
	done

