SRCDIR := bin/
DSTDIR := /usr/local/bin/
SRCS   := $(wildcard $(SRCDIR)*)
DESTS  := $(SRCS:$(SRCDIR)%=$(DSTDIR)%)

.PHONY: list install clean

list:
	@cat makefile
	chmod 755 $(SRCS)

OS := $(shell uname -s)
ifeq ($(OS), Linux)
install: $(DESTS)
clean:
	rm -f $(DESTS)
endif

$(DSTDIR)%: $(SRCDIR)%
	install -m 755 $< $@

