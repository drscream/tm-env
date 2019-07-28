# Force locale
export LC_ALL=en_US.UTF-8

# Force extra BIN folder
export PATH=/opt/tools/bin:${PATH}

# Current WM
export WM=dwm
#export WM=fvwm
#export WM=/home/tm/downloads/hikari/hikari
#export WM=wmaker
#export WM=cwm
#export WM=awesome
#export WM=spectrwm

# Personal fonts
find ~/.fonts/ -type f -name fonts.dir 2>/dev/null | while read fontsdir; do
	font=$(dirname "${fontsdir}")
	xset +fp "${font}"
done
fc-cache

# Configure extra keys
setxkbmap -layout gb
xmodmap ~/.xmodmaprc

# Disable console / terminal beep
xset b 0

# Wallpaper
feh --no-fehbg --bg-scale ~/.bg.png

# Transparency
xcompmgr &

# Enable Dunst notification service
dunst &

# Lock after 5 min
xidle &

# Enable local notify server
~/.bin/scripts/notify-server.py &

# Disable Touchpad (in OpenBSD)
#synclient TouchpadOff=1

# if you have a ThinkPad, the following lines enable TrackPoint
# scrolling by dragging with the middle button (on OpenBSD)
#xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
#xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
#xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

# Used for statusbar information in dwm
( conky | while read LINE; do xsetroot -name "$LINE"; done ) &

# Setup xrandr automatically if docking is used
xrr

# Exec ${WM}
exec dbus-launch --sh-syntax --exit-with-session ${WM}

# vim:ft=sh
