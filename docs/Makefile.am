include $(top_srcdir)/Makefile.decl
include Makefile.sphinx

SRC_DIR = $(top_srcdir)/cfg

vapidir=/usr/share/vala-`valac --version | sed -n 's/Vala.\([0-9]\.[0-9][0-9]\).*/\1/p'`/vapi
docdir=$(datadir)/devhelp/references/cfg-0.1
innerdocdir=$(datadir)/devhelp/references/cfg-0.1/cfg-0.1
imgdir=$(datadir)/devhelp/references/cfg-0.1/cfg-0.1/img

doc_data = \
	cfg-0.1/*.css \
	cfg-0.1/*.png \
	$(NULL)

doc_DATA = \
	cfg-0.1/index.html \
	$(doc_data) \
	$(NULL)

innerdoc_DATA = \
	cfg-0.1/cfg-0.1/index.htm \
	cfg-0.1/cfg-0.1/*.html \
	$(NULL)

img_DATA = \
	cfg-0.1/cfg-0.1/img/*.png \
	$(NULL)

$(doc_data) $(innerdoc_DATA) $(img_DATA): cfg-0.1/index.html

cfg-0.1/index.html:
	$(VALADOC) -o cfg-0.1/ --wiki ./ --force -b $(top_srcdir) $(SRC_DIR)/*.vala --pkg=gee-1.0 --pkg=libxml-2.0 --pkg=json-glib-1.0 --pkg=build-config --vapidir=$(vapidir) --vapidir=../vapi --target-glib 2.32

EXTRA_DIST += \
	$(NULL)
