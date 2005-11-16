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
        [2.5.1],
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
AC_PATH_PROGS_ERROR(SORT, sort)
# ldap stuff now
AC_PATH_PROGS_ERROR(LDAPSEARCH, ldapsearch)
AC_PATH_PROGS_ERROR(LDAPADD, ldapadd)
AC_PATH_PROGS_ERROR(LDAPMODIFY, ldapmodify)
AC_PATH_PROGS_ERROR(LDAPDELETE, ldapdelete)

# find correct extended-expression command for sed
AC_CACHE_CHECK([for sed extended-regexp option],
		[ac_cv_sed_extended_regexp],[
if test "x$ac_cv_sed_extended_regexp" != "xno"; then
	ac_cv_sed_extended_regexp="no"
	for i in E r; do
		$SED -$i -e '1d' </dev/null >/dev/null 2>&1
		if test $? -eq 0; then
			ac_cv_sed_extended_regexp="-$i"
		fi
	done
	test "x$ac_cv_sed_extended_regexp" == "xno" && AC_MSG_ERROR([No sed with extended-regexp support found!])
fi
])
AC_SUBST([SED_EXTREGEXP],["$ac_cv_sed_extended_regexp"])

# we need the Base64 to encode/decode stuff in LDAP
# as there is no way to do it in bash
AC_PROG_PERL_MODULES(	[MIME::Base64], , AC_MSG_ERROR([MIME::Base64 required!]))

# automount stuff
AC_MSG_CHECKING(whether to enable Automount support)
AC_ARG_ENABLE(automount, [  --enable-automount      Enable Automount support], [ac_cv_enable_automount="$enableval"], [ac_cv_enable_automount="no"]) 
AC_MSG_RESULT([$ac_cv_enable_automount])
AC_SUBST([ENABLE_AUTOMOUNT],["$ac_cv_enable_automount"])
if test "x$ENABLE_AUTOMOUNT" != "xno"; then
	AC_MSG_WARN([Ensure you use autofs.schema on your LDAP server!])
fi

# automount stuff
AC_MSG_CHECKING(whether to enable IRIX passwd support)
AC_ARG_ENABLE(irixpasswd, [  --enable-irixpasswd      Enable IRIX passwd support], [ENABLE_IRIXPASSWD="$enableval"], [ENABLE_IRIXPASSWD="no"]) 
AC_MSG_RESULT([$ENABLE_IRIXPASSWD])
AC_SUBST(ENABLE_IRIXPASSWD)
if test "x$ENABLE_IRIXPASSWD" != "xno"; then
	AC_MSG_WARN([Ensure you use the bundled irixpassword.schema on your LDAP server!])
fi

# samba stuff
AC_MSG_CHECKING(whether to enable Samba support)
AC_ARG_ENABLE(samba, [  --enable-samba          Enable Samba support], [ENABLE_SAMBA="$enableval"], [ENABLE_SAMBA="no"]) 
AC_MSG_RESULT([$ENABLE_SAMBA])
AC_SUBST(ENABLE_SAMBA)
if test "x${ENABLE_SAMBA}" = "xyes"; then
	AC_PROG_PERL_MODULES(	[Crypt::SmbHash], , AC_MSG_ERROR([Crypt::SmbHash required!]))
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
   src/diradm.automount.sh
   src/diradm.check.sh
   src/diradm.common.sh
   src/diradm.group.sh
   src/diradm.host.sh
   src/diradm.misc.sh
   src/diradm.samba.sh
   src/diradm.user.sh
   src/diradm.shadow.sh
])
AC_CONFIG_FILES([src/diradm], [chmod +x src/diradm])
AC_CONFIG_FILES([src/diradm-mkpasswd.pl], [chmod +x src/diradm-mkpasswd.pl])

AC_OUTPUT

# vim: ts=2 sw=2:
