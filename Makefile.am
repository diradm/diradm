# $Header: /code/convert/cvsroot/infrastructure/diradm/Makefile.am,v 1.13 2006/12/19 07:50:21 robbat2 Exp $

ACLOCAL_AMFLAGS = -I m4

SUBDIRS = m4 src testsuite
dist_DOCS = AUTHORS COPYING ChangeLog THANKS CHANGES.prefork README.prefork irixpassword.schema KNOWN-BUGS
# built from README.in
built_DOCS = README
DOCS = $(dist_DOCS) $(built_DOCS)

noinst_DATA = $(built_DOCS)
EXTRA_DIST = configure Makefile.in diradm.spec.in diradm.spec reconf $(dist_DOCS)

CLEANFILES = *~ *.swp
MAINTAINERCLEANFILES = Makefile.in
