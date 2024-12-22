# Force locale
export LC_ALL=en_US.UTF-8

# Force extra BIN folder
export PATH=/opt/tools/bin:${PATH}

# Required includes for systemd and dbus
/etc/X11/xinit/xinitrc.d/50-systemd-user.sh
/etc/X11/xinit/xinitrc.d/80-dbus

# Current WM
export WM=dwm

# Force (Hi-)DPI settings
xrandr --dpi 144
export GDK_DPI_SCALE=1.5
export QT_FONT_DPI=144
export QT_AUTO_SCREEN_SCALE_FACTOR=1.5

# Personal fonts
find ~/.fonts/ -type f -name fonts.dir 2>/dev/null | while read fontsdir; do
	font=$(dirname "${fontsdir}")
	xset +fp "${font}"
done
fc-cache

# Another part of Xresources
xrdb ~/.Xresources

# Configure extra keys
setxkbmap -layout gb
xmodmap ~/.xmodmaprc

# Disable console beep, display shutdown, etc.
xset b 0
xset s off
xset dpms 0 0 0

# Wallpaper
feh --no-fehbg --bg-scale ~/.bg.png

# Enable local notify server
~/.bin/scripts/notify-server.py &

# Coredumps yes
ulimit -c 0

# Used for statusbar information in dwm
( conky | while read LINE; do xsetroot -name "$LINE"; done ) &

# Exec ${WM}
exec dbus-launch --sh-syntax --exit-with-session ${WM}

# vim:ft=sh
