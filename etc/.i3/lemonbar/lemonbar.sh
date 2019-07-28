#!/usr/bin/env bash

. $(dirname ${0})/lemonbar.conf.sh

# TODO: check if socket exists
# TODO: Run on primary window only

cat "${panel_fifo}" | while read -r line; do
	# Bash parser for all lines we read
	IFS='|' read -r -a list <<< "${line}"
	case ${list[0]} in
		CONKY)
			## 1 = date | 2 = time | 3 = cpu | 4 = mem | 5 = bat | 6 = vol
			# Date and Time
			_date="%{F${color_sec_b1}}${sep_left}%{F${color_icon} B${color_sec_b1}} %{T2} ${icon_clock}%{F- T1}  ${list[1]}"
			_time="%{F${color_head}}${sep_left}%{F${color_back} B${color_head}}  ${list[2]}  %{F- B-}"

			# System status (cpu and memory)
			_cpu="%{F${color_sec_b2}}${sep_left}%{F${color_icon} B${color_sec_b2}} %{T2} ${icon_cpu}%{F- T1}  ${list[3]}%"
			_mem="%{F${color_icon}${sep_l_left}%{F${color_icon} B${color_sec_b2}} %{T2} ${icon_mem}%{F- T1}  ${list[4]}%"

			# Battery
			# status(on-line|off-line) percent(i%) time(hh:ss|unkown)
			bat=(${list[5]})
			bat_status=${bat[0]}
			bat_life=${bat[1]//%/}
			case ${bat_status} in
				on-line)
					if ((${bat_life} == 100)); then
						bat_icon=${icon_power}
					else
						bat_icon=${icon_plug}
					fi
					;;
				off-line)
					# Parse %
					if ((${bat_life} > 80)); then
						bat_icon=${icon_bat_4}
					elif ((${bat_life} > 60)); then
						bat_icon=${icon_bat_3}
					elif ((${bat_life} > 40)); then
						bat_icon=${icon_bat_2}
					elif ((${bat_life} > 20)); then
						bat_icon=${icon_bat_1}
					else
						bat_icon=${icon_bat_0}
					fi
					;;
				*)
					bat_icon=${icon_bat_0}
					;;
			esac
			
			_bat="%{F${color_sec_b2}}${sep_left}%{F${color_icon} B${color_sec_b2}} %{T2}${bat_icon}%{F- T1}  ${bat_life}%"

			# Sound
			_vol="%{F${color_sec_b1}}${sep_left}%{F${color_icon} B${color_sec_b1}} %{T2}${icon_vol}%{F- T1}  ${list[6]}%"
			;;
		XPROP)
			case ${list[1]} in
				_NET_ACTIVE_WINDOW)
					title_name=""
					WM_CLASS=""
					WM_NAME=""
					if [[ "${list[2]}" != "0x0" ]]; then
						eval $(xprop -f WM_CLASS '0u' '=$0\n' -id ${list[2]} -notype WM_CLASS)
						eval $(xprop -f WM_NAME '0u' '=$0+\n' -id ${list[2]} -notype WM_NAME)
						title_name="${WM_CLASS}: ${WM_NAME}"
					fi
					;;
				_NET_CURRENT_DESKTOP)
					_workspaces="%{F${color_back} B${color_head}} %{T2}${icon_wsp}%{T1}"
					for (( desktop=1; desktop<${number_of_desktops}; desktop++ )); do
						if (( desktop == ${list[2]} )); then
							_workspaces="${_workspaces}%{F${color_head} B${color_wsp}}${sep_right}%{F${color_back} B${color_wsp} T1} ${desktop} %{F${color_wsp} B${color_head}}${sep_right}"
						else
							_workspaces="${_workspaces}%{F${color_disable} T1} ${desktop} "
						fi
					done
					;;
			esac
			_wintitle="%{F${color_head} B${color_sec_b2}}${sep_right}%{F${color_head} B${color_sec_b2} T2} ${icon_prog} %{F${color_sec_b2} B-}${sep_right}%{F- B- T1} ${title_name}"
			;;
	esac

	# Output everything to stdout
	printf "%s\n" "%{l}${_workspaces}${_wintitle}%{r}${_vol}${stab}${_bat}${stab}${_date}${stab}${_time}"
done | ~/development/lemonbar-xft/lemonbar -o 0 -f "${font}" -o -2 -f "${iconfont}" -g "${geometry}" -B "${color_back}" -F "${color_fore}" -d
