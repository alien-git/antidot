all:

DIRS=gcc devel tools portal server alien monitor system perl

%:
	@for i in $(DIRS); do \
		$(MAKE) -C $$i -s $* || exit 2; \
	done

