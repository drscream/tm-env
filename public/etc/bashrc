# Thomas Merkel <tm@core.io>

##################################################################
# Test for an interactive shell.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive. Be done now!
	return
fi
##################################################################

##
## detect operation system
##
case ${OSTYPE} in
	darwin*)
		TM_OS='Darwin'
		TM_USER=${SUDO_USER:-${USER}}
	;;
	linux*)
		TM_OS='Linux'
		TM_USER=$(stat -c %U $(readlink -f /proc/self/fd/0))
	;;
	solaris*)
		TM_OS='Solaris'
		TM_USER=${SUDO_USER:-${USER}}
	;;
	*)
		TM_OS='Unknown'
		TM_USER=${SUDO_USER:-${USER}}
	;;
esac

##
## set original user home directory
##
if [ ${EUID} -eq 0 ]; then
	TM_HOME=$(grep "^${TM_USER}:" /etc/passwd | cut -d: -f 6)
	if [ -z "${TM_HOME}" ]; then
		TM_HOME=$(eval echo ~${TM_USER})
	fi
else
	TM_HOME=${HOME}
fi

##
## bashdir folder
##
TM_BASHDIR="${TM_HOME}/.bash.d"

##
## export all needed env variables
##
export TM_OS TM_USER TM_HOME TM_BASHDIR

##
## dir colors
##
if [[ -x $(which dircolors 2>/dev/null) ]]; then
	[[ -f /etc/DIR_COLORS ]] && eval $(dircolors -b /etc/DIR_COLORS)
	[[ -f ${HOME}/.dir_colors ]] && eval $(dircolors -b ${HOME}/.dir_colors)
fi

##
## load special files if exists
##
if [ -d "${TM_BASHDIR}" ]; then
	for FILE in options exports functions svn git colors login prompt aliases hosts; do
		if [ -r "${TM_BASHDIR}/${FILE}" ]; then
			. ${TM_BASHDIR}/${FILE}
		fi
	done
fi

##
## keychain check and use
##
if [[ -x $(which keychain 2>/dev/null) ]]; then
	if [[ -f ${HOME}/.ssh/id_rsa ]]; then
		param=${HOME}'/.ssh/id_rsa'
		ssh_src=${HOME}'/.keychain/'${HOST}'-sh'
	fi
	if [[ -f ${HOME}/.gnupg/secring.gpg ]]; then
		param=${param}' E80BF2AB'
		gpg_src=${HOME}'/.keychain/'${HOST}'-sh-gpg'
	fi

	keychain --host ${HOST} --nogui -q ${param}
	[[ -f ${ssh_src} ]] && . ${ssh_src}
	[[ -f ${gpg_src} ]] && . ${gpg_src}
fi
