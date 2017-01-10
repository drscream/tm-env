#!/usr/bin/env bash
# Thomas Merkel <tm@core.io>
# This script should provide additional information for kvm [1] to the
# MacOS menu bar via BitBar [2]. Most important information is the active
# space mode.
# [1] https://github.com/koekeishiya/kwm
# [2] https://github.com/matryer/bitbar

kwmc=/usr/local/bin/kwmc

currentFocus=$($kwmc read focus)
currentMouse=$($kwmc read mouse-follows)
currentMode=$($kwmc query space active mode | tr -d "[]")
tag=$($kwmc read tag)

case "${currentMode}" in
	bsp)
		currentModeIcon=""
		;;
	float)
		currentModeIcon=""
		;;
	# workaround for monocle mode
	*)
		currentModeIcon=""
		;;
esac


if [ "$1" = 'quit' ]; then
  killall kwm
  exit
fi

if [ "$1" = 'reload' ]; then
  $kwmc config reload
  exit
fi

if [ "$1" = 'refresh' ]; then
  $kwmc tree -c refresh
  exit
fi

if [ "$1" = 'bsp' ]; then
  $kwmc space -t bsp
  exit
fi

if [ "$1" = 'monocle' ]; then
  $kwmc space -t monocle
  exit
fi

if [ "$1" = 'float' ]; then
  $kwmc space -t float
  exit
fi

if [ "$1" = 'toggle-autoraise' ]; then
  [[ $currentFocus = "autoraise" ]] && value="disabled" || value="autoraise"
  $kwmc config focus $value
  exit
fi

if [ "$1" = 'toggle-mouse-follows' ]; then
  [[ $currentMouse = "enabled" ]] && value="disable" || value="enable"
  $kwmc config focus mouse-follows $value
  exit
fi


echo "${currentModeIcon} | font=FontAwesome dropdown=false size=20"

echo "---";

echo "  BSP    | font=FontAwesome bash=$0 param1=bsp terminal=false"
echo "  Monocle| font=FontAwesome bash=$0 param1=monocle terminal=false"
echo "  Float  | font=FontAwesome bash=$0 param1=float terminal=false"

echo "---"

echo "Refresh | bash=$0 param1=refresh terminal=false"
echo "Reload  | bash=$0 param1=reload terminal=false"
echo "Quit    | bash=$0 param1=quit terminal=false"

