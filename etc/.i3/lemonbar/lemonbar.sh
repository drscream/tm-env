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
			# C = charging | D = discharging | F = full | E = empty | N / U = unkown
			bat_status=${list[5]:0:1}
			case ${bat_status} in
				C)
					bat_time=${list[5]:3:-2}
					bat_icon=${icon_plug}
					;;
				D)
					# Parse %
					bat_time=${list[5]:3:-2}
					if ((${bat_time} > 80)); then
						bat_icon=${icon_bat_4}
					elif ((${bat_time} > 60)); then
						bat_icon=${icon_bat_3}
					elif ((${bat_time} > 40)); then
						bat_icon=${icon_bat_2}
					elif ((${bat_time} > 20)); then
						bat_icon=${icon_bat_1}
					else
						bat_icon=${icon_bat_0}
					fi
					;;
				F)
					bat_icon=${icon_power}
					bat_time="100"
					;;
				*)
					bat_icon=${icon_bat_0}
					;;
			esac
			
			_bat="%{F${color_sec_b2}}${sep_left}%{F${color_icon} B${color_sec_b2}} %{T2}${bat_icon}%{F- T1}  ${bat_time}%"

			# Sound
			_vol="%{F${color_sec_b1}}${sep_left}%{F${color_icon} B${color_sec_b1}} %{T2}${icon_vol}%{F- T1}  ${list[6]}%"
			;;
		XPROP)
			title_name=""
			if [[ "${list[1]}" != "0x0" ]]; then
				title_name=$(xprop -id ${list[1]} | awk '/_NET_WM_NAME/{$1=$2="";print}' | cut -d'"' -f2)
			fi
			# 1 = window id
			_wintitle="%{F${color_head} B${color_sec_b2}}${sep_right}%{F${color_head} B${color_sec_b2} T2} ${icon_prog} %{F${color_sec_b2} B-}${sep_right}%{F- B- T1} ${title_name}"
			;;
		WORKS)
			# I3 Workspaces
			_workspaces="%{F${color_back} B${color_head}} %{T2}${icon_wsp}%{T1}"
			for (( i=0; i<${#list[@]}; i++ )); do
				case ${list[${i}]} in
					FOC_*)
						_workspaces="${_workspaces}%{F${color_head} B${color_wsp}}${sep_right}%{F${color_back} B${color_wsp} T1} ${list[${i}]#*_} %{F${color_wsp} B${color_head}}${sep_right}"
						;;
					URG_*)
						# TODO: Fix me Later :-)
						;;
					INV_*|VIS_*)
						_workspaces="${_workspaces}%{F${color_disable} T1} ${list[${i}]#*_} "
						;;
				esac
			done
			;;
	esac

	# Output everything to stdout
	printf "%s\n" "%{l}${_workspaces}${_wintitle}%{r}${_cpu}${stab}${_mem}${stab}${_vol}${stab}${_bat}${stab}${_date}${stab}${_time}"
done | lemonbar -f "${font}" -f "${iconfont}" -g "${geometry}" -B "${color_back}" -F "${color_fore}"
