ACLOCAL_AMFLAGS = -I m4
AM_CFLAGS = $(SBPCD_H) $(UCDROM_H)

# cdparanoia does not use libtool versioning scheme; since we are migrating to
# GNU Autotools, this dirty trick ensures the .so.0.10.2 suffix
VERSION_INFO = 10:2:10

lib_LIBRARIES = libcdda_interface.a
lib_LTLIBRARIES = libcdda_interface.la
include_HEADERS = cdda_interface.h

INTERFACE_SRC = \
    cdda_interface.h common_interface.c common_interface.h cooked_interface.c \
    drive_exceptions.h interface.c low_interface.h scan_devices.c \
    scsi_interface.c smallft.c smallft.h test_interface.c toc.c utils.h

libcdda_interface_a_SOURCES = $(INTERFACE_SRC)
libcdda_interface_la_SOURCES = $(INTERFACE_SRC)
libcdda_interface_la_CFLAGS = $(AM_CFLAGS) -fpic
libcdda_interface_la_LDFLAGS = -fpic -version-info $(VERSION_INFO)
libcdda_interface_la_LIBADD = -lm -lrt
