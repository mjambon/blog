.PHONY: default clean

DOCROOT = docs

default:
	mkdir -p $(DOCROOT)
	mkdir -p $(DOCROOT)/fonts
	cp fonts/*.otf $(DOCROOT)/fonts
	cp css/*.css $(DOCROOT)
	mkdir -p $(DOCROOT)/paper
	cp -u paper/*.pdf $(DOCROOT)/paper
	mkdir -p $(DOCROOT)/paper/proteins
	cp -u paper/proteins/* $(DOCROOT)/paper/proteins
	$(MAKE) -C src

.PHONY: push
push:
	git add .
	git commit -a -m 'Publish site'
	git push origin master

.PHONY: live
live:
	xdg-open http://0.0.0.0:8000/
	python -m http.server --directory docs 8000

.PHONY: clean
clean:
	$(MAKE) -C src clean
	rm -f *~
