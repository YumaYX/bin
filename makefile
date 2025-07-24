SRCDIR := bin/
DSTDIR := /usr/local/bin/
SRCS   := $(wildcard $(SRCDIR)*)
DESTS  := $(SRCS:$(SRCDIR)%=$(DSTDIR)%)

.PHONY: list install clean

list:
	@cat makefile
	chmod 755 $(SRCS)

install: $(DESTS)

clean:
	rm -f $(DESTS)

$(DSTDIR)%: $(SRCDIR)%
	install -m 755 $< $@
