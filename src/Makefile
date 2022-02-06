ARTICLES = \
  gallery \
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
  2016-12-31-agi-emotions \
  2017-01-02-agi-world \
  2017-01-08-issue-voting-method \
  2017-03-05-current-interests \
  2017-07-02-linear-response-decomposition \
  2017-07-22-values \
  2017-08-12-adaptive-average \
  2019-04-21-glossary \
  2020-03-29-software-engineering-notes \
  2020-06-28-dynamic-signal-uniformization \
  2020-09-12-dictionary \
  2020-12-25-authoritarian \
  2021-12-31-mind-vs-identity

DOCROOT = ../docs

HTML = \
  $(DOCROOT)/index.html \
  $(addprefix $(DOCROOT)/, $(addsuffix /index.html, $(ARTICLES)))

IMG = $(wildcard */img)
DOT = $(wildcard */dot)

UTILDIR = ../util
export PATH := $(UTILDIR):$(PATH)

# Various files that don't need preprocessing and go directly under /
SRCDOCROOTFILES = \
  ../css/blog.css \
  ../root/robots.txt

.PHONY: default all html img graphs css clean
default: all
all:
	mkdir -p $(DOCROOT)
	echo -n mjambon.com > $(DOCROOT)/CNAME
	cp -u $(SRCDOCROOTFILES) $(DOCROOT)
	$(MAKE) html img graphs

html: $(HTML)

img:
	for x in $(IMG); do \
    mkdir -p $(DOCROOT)/$$x; \
    cp -r -u $$x/* $(DOCROOT)/$$x/; \
  done

graphs:
	for x in $(DOT); do \
    render-graphs "$$x" "$(DOCROOT)/$$(dirname $$x)/img"; \
  done

$(DOCROOT)/index.html: index.md Makefile head.html
	pandoc $< -o $@ -t html5 -s -c blog.css -H head.html

$(DOCROOT)/%/index.html: %/index.md \
                         Makefile head.html before-body.html after-body.html
	mkdir -p $(dir $@)
	options=""; \
  if grep -q '<!-- *toc *-->' $< ; then \
    options="$$options --toc --toc-depth=5 -N"; \
  fi; \
  date=$$(echo $@ | grep -o '[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]'); \
  pandoc $< \
    -f markdown+pandoc_title_block -t html5 \
    -s --mathjax='https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.7/MathJax.js?config=TeX-AMS_CHTML-full' \
    -c ../blog.css -B before-body.html -A after-body.html -H head.html \
    $$options \
  | sed -e "s/@@DATE@@/$$date/g" > $@

clean:
	rm -f *~ */*~ */img/*~ */dot/*~
	rm -rf $(DOCROOT)
