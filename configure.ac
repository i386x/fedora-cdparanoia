AC_INIT([cdparanoia], [10.2],
    [https://www.xiph.org/paranoia/bugs.html],
    [],
    [https://www.xiph.org/paranoia/index.html],
)
AC_PREREQ([2.65])
AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_SRCDIR([main.c])
AM_INIT_AUTOMAKE([no-define subdir-objects -Wall])

AC_CANONICAL_HOST

# Check for programs
AC_PROG_CC
AM_PROG_CC_C_O
AM_PROG_AR
LT_INIT

AC_C_CONST

# Check for libraries
AC_CHECK_LIB([rt], [clock_gettime], [],
    [AC_MSG_ERROR([librt was not found on the system!])],
)

# Check for headers
AC_HEADER_STDC
AC_CHECK_HEADER([linux/sbpcd.h], [SBPCD_H="-DSBPCD_H=1"])
AC_CHECK_HEADER([linux/ucdrom.h], [UCDROM_H="-DUCDROM_H=1"])

# Check for types
AC_CHECK_TYPE([int16_t], [],
    [AC_MSG_ERROR([No 16 bit type found on this platform!])],
)
AC_CHECK_TYPE([int32_t], [],
    [AC_MSG_ERROR([No 32 bit type found on this platform!])],
)

AC_SUBST(SBPCD_H)
AC_SUBST(UCDROM_H)

AC_CONFIG_FILES(Makefile interface/Makefile paranoia/Makefile)
AC_OUTPUT
