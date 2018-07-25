#!/bin/bash

BATTINFO=`acpi -b`
if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -f 5 -d " "` < 01:00:00 ]] ; then
    DISPLAY=:0.0 /usr/bin/notify-send -i notification-battery-low "Low battery" "$BATTINFO"
fi
