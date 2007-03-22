# $Header: /code/convert/cvsroot/infrastructure/diradm/src/Makefile.am,v 1.12 2007/03/22 16:28:09 robbat2 Exp $
# Copyright (C) 2004 Robin Hugh Johnson <robbat2@orbis-terrarum.net>
#  
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without 
# modifications, as long as this notice is preserved.
# 
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
BINARY = diradm #superadduser.diradm
HELPER = diradm-mkpasswd.pl
COMPONENTS = diradm.check.sh  diradm.common.sh  diradm.group.sh  diradm.host.sh  diradm.misc.sh  diradm.samba.sh  diradm.user.sh diradm.shadow.sh diradm.automount.sh superadduser.diradm
CONFFILE = diradm.conf
#BUILT_SOURCES = diradm.sh diradm-mkpasswd.pl diradm.conf
#diradm_SOURCES = diradm.sh
#diradm_mkpasswd_SOURCES = diradm-mkpasswd.pl
sbin_SCRIPTS = $(BINARY)
libexec_SCRIPTS = $(HELPER) $(COMPONENTS)
sysconf_DATA = $(CONFFILE)
MAINTAINERCLEANFILES = Makefile.in
