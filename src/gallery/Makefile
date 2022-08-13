.PHONY: build
build:
	mypy --strict build
	./build

.PHONY: rebuild
rebuild:
	mypy --strict build
	./build --force

.PHONY: all
all:
	$(MAKE) build
	$(MAKE) -C ../..
	git status

.PHONY: live
live:
	xdg-open http://0.0.0.0:8000/gallery
	python -m http.server --directory ../../docs 8000

.PHONY: push
push:
	make -C ../.. push
