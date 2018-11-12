# Force locale
export LC_ALL=en_US.UTF-8

# Force extra BIN folder
export PATH=/opt/tools/bin:${PATH}

# Personal fonts
find ~/.fonts -type f -name fonts.dir 2>/dev/null | while read fontsdir; do
	font=$(dirname "${fontsdir}")
	xset +fp "${font}"
done
fc-cache

# Configure extra keys
xmodmap ~/.xmodmaprc

# Sync all clipboards
clipit --daemon --no-icon &

# Wallpaper
feh --bg-scale ~/.bg.png

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

# WM
exec cwm


# vim:ft=sh
