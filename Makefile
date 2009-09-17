prefix = /usr/local

default: build/tibtoa.1

build/%.1: bin/%
	mkdir -p build
	pod2man $< > $@

install: build/tibtoa.1
	mkdir -p $(prefix)/bin $(prefix)/share/man/man1
	cp bin/tibtoa $(prefix)/bin/tibtoa
	cp build/tibtoa.1 $(prefix)/share/man/man1/tibtoa.1
	chmod 755 $(prefix)/bin/tibtoa
	chmod 644 $(prefix)/share/man/man1/tibtoa.1

uninstall:
	rm -f $(prefix)/bin/tibtoa
	rm -f $(prefix)/share/man/man1/tibtoa.1

clean:
	rm -rf build

.PHONY: install uninstall clean
