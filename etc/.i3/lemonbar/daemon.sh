#!/usr/bin/env bash
# This is a background service for lemonbar which is used in i3 to provide status
# information to the user. For example the date, cpu usage etc. We use it as
# service to deliver these information to a socket. A parser will read these
# information for displaying it.

#trap 'trap - TERM; kill 0' INT TERM QUIT EXIT

. $(dirname ${0})/lemonbar.conf.sh

# TODO: check for PIDs of the differnt services
# TODO: provide function for running them

# Be sure the working directory exists
mkdir -p "${panel_work}"

# Always re-create the socket if it exists
[ -e "${panel_fifo}" ] && rm "${panel_fifo}"
mkfifo "${panel_fifo}"

# Minimal PID functions
function save_pid() {
	echo ${2} > ${panel_work}/${1}.pid
}
function is_running() {
	pgrep -F ${panel_work}/${1}.pid >/dev/null 2>&1 && return 0
	rm -f ${panel_work}/${1}.pid
	return 1
}

# System information will done by conky
if ! is_running conky; then
	{
		conky -c $(dirname $0)/conky.conf >"${panel_fifo}" & pid=${!};
	}
	save_pid conky ${pid}
fi

# Use xprop to receive all details about windows with focus
if ! is_running xprop; then
	{
		xprop -spy -root _NET_ACTIVE_WINDOW 1> >(sed -un 's/.*\(0x.*\)/XPROP\|\1/p' >"${panel_fifo}") & pid=${!};
	}
	save_pid xprop ${pid}
fi

# We would like to know which workspace is in use
if ! is_running wsp; then
	{
		$(dirname ${0})/workspaces.py >"${panel_fifo}" & pid=${!}
	}
	save_pid wsp ${pid}
fi

wait
