# $Header: /code/convert/cvsroot/infrastructure/diradm/Makefile.am,v 1.3 2004/12/10 03:46:37 robbat2 Exp $
BINARY=diradm
HELPER=diradm-mkpasswd
CONFFILE=diradm.conf
EXTRA_DIST = reconf configure
diradm_SOURCES = diradm.sh
diradm_mkpasswd_SOURCES = diradm-mkpasswd.pl
bin_PROGRAMS = diradm
libexec_PROGRAMS = diradm-mkpasswd
dist_sysconf_DATA = diradm.conf
dist_data_DATA = Makefile.am 

#.PHONY: 
SUBDIRS = m4 src
EXTRA_DIST = configure Makefile.in README INSTALL AUTHORS COPYING

CLEANFILES = *~ *.swp
DISTCLEANFILES = Makefile.in
