# Force locale
export LC_ALL=en_US.UTF-8

# Force extra BIN folder
export PATH=/opt/tools/bin:${PATH}

# Personal fonts
find ~/.fonts/ -type f -name fonts.dir 2>/dev/null | while read fontsdir; do
	font=$(dirname "${fontsdir}")
	xset +fp "${font}"
done
fc-cache

# Configure extra keys
xmodmap ~/.xmodmaprc

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

# Disable Touchpad
synclient TouchpadOff=1

# if you have a ThinkPad, the following lines enable TrackPoint
# scrolling by dragging with the middle button.
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

# WM
exec cwm


# vim:ft=sh
