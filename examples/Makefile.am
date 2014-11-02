include $(top_srcdir)/Makefile.decl

noinst_PROGRAMS = $(EXAMPLE_PROGS)

EXAMPLE_PROGS += \
	xml-example \
	$(NULL)

### Shared build flags and dependencies

example_SOURCES = \
	example.vala \
	$(NULL)

example_DEPENDENCIES = \
	$(top_srcdir)/cfg/cfg-0.1.vapi \
	$(NULL)

example_VALAFLAGS = \
	--basedir $(top_srcdir) \
	--vapidir $(top_srcdir)/cfg \
	--pkg cfg-0.1 \
	$(NULL)

example_CPPFLAGS = \
	-I$(top_srcdir)/cfg \
	$(GLIB_CFLAGS) \
	$(GEE_CFLAGS) \
	$(GIO_CFLAGS) \
	$(XML_CFLAGS) \
	$(JSON_CFLAGS) \
	$(NULL)

example_LDADD = \
	../cfg/libcfg-0.1.la \
	$(GLIB_LIBS) \
	$(GEE_LIBS) \
	$(GIO_LIBS) \
	$(XML_LIBS) \
	$(JSON_LIBS) \
	$(NULL)

### individual example applications

xml_example_SOURCES = xml-example.vala $(example_SOURCES)
xml_example_DEPENDENCIES = $(example_DEPENDENCIES)
xml_example_VALAFLAGS = $(example_VALAFLAGS)
xml_example_CPPFLAGS = $(example_CPPFLAGS)
xml_example_LDADD = $(example_LDADD)
