# $Header: /code/convert/cvsroot/infrastructure/diradm/Makefile.am,v 1.1 2004/12/10 03:12:50 robbat2 Exp $
BINARY=diradm
HELPER=diradm-mkpasswd
CONFFILE=diradm.conf
diradm_SOURCES = diradm.sh
bin_PROGRAMS = diradm
libexec_PROGRAMS = $(HELPER)
dist_sysconf_DATA = diradm.conf
dist_data_DATA = Makefile.am Makefile
prefix=/usr/local
exec_prefix=$(prefix)
bindir=$(exec_prefix)/bin
sbindir=$(exec_prefix)/sbin
libexecdir=$(exec_prefix)/libexec
sysconfdir=$(prefix)/etc
datadir=$(exec_prefix)/share/doc/$(PN)-$(VER)



installdirs:
	$(INSTALL) -m0755 -d \
		$(DESTDIR)$(sbindir) $(DESTDIR)$(sysconfdir) \
		$(DESTDIR)$(libexecdir) $(DESTDIR)$(mandir) \
		$(DESTDIR)$(datadir)

	
install-sbin: install-dir $(BINARY)
	$(INSTALL_PROGRAM) $(BINARY) $(DESTDIR)$(sbindir)/$(BINARY)

install-libexec: install-dir $(HELPER)
	$(INSTALL_PROGRAM) $(HELPER) $(DESTDIR)$(libexecdir)/$(HELPER)

install-sysconf: install-dir $(CONFFILE)
	$(INSTALL_DATA) $(CONFFILE) $(DESTDIR)$(sysconfdir)/$(CONFFILE)

install-data: install-dir
	$(INSTALL_DATA) README* $(DESTDIR)$(datadir)

install: install-data install-sysconf install-sbin install-libexec

#.PHONY: 
