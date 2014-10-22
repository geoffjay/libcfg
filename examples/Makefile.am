include $(top_srcdir)/Makefile.decl

noinst_PROGRAMS = $(EXAMPLE_PROGS)

EXAMPLE_PROGS += \
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
	$(XML_CFLAGS) \
	$(JSON_CFLAGS) \
	$(NULL)

example_LDADD = \
	../cfg/libcfg-0.1.la \
	$(GLIB_LIBS) \
	$(XML_LIBS) \
	$(JSON_LIBS) \
	$(NULL)
