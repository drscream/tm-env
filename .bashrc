# Thomas Merkel <tm@core.io>

##################################################################
# Test for an interactive shell.
if [[ $- != *i* ]]; then
  # Shell is non-interactive. Be done now!
  return
fi
##################################################################

##
## detect operation system
##
case ${OSTYPE} in
darwin*)
  TM_OS='darwin'
  TM_USER=${SUDO_USER:-${USER}}
  ;;
linux*)
  TM_OS='linux'
  TM_USER=$(stat -c %U $(readlink -f /proc/self/fd/0))
  ;;
solaris*)
  TM_OS='solaris'
  TM_USER=${SUDO_USER:-${USER}}
  ;;
freebsd*)
  TM_OS='freebsd'
  TM_USER=${DOAS_USER:-${USER}}
  ;;
openbsd*)
  TM_OS='openbsd'
  TM_USER=${DOAS_USER:-${USER}}
  ;;
*)
  TM_OS='unknown'
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
# use coreutils if they are available
_ls=$(type -P gls ls)
_dircolors=$(type -P gdircolors dircolors)
_grep=$(type -P ggrep grep)

if [[ -x "${_dircolors%%$'\n'*}" ]]; then
  [[ -f /etc/DIR_COLORS ]] && eval $(${_dircolors%%$'\n'*} -b /etc/DIR_COLORS)
  [[ -f ${TM_HOME}/.dir_colors ]] && eval $(${_dircolors%%$'\n'*} -b ${TM_HOME}/.dir_colors)
fi

##
## load special files if exists
##
if [ -d "${TM_BASHDIR}" ]; then
  for FILE in options functions exports svn git colors login prompt aliases hosts; do
    if [ -r "${TM_BASHDIR}/${FILE}" ]; then
      . ${TM_BASHDIR}/${FILE}
    fi
  done
fi

##
## use GnuPG (via Yubikey)
##
gpgconf --launch gpg-agent
gpg-connect-agent updatestartuptty /bye >/dev/null
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
