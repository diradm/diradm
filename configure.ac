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
        [2.3],
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
# ldap stuff now
AC_PATH_PROGS_ERROR(LDAPSEARCH, ldapsearch)
AC_PATH_PROGS_ERROR(LDAPADD, ldapadd)
AC_PATH_PROGS_ERROR(LDAPMODIFY, ldapmodify)
AC_PATH_PROGS_ERROR(LDAPDELETE, ldapdelete)

# find correct extended-expression command for sed
AC_CACHE_CHECK([for sed extended-regexp option],
		[am_cv_sed_extended_regexp],[
if test "x$am_cv_sed_extended_regexp" != "xno"; then
	am_cv_sed_extended_regexp="no"
	for i in E r; do
		$SED -$i -e '1d' </dev/null >/dev/null 2>&1
		if test $? -eq 0; then
			am_cv_sed_extended_regexp="-$i"
		fi
	done
	test "x$am_cv_sed_extended_regexp" == "xno" && AC_MSG_ERROR([No sed with extended-regexp support found!])
fi
])
AC_SUBST([SED_EXTREGEXP],["$am_cv_sed_extended_regexp"])

# we need the Base64 to encode/decode stuff in LDAP
# as there is no way to do it in bash
AC_PROG_PERL_MODULES(	[MIME::Base64], ,
			AC_MSG_ERROR([MIME::Base64 required!]))

# automount stuff
AC_ENABLE(automount, ENABLE_AUTOMOUNT=yes, ENABLE_AUTOMOUNT=no)
AC_SUBST(ENABLE_AUTOMOUNT)

# automount stuff
AC_ENABLE(irix, ENABLE_IRIX=yes, ENABLE_IRIX=no)
AC_SUBST(ENABLE_IRIX)
if test "x$ENABLE_IRIX" != "xno"; then
	AC_MSG_WARN([Ensure you use the bundled irixpassword.schema on your LDAP server!])
fi

# samba stuff
AC_ENABLE(samba, ENABLE_SAMBA=yes, ENABLE_SAMBA=no)
AC_SUBST(ENABLE_SAMBA)
if test "x${ENABLE_SAMBA}" = "xyes"; then
	AC_PROG_PERL_MODULES(	[Crypt::SmbHash], , 
			AC_MSG_ERROR([Crypt::SmbHash required!]))
	AC_PATH_PROGS_ERROR(SAMBA_NET, net)
fi

# output
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

# vim: ts=2 sw=2:
