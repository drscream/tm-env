#!/usr/bin/env bash
# i3 panel config. Powerline style.
PATH=${HOME}/.bin/$(uname | tr A-Z a-z):${PATH}

# fifo to talk between daemon and listener
panel_fifo="/tmp/i3_lemonbar/${USER}/fifo"
panel_work="/tmp/i3_lemonbar/${USER}/work"

# default colours used for powerline
color_back="#FF1D1F21"              # Default background
color_fore="#FFC5C8C6"              # Default foreground
color_head="#FFB5BD68"              # Background for first element
color_sec_b1="#FF282A2E"            # Background for section 1
color_sec_b2="#FF454A4F"            # Background for section 2
color_sec_b3="#FF60676E"            # Background for section 3
color_icon="#FF979997"              # For icons
color_mail="#FFCE935F"              # Background color for mail alert
color_chat="#FFCC6666"              # Background color for chat alert
color_cpu="#FF5F819D"               # Background color for cpu alert
color_disable="#FF1D1F21"           # Foreground for disable elements
color_wsp="#FF8C9440"               # Background for selected workspace

#default space between sections
stab='    '

# Char glyps for powerline fonts
sep_left=""                        # Powerline separator left
sep_right=""                       # Powerline separator right
sep_l_left=""                      # Powerline light separator left
sep_l_right=""                     # Powerline light sepatator right

# Icon glyphs from Terminusicons2
icon_clock=''
icon_cal=''
icon_bat_0='' #0-20
icon_bat_1='' #21-40
icon_bat_2='' #41-60
icon_bat_3='' #61-80
icon_bat_4='' #81-100
icon_plug=''
icon_power=''
icon_db=''
icon_square=''
icon_cpu=''
icon_mem=''
icon_vol=''
icon_prog=''
icon_wsp=''

# Size and fonts
geometry="x14"
#font="-xos4-terminesspowerline-medium-r-normal--12-120-72-72-c-60-iso10646-1"
font="Terminess Powerline:size=8"
iconfont="FontAwesome:size=8"
