# Copyright (C) 2004-2005 Robin Hugh Johnson <robbat2@orbis-terrarum.net>
#  
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without 
# modifications, as long as this notice is preserved.
# 
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

AC_PREREQ(2.59)
AC_INIT([diradm],
        [2.2],
        [Robin Hugh Johnson robbat2@orbis-terrarum.net],
        [diradm])
AC_CONFIG_AUX_DIR(config)
AC_CONFIG_MACRO_DIR(m4)
AM_CONFIG_HEADER(config.h)
AM_INIT_AUTOMAKE([dist-bzip2 foreign])

AC_SYS_INTERPRETER 
AC_SYS_LONG_FILE_NAMES 

#AC_PATH_PROGS_ERROR(TESTIT, testit)
#AC_PATH_PROGS_ERROR(TESTIT, testit, [custom testit not found])

AC_PATH_PROGS_ERROR(AWK, gawk awk nawk)
AC_PATH_PROGS_ERROR(EGREP, egrep)
AC_PATH_PROGS_ERROR(FGREP, fgrep)
AC_PATH_PROGS_ERROR(TAIL, tail)
AC_PATH_PROGS_ERROR(HEAD, head)
AC_PATH_PROGS_ERROR(GREP, grep)
AC_PATH_PROGS_ERROR(BASHSH, bash sh)
AC_PATH_PROGS_ERROR(FALSE, false)
AC_PATH_PROGS_ERROR(SED, sed)
AC_PATH_PROGS_ERROR(CUT, cut)
AC_PATH_PROGS_ERROR(PERL, perl)
AC_PATH_PROGS_ERROR(STAT, stat)
AC_PATH_PROGS_ERROR(DATE, date)
AC_PATH_PROGS_ERROR(WHOAMI, whoami)
AC_PATH_PROGS_ERROR(UNIQ, uniq)
dnl ldap stuff now
AC_PATH_PROGS_ERROR(LDAPSEARCH, ldapsearch)
AC_PATH_PROGS_ERROR(LDAPADD, ldapadd)
AC_PATH_PROGS_ERROR(LDAPMODIFY, ldapmodify)
AC_PATH_PROGS_ERROR(LDAPDELETE, ldapdelete)


AC_ENABLE(samba, ENABLE_SAMBA=yes, ENABLE_SAMBA=no)
AC_SUBST(ENABLE_SAMBA)
AC_PROG_PERL_MODULES(	[MIME::Base64], ,
			AC_MSG_ERROR([MIME::Base64 required!]))
AC_PROG_PERL_MODULES(	[Crypt::SmbHash], , 
			AC_MSG_ERROR([Crypt::SmbHash required!]))
if test "x${ENABLE_SAMBA}" = "xyes"; then
	AC_PATH_PROGS_ERROR(SAMBA_NET, net)
fi

AC_CONFIG_FILES([
   Makefile
   README
   diradm.spec
   src/Makefile
   m4/Makefile
   src/diradm.conf
   src/diradm.check.sh
   src/diradm.common.sh
   src/diradm.group.sh
   src/diradm.host.sh
   src/diradm.misc.sh
   src/diradm.samba.sh
   src/diradm.user.sh
])
AC_CONFIG_FILES([src/diradm], [chmod +x src/diradm])
AC_CONFIG_FILES([src/diradm-mkpasswd.pl], [chmod +x src/diradm-mkpasswd.pl])

AC_OUTPUT
