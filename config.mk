# Prefix for all installed files
PREFIX ?= /usr/local

# Directories for manuals, executables, docs, data, etc.
main_dir = ${DESTDIR}${PREFIX}
man_dir = ${main_dir}/share/man
bin_dir = ${main_dir}/bin
doc_dir = ${main_dir}/share/doc
