#!@FALSE@
# $Header: /code/convert/cvsroot/infrastructure/diradm/src/Attic/diradm.misc.sh,v 1.1 2005/01/09 07:01:49 robbat2 Exp $
# vim: ts=4 sts=4 noexpandtab sw=4 ft=sh syntax=sh:
# This contains all of the functions specific to the host sub-system.

print_usage_sub() {
	func="$1"
	case "$func" in
	useradd)
	echo " diradm useradd [-u uid [-o]] [-g group] [-G group,...] [-h hosts]"
	echo "                [-d home] [-s shell] [-c comment] [-m [-k template]]"
	echo "                [-f inactive] [-e expire] [-p passwd] [-E email] name"
	;;
	usermod)
	echo " diradm usermod [-u uid [-o]] [-g group] [-G group,...] [-h hosts]"
	echo "                [-d home [-m]] [-s shell] [-c comment] [-l new_name]"
	echo "                [-f inactive] [-e expire ] [-p passwd] [-L|-U]"
	echo "                [-E email] name"
	;;
	userdel)
	echo " diradm userdel [-r] name"
	;;
	groupadd)
	echo " diradm groupadd [-g gid [-o]] group"
	;;
	groupmod)
	echo " diradm groupmod [-g gid [-o]] [-n name] group"
	;;
	groupdel)
	echo " diradm groupdel group"
	;;
	chsh)
	echo " diradm chsh [-s login_shell] name"
	;;
	chfn)
	echo " diradm chfn [-f full_name] [-r room_no] [-w work_ph] [-h home_ph]" 
	echo "             [-o other] name"
	;;
	chage)
	echo " diradm chage [-m mindays] [-M maxdays] [-d lastday] [-I inactive]"
	echo "              [-E expiredate] [-W warndays] user"
	echo " diradm chage -l user"
	;;
	gpasswd)
	echo " diradm gpasswd group"
	echo " diradm gpasswd -a user group"
	echo " diradm gpasswd -d user group"
	echo " diradm gpasswd -R group"
	echo " diradm gpasswd -r group"
	echo " diradm gpasswd [-A user,...] [-M user,...] group"
	;;
	smbhostadd)
	echo " diradm smbhostadd [-r RID] host"
	;;
	smbhostdel)
	echo " diradm smbhostdel host"
	;;
	hostadd)
	echo " diradm hostadd [-i IP,...] [-e MAC,...] [-a othername,...] host"
	;;
	hostmod)
	echo " diradm hostmod [-i add-IP,...] [-I del-IP,...] [-e add-MAC,...]"
	echo "                [-E del-MAC,...] [-a add-othername,...]"
	echo "                [-A del-othername,...] [-n newname] host"
	;;
	hostdel)
	echo " diradm hostdel host"
	;;
	check)
	echo " diradm check [self|config]   Run tests for: ALL/self/config"
	;;
	version)
	echo " diradm version   Print diradm version number, then exit"
	;;
	help)
	echo " diradm help [command1]...    Print help, then exit"
	;;
	_)
	echo
	;;
	*)
	echo "Unknown command!"
	exit 1
	;;
	esac
}

print_usage() {
	list=''
	[ -n "$*" ] && list="$@"
	echo "Usage:"
	if [ -z "$list" -o "$list" == "_all" ]; then
		list="useradd _ usermod _ userdel _ groupadd groupmod groupdel _ chsh _ chfn _ chage _ gpasswd _ hostadd hostmod hostdel"
		[ "$ENABLE_SAMBA" = "yes" ] && list="${list} _ smbhostadd smbhostdel"
		list="${list} _ check version help _"
	fi
	for i in $list; do
		print_usage_sub ${i}
	done;
}

version() {
	echo "diradm ${VERSION}"
	echo "Copyright (C) 2003 Daniel Himler <dan@hits.at>"
	echo "Copyright (C) 2003-2005 Robin H. Johnson <robbat2@orbis-terrarum.net>"
	echo "Copyright (C) 2003-2004 Patrick Lougheed <pat@tfsb.org>"
	echo "This is free software; see the source for copying conditions.  There is NO"
	echo "warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE."
}

help() {
	[ -z "${modulename}" ] && modulename="help"
	print_usage "${@}"
	exit 0
}

_revision() {
	echo ${CVS_REVISION}
	exit 0
}
_date() {
	echo ${CVS_DATE}
	exit 0
}
_header() {
	echo ${CVS_HEADER}
	exit 0
}
