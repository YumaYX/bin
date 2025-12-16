RUSTC := rustc
SRCS := $(wildcard *.rs)
BINS := $(SRCS:.rs=)

PREFIX ?= /usr/local
BINDIR := $(PREFIX)/bin

default: $(BINS)

help:
	@cat Makefile | grep ^[a-z].* | awk -F: '{print $$1}'

%: %.rs
	$(RUSTC) $<

install: $(BINS)
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 $(BINS) $(DESTDIR)$(BINDIR)

uninstall:
	rm -f $(addprefix $(DESTDIR)$(BINDIR)/,$(BINS))

clean:
	rm -f $(BINS)
