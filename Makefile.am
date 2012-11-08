# $Header: /code/convert/cvsroot/infrastructure/diradm/Makefile.am,v 1.19 2007/11/29 05:47:49 robbat2 Exp $

ACLOCAL_AMFLAGS = -I m4

SUBDIRS = m4 src testsuite man
dist_DOCS = AUTHORS CHANGES.prefork COPYING DEBUGGING DEVELOPMENT INSTALL KNOWN-BUGS NEWS README.prefork THANKS TODO autofs-4.1.3.schema irixpassword.schema samba-3.0.23d.schema
# built from README.in
built_DOCS = README ChangeLog
DOCS = $(dist_DOCS) $(built_DOCS)

noinst_DATA = $(built_DOCS)
EXTRA_DIST = configure diradm.spec Makefile.in $(built_DOCS)

CLEANFILES = *~ *.swp diradm.sum diradm.log

AUTOMAKE_OPTIONS = dejagnu

RUNTESTDEFAULTFLAGS = --tool diradm --srcdir $$srcdir/testsuite -a

distdir = $(PACKAGE_NAME)-$(PACKAGE_VERSION)

ChangeLog:
	git log >$@

check-git-repository:
	git diff --quiet || { echo 'STOP, you have uncommitted changes in the working directory' ; false ; }
	git diff --cached --quiet || { echo 'STOP, you have uncommitted changes in the index' ; false ; }

dist: check-git-repository $(EXTRA_DIST)
	rm -Rf "$(distdir)" "$(distdir)".tar "$(distdir)".tar.bz2
	mkdir "$(distdir)"
	git ls-files -z | xargs -0 cp --no-dereference --parents --target-directory="$(distdir)" \
		$(EXTRA_DIST)
	tar cf "$(distdir)".tar "$(distdir)"
	bzip2 -9v "$(distdir)".tar
	rm -Rf "$(distdir)"
