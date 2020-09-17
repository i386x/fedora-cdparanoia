ACLOCAL_AMFLAGS = -I m4
AM_CFLAGS = $(SBPCD_H) $(UCDROM_H)

SUBDIRS = interface paranoia

bin_PROGRAMS = cdparanoia

cdparanoia_SOURCES = \
    buffering_write.c cachetest.c  header.c header.h main.c report.c report.h \
    utils.h version.h
cdparanoia_LDADD = \
    $(top_builddir)/interface/libcdda_interface.la \
    $(top_builddir)/paranoia/libcdda_paranoia.la \
    -lm -lrt

include_HEADERS = utils.h

dist_man_MANS = cdparanoia.1
