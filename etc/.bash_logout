# Thomas Merkel <tm@core.io>

# check authorized_keys
test ! -r ~/.ssh/authorized_keys && {
	echo -e "${_color_red}!!${_color_reset}authorized_keys file not readable."
	echo -e "${_color_red}press <ENTER> to launch emergency repair shell"
	read
	sh
}

[ -x $(type -p clear) ] && clear -q
echo -e "\033[1;33m*\033[m \033[1mgoodbye $USER.\033[m"

# vim:ft=sh
