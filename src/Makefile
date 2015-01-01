ARTICLES = \
  index \
  2014-12-27-faith-driven-science \
  2014-12-31-intelligence-precedes-machines

HTMLDIR = ../html
HTML = $(addprefix $(HTMLDIR)/, $(addsuffix /index.html, $(ARTICLES)))

.PHONY: default all html css clean
default: all
all:
	mkdir -p ../html
	cp ../css/blog.css $(HTMLDIR)
	$(MAKE) html

html: $(HTML)

$(HTMLDIR)/%/index.html: %/index.md Makefile head.html footer.html
	mkdir -p $(dir $@)
	if [ -d $(dir $<)/img ]; then cp -a $(dir $<)/img $(dir $@)/; fi
	if [ $< = "index/index.md" ]; then \
          css="blog.css"; \
          footer=""; \
        else \
          css="../blog.css"; \
          footer="-A footer.html"; \
        fi; \
	pandoc $< -o $@ -t html5 -s -c $$css $$footer -H head.html

clean:
	rm -f *~ */*~ */img/*~
	rm -rf $(HTMLDIR)
