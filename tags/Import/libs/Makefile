
all:

clean:
	rm -rf config.log install-sh config.status  configure *~ missing config.cache  mkinstalldirs

distclean:
	make clean
	(cd apps; make clean) 

%:
	(cd meta; make $@)

