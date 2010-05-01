include config.mk

all: build/tibtoa.1

build/tibtoa.1: bin/tibtoa
	mkdir -p build
	pod2man bin/tibtoa > $@

install: build/tibtoa.1
	mkdir -p ${bin_dir} ${man_dir}/man1
	cp bin/tibtoa ${bin_dir}/tibtoa
	cp build/tibtoa.1 ${man_dir}/man1/tibtoa.1
	chmod 755 ${bin_dir}/tibtoa
	chmod 644 ${man_dir}/man1/tibtoa.1

uninstall:
	rm -f ${bin_dir}/tibtoa
	rm -f ${man_dir}/man1/tibtoa.1

clean:
	rm -rf build

.PHONY: install uninstall clean
