.PHONY: build
build:
	mypy --strict build
	./build

.PHONY: all
all:
	$(MAKE) build
	$(MAKE) -C ../..
	git status
