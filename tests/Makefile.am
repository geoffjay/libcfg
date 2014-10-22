include $(top_srcdir)/Makefile.decl

noinst_PROGRAMS = $(TEST_PROGS)

TEST_PROGS += tests

tests_SOURCES = \
	testconfiguration.vala \
	testnode.vala \
	$(NULL)

tests_DEPENDENCIES = \
	$(top_srcdir)/cfg/cfg-0.1.vapi \
	$(NULL)

tests_VALAFLAGS = \
	--basedir $(top_srcdir) \
	--vapidir $(top_srcdir)/cfg \
	--pkg cfg-0.1 @VALA_PACKAGES@ \
	$(NULL)

tests_CPPFLAGS = \
	-I$(top_srcdir)/cfg \
	$(GLIB_CFLAGS) \
	$(XML_CFLAGS) \
	$(JSON_CFLAGS) \
	$(NULL)

tests_LDADD = \
	../cfg/libcfg-0.1.la \
	$(GLIB_LIBS) \
	$(XML_LIBS) \
	$(JSON_LIBS) \
	$(NULL)
