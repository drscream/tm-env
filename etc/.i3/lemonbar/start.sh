#!/usr/bin/env bash

$(dirname ${0})/daemon.sh &

sleep 5
$(dirname ${0})/lemonbar.sh
