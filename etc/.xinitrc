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

# Socks Proxy
autossh -f -M 0 -6 -N -Dlocalhost:7070 tmerkel@embassy.doc.fruky.net

# Lock after 5 min
xautolock -time 5 -locker slock &

# Enable local notify server
~/.bin/scripts/notify-server.py &

# Disable Touchpad (via BIOS for now)
#sysctl hw.psm.synaptics.min_pressure=220 # 22

# Somehow information are helpful in the status bar
( conky | while read LINE; do xsetroot -name "$LINE"; done ) &

# WM (dwm require fifo in my setup)
mkfifo /tmp/dwm.fifo
exec dwm


# vim:ft=sh
