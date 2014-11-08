include $(top_srcdir)/Makefile.decl

lib_LTLIBRARIES = \
	libcfg-0.1.la \
	$(NULL)

libcfg_0_1_la_SOURCES = \
	configuration.vala \
	error.vala \
	node.vala \
	namespace.vala \
	json-configuration.vala \
	json-node.vala \
	xml-configuration.vala \
	xml-node.vala \
	$(NULL)

INCLUDES = \
	-DPKGDATADIR=\""$(pkgdatadir)"\" \
	-DPKGLIBDIR=\""$(pkglibdir)"\" \
	$(NULL)

libcfg_0_1_la_VALAFLAGS = \
	-H cfg.h --vapi cfg-0.1.vapi \
	-h cfg-internals.h -g \
	--internal-vapi cfg-internals-0.1.vapi \
	--library cfg-0.1 --gir Cfg-0.1.gir \
	--vapidir=$(srcdir)/../vapi --pkg build-config \
	@VALA_PACKAGES@ --target-glib 2.32 \
	$(NULL)

libcfg_0_1_la_CPPFLAGS = \
	-DG_LOG_DOMAIN='"Cfg"' \
	$(GLIB_CFLAGS) \
	$(GEE_CFLAGS) \
	$(GIO_CFLAGS) \
	$(XML_CFLAGS) \
	$(JSON_CFLAGS) \
	$(NULL)

libcfg_0_1_la_LIBADD = \
	$(GLIB_LIBS) \
	$(GEE_LIBS) \
	$(GIO_LIBS) \
	$(XML_LIBS) \
	$(JSON_LIBS) \
	$(NULL)

libcfg_0_1_la_LDFLAGS = \
	-version-info $(LIBCFG_LT_VERSION) \
	-no-undefined \
	$(NULL)

cfgincludedir = $(includedir)/cfg-0.1

cfginclude_HEADERS = \
	cfg.h \
	$(NULL)

library_includedir = $(includedir)/cfg-0.1/cfg

library_include_HEADERS = \
	$(NULL)

vapidir = $(datadir)/vala/vapi

dist_vapi_DATA = \
	cfg-0.1.deps \
	cfg-0.1.vapi \
	$(NULL)

if HAVE_INTROSPECTION
girdir = @INTROSPECTION_GIRDIR@
gir_DATA = \
	Cfg-0.1.gir \
	$(NULL)

typelibdir = @INTROSPECTION_TYPELIBDIR@
typelib_DATA = \
	Cfg-0.1.typelib \
	$(NULL)

Cfg-0.1.typelib: Cfg-0.1.gir
	@INTROSPECTION_COMPILER@ --debug --verbose \
		--includedir=$(srcdir) --includedir=. \
		--shared-library=libcfg-0.1.so $^ -o $@
endif

Cfg-0.1.gir cfg-internals-0.1.vapi cfg-0.1.vapi: libcfg-0.1.la

CLEANFILES = \
	cfg-0.1.vapi \
	cfg-internals-0.1.vapi \
	Cfg-0.1.typelib \
	Cfg-0.1.gir \
	$(NULL)
