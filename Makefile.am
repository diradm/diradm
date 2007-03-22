# $Header: /code/convert/cvsroot/infrastructure/diradm/Makefile.am,v 1.17 2007/03/22 21:30:53 robbat2 Exp $

ACLOCAL_AMFLAGS = -I m4

SUBDIRS = m4 src testsuite
dist_DOCS = AUTHORS COPYING ChangeLog THANKS CHANGES.prefork README.prefork irixpassword.schema KNOWN-BUGS
# built from README.in
built_DOCS = README
DOCS = $(dist_DOCS) $(built_DOCS)

noinst_DATA = $(built_DOCS)
EXTRA_DIST = configure Makefile.in diradm.spec.in diradm.spec reconf $(dist_DOCS)

CLEANFILES = *~ *.swp diradm.sum diradm.log
MAINTAINERCLEANFILES = Makefile.in

AUTOMAKE_OPTIONS = dejagnu

RUNTESTDEFAULTFLAGS = --tool diradm --srcdir $$srcdir/testsuite -a
