# Copyright (C) 2004 Robin Hugh Johnson <robbat2@orbis-terrarum.net>
#  
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without 
# modifications, as long as this notice is preserved.
# 
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

AC_INIT([diradm],
        [0.0.1],
        [Robin Hugh Johnson robbat2@orbis-terrarum.net],
        [diradm])
AC_CONFIG_AUX_DIR(config)
AC_CONFIG_MACRO_DIR(m4)
AM_CONFIG_HEADER(config.h)
AM_INIT_AUTOMAKE([dist-bzip2])

#AC_AIX
#AC_MINIX
#AC_STDC_HEADERS
#AC_ISC_POSIX

AC_PROG_AWK 
AC_PROG_EGREP 
AC_PROG_FGREP 
AC_SYS_INTERPRETER 
AC_SYS_LONG_FILE_NAMES 

#AC_PATH_PROGS_ERROR(TESTIT, testit)
#AC_PATH_PROGS_ERROR(TESTIT, testit, [custom testit not found])

AC_PATH_PROGS_ERROR(BASHSH, bash sh)
AC_PATH_PROGS_ERROR(SED, sed)
AC_PATH_PROGS_ERROR(PERL, perl)
AC_PATH_PROGS_ERROR(STAT, stat)
AC_PATH_PROGS_ERROR(LDAPSEARCH, ldapsearch)
AC_PATH_PROGS_ERROR(LDAPADD, ldapadd)
AC_PATH_PROGS_ERROR(LDAPMODIFY, ldapmodify)
AC_PATH_PROGS_ERROR(LDAPDELETE, ldapdelete)
AC_PROG_PERL_MODULES(	[MIME::Base64], ,
			AC_MSG_ERROR([MIME::Base64 required!]))
AC_PROG_PERL_MODULES(	[Crypt::SmbHash], , 
			AC_MSG_ERROR([Crypt::SmbHash required!]))

AC_CONFIG_FILES([
   Makefile
   README
   src/Makefile
   m4/Makefile
   src/diradm
   src/diradm-mkpasswd.pl
   src/diradm.conf
])

AC_OUTPUT
