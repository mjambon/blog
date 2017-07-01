.PHONY: default clean

DOCROOT = docs

default:
	mkdir -p $(DOCROOT)
	cp css/*.css $(DOCROOT)
	mkdir -p $(DOCROOT)/paper
	cp -u paper/*.pdf $(DOCROOT)/paper
	$(MAKE) -C src

clean:
	$(MAKE) -C src clean
	rm -f *~
