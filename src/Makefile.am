# $Header: /code/convert/cvsroot/infrastructure/diradm/src/Makefile.am,v 1.2 2004/12/10 03:59:54 robbat2 Exp $
# Copyright (C) 2004 Robin Hugh Johnson <robbat2@orbis-terrarum.net>
#  
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without 
# modifications, as long as this notice is preserved.
# 
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
BINARY=diradm
HELPER=diradm-mkpasswd
CONFFILE=diradm.conf
diradm_SOURCES = diradm.sh
diradm_mkpasswd_SOURCES = diradm-mkpasswd.pl
bin_PROGRAMS = diradm
libexec_PROGRAMS = diradm-mkpasswd
dist_sysconf_DATA = diradm.conf

diradm: diradm.sh
	cp $< $@
diradm-mkpasswd: diradm-mkpasswd.pl
	cp $< $@
