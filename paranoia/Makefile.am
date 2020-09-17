ACLOCAL_AMFLAGS = -I m4
AM_CFLAGS = $(SBPCD_H) $(UCDROM_H)

# cdparanoia does not use libtool versioning scheme; since we are migrating to
# GNU Autotools, this dirty trick ensures the .so.0.10.2 suffix
VERSION_INFO = 10:2:10

lib_LIBRARIES = libcdda_paranoia.a
lib_LTLIBRARIES = libcdda_paranoia.la
include_HEADERS = cdda_paranoia.h

PARANOIA_SRC = \
    cdda_paranoia.h gap.c gap.h isort.c isort.h overlap.c overlap.h \
    paranoia.c p_block.c p_block.h

libcdda_paranoia_a_SOURCES = $(PARANOIA_SRC)
libcdda_paranoia_la_SOURCES = $(PARANOIA_SRC)
libcdda_paranoia_la_CFLAGS = $(AM_CFLAGS) -fpic
libcdda_paranoia_la_LDFLAGS = -fpic -version-info $(VERSION_INFO)
libcdda_paranoia_la_LIBADD = $(top_builddir)/interface/libcdda_interface.la
