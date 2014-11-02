include $(top_srcdir)/Makefile.decl
ACLOCAL_AMFLAGS = -I m4

if ENABLE_DOC
DOC_SUBDIR = \
	docs \
	$(NULL)
endif

if ENABLE_EXAMPLES
EXAMPLES_SUBDIR = \
	examples \
	$(NULL)
endif

SUBDIRS = \
	cfg \
	vapi \
	$(DOC_SUBDIR) \
	$(EXAMPLES_SUBDIR) \
	$(NULL)

cfg_configdir = $(libdir)/cfg-0.1/include
cfg_config_DATA = config.h

pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = cfg-0.1.pc

dist-hook: gen-ChangeLog

gen_start_date = 2014-10-22
.PHONY: gen-ChangeLog
gen-ChangeLog:
	if test -d .git; then \
	  $(top_srcdir)/gitlog-to-changelog \
		--since=$(gen_start_date) > $(distdir)/cl-t; \
	  rm -f $(distdir)/ChangeLog; \
	  mv $(distdir)/cl-t $(distdir)/ChangeLog; \
	fi

EXTRA_DIST += \
	gitlog-to-changelog \
	MAINTAINERS \
	cfg-0.1.pc.in \
	$(NULL)
