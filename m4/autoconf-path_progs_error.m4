AC_DEFUN([AC_PATH_PROGS_ERROR],
[# begin AC_PATH_PROGS_ERROR($1,$2,[$3])
 #AC_PATH_PROGS([$1],[$2])
 AC_PATH_PROGS([$1],[$2])
 if test -z "${ac_cv_path_$1}" ; then
 	test -z "$3" && error="${ac_word} not found" || error="$3"
 	AC_MSG_ERROR([${error}])
 fi
 AC_SUBST($1)
 # end AC_PATH_PROGS_ERROR($1,$2,[$3])
])
