ARTICLES = \
  2014-12-27-faith-driven-science \
  2014-12-31-intelligence-precedes-machines \
  2015-01-03-universal-career-advice \
  2015-11-08-deep-vs-fast-thinking \
  2016-07-23-moving-percentile \
  2016-07-24-definitions-of-life \
  2016-07-30-product-ideas \
  2016-08-20-agi-project-status-2016 \
  2016-09-03-discrete-indicators \
  2016-10-08-diversity-rule \
  2016-12-10-feedback-analysis \
  2016-12-31-agi-emotions \
  2017-01-02-agi-world \
  2017-01-08-issue-voting-method

HTMLDIR = ../html

HTML = \
  $(HTMLDIR)/index.html \
  $(addprefix $(HTMLDIR)/, $(addsuffix /index.html, $(ARTICLES)))

IMG = $(wildcard */img)
DOT = $(wildcard */dot)

UTILDIR = ../util
export PATH := $(UTILDIR):$(PATH)

.PHONY: default all html img graphs css clean
default: all
all:
	mkdir -p ../html
	cp ../css/blog.css $(HTMLDIR)
	$(MAKE) html img graphs

html: $(HTML)

img:
	for x in $(IMG); do \
    mkdir -p $(HTMLDIR)/$$x; \
    cp -u $$x/* $(HTMLDIR)/$$x/; \
  done

graphs:
	for x in $(DOT); do \
    render-graphs "$$x" "$(HTMLDIR)/$$(dirname $$x)/img"; \
  done

$(HTMLDIR)/index.html: index.md Makefile head.html
	pandoc $< -o $@ -t html5 -s -c blog.css -H head.html

$(HTMLDIR)/%/index.html: %/index.md \
                         Makefile head.html before-body.html after-body.html
	mkdir -p $(dir $@)
	options=""; \
  if grep -q '<!-- *toc *-->' $< ; then \
    options="$$options --toc --toc-depth=5 -N"; \
  fi; \
  date=$$(echo $@ | grep -o '[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]'); \
  pandoc $< \
    -f markdown+pandoc_title_block -t html5 \
    -s --mathjax \
    -c ../blog.css -B before-body.html -A after-body.html -H head.html \
    $$options \
  | sed -e "s/@@DATE@@/$$date/g" > $@

clean:
	rm -f *~ */*~ */img/*~ */dot/*~
	rm -rf $(HTMLDIR)
