.PHONY: default clean

DOCROOT = docs

default:
	mkdir -p $(DOCROOT)
	cp css/*.css $(DOCROOT)
	mkdir -p $(DOCROOT)/paper
	cp -u paper/*.pdf $(DOCROOT)/paper
	mkdir -p $(DOCROOT)/paper/proteins
	cp -u paper/proteins/* $(DOCROOT)/paper/proteins
	$(MAKE) -C src

clean:
	$(MAKE) -C src clean
	rm -f *~
