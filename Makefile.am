# $Header: /code/convert/cvsroot/infrastructure/diradm/Makefile.am,v 1.9 2005/01/09 12:44:40 robbat2 Exp $

ACLOCAL_AMFLAGS = -I m4

SUBDIRS = m4 src
dist_DOCS = INSTALL AUTHORS COPYING ChangeLog THANKS CHANGES.prefork README.prefork irixpassword.schema
# built from README.in
built_DOCS = README
DOCS = $(dist_DOCS) $(built_DOCS)

noinst_DATA = $(built_DOCS)
EXTRA_DIST = configure Makefile.in diradm.spec.in diradm.spec reconf $(dist_DOCS)

CLEANFILES = *~ *.swp
DISTCLEANFILES = Makefile.in
