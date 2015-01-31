dnl ---------------------------------------------------------------------------
dnl configure.ac
dnl process this file with autoconf to produce a configure script
dnl ---------------------------------------------------------------------------

AC_INIT([libcfg], [0.1.0], [geoff.jay@gmail.com], [libcfg])
AC_CONFIG_SRCDIR([cfg/Makefile.am])
AC_CONFIG_HEADER(config.h)
AC_CONFIG_MACRO_DIR(m4)
AC_CONFIG_SUBDIRS([lib/libyaml-glib])
AM_INIT_AUTOMAKE(dist-xz)
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])

m4_define([package_major_version], [0])
m4_define([package_minor_version], [1])
m4_define([package_micro_version], [0])
m4_define([package_version], [package_major_version.package_minor_version.package_micro_version])

# Make sure the right substitution is done
[LIBCFG_MAJOR_VERSION]=package_major_version
[LIBCFG_MINOR_VERSION]=package_minor_version
[LIBCFG_MICRO_VERSION]=package_micro_version
AC_SUBST([LIBCFG_MAJOR_VERSION])
AC_SUBST([LIBCFG_MINOR_VERSION])
AC_SUBST([LIBCFG_MICRO_VERSION])

dnl For libtool current:revision:age where age <= current
LIBCFG_LT_VERSION=0:1:0
AC_SUBST(LIBCFG_LT_VERSION)

dnl ---------------------------------------------------------------------------
dnl Programs
dnl ---------------------------------------------------------------------------
AC_PROG_CC
AM_PROG_CC_C_O
AC_DISABLE_STATIC
AC_PROG_LIBTOOL

AM_PROG_VALAC([0.14.0])
AC_SUBST(VALAC)

dnl ---------------------------------------------------------------------------
dnl Mandatory Libraries
dnl ---------------------------------------------------------------------------

VALA_PACKAGES=""

GLIB_REQUIRED=2.32.0
PKG_CHECK_MODULES([GLIB], [glib-2.0 >= $GLIB_REQUIRED gobject-2.0 >= $GLIB_REQUIRED gthread-2.0 >= $GLIB_REQUIRED],
	[AC_DEFINE(HAVE_GLIB232, [], [GLib 2.32 available])],
	[PKG_CHECK_MODULES([GLIB], [glib-2.0 gobject-2.0 gthread-2.0],,
		[AC_MSG_ERROR(glib-2.12 is required)])
	])

PKG_CHECK_MODULES([GEE], [gee-0.8],
    [VALA_PACKAGES="$VALA_PACKAGES --pkg gee-0.8"],
    [AC_MSG_ERROR(gee-0.8 is required)])

PKG_CHECK_MODULES([GIO], [gio-2.0],
    [VALA_PACKAGES="$VALA_PACKAGES --pkg gio-2.0"],
	[AC_MSG_ERROR(gio-2.0 is required)])

PKG_CHECK_MODULES([XML], [libxml-2.0],
    [VALA_PACKAGES="$VALA_PACKAGES --pkg libxml-2.0"],
	[AC_MSG_ERROR(libxml-2.0 is required)])

PKG_CHECK_MODULES([JSON], [json-glib-1.0],
    [VALA_PACKAGES="$VALA_PACKAGES --pkg json-glib-1.0"],
	[AC_MSG_ERROR(json-glib-1.0 is required)])

AC_SUBST(VALA_PACKAGES)

VALA_ADD_CHECKFILE([libyaml-glib/src/libyaml-glib-1.0.vapi])

dnl ---------------------------------------------------------------------------
dnl Build Options
dnl ---------------------------------------------------------------------------

dnl Debugging
dnl FIXME: I don't think this works
AC_ARG_ENABLE(debug,
	AS_HELP_STRING([--enable-debug],
		[Enable debugging (default: disabled)]),,
	enable_debug=no)

if test "x$enable_debug" = xyes; then
	AM_CFLAGS="$AM_CFLAGS -DDEBUG"
fi

dnl Documentation
AC_ARG_ENABLE(doc,
	AS_HELP_STRING([--enable-doc],
		[Enable documentation generation]), enable_doc=$enableval,
	enable_doc=no)
AM_CONDITIONAL(ENABLE_DOC, test x$enable_doc = xyes)

AS_IF([test "x$enable_doc" != xno],
	[AC_PATH_PROG(VALADOC, valadoc, :)
	 AC_SUBST(VALADOC)
	 AS_IF([test "$VALADOC" = :],
		[AC_MSG_ERROR([valadoc not found])])])

dnl Examples
AC_ARG_ENABLE(examples,
	AS_HELP_STRING([--enable-examples],
		[Enable example programs generation]), enable_examples=$enableval,
	enable_examples=no)
AM_CONDITIONAL(ENABLE_EXAMPLES, test x$enable_examples = xyes)

dnl ---------------------------------------------------------------------------
dnl Checks for typedefs, structures, and compiler characteristics
dnl ---------------------------------------------------------------------------
dnl AC_C_CONST
dnl AC_TYPE_SIZE_T

GOBJECT_INTROSPECTION_CHECK([0.9.0])

AC_OUTPUT([Makefile
           cfg-0.1.pc
           lib/Makefile
           cfg/Makefile
           docs/Makefile
           examples/Makefile
           vapi/Makefile])
