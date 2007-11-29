# $Header: /code/convert/cvsroot/infrastructure/diradm/Makefile.am,v 1.19 2007/11/29 05:47:49 robbat2 Exp $

ACLOCAL_AMFLAGS = -I m4

SUBDIRS = m4 src testsuite man
dist_DOCS = AUTHORS CHANGES.prefork COPYING ChangeLog DEBUGGING DEVELOPMENT INSTALL KNOWN-BUGS NEWS README.prefork THANKS TODO autofs-4.1.3.schema irixpassword.schema samba-3.0.23d.schema
# built from README.in
built_DOCS = README
DOCS = $(dist_DOCS) $(built_DOCS)

noinst_DATA = $(built_DOCS)
EXTRA_DIST = configure Makefile.in diradm.spec.in diradm.spec reconf $(dist_DOCS)

CLEANFILES = *~ *.swp diradm.sum diradm.log
MAINTAINERCLEANFILES = Makefile.in

AUTOMAKE_OPTIONS = dejagnu

RUNTESTDEFAULTFLAGS = --tool diradm --srcdir $$srcdir/testsuite -a
