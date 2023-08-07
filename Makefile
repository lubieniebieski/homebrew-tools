.PHONY: update

update:
ifdef VERSION
	brew bump-formula-pr --url=https://github.com/lubieniebieski/markdown-tools/archive/$(VERSION).tar.gz lubieniebieski/tools/markdown-tools
else
	$(error VERSION is not set)
endif
