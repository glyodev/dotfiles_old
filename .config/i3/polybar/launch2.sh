#!/bin/bash

killall -q polybar

GTK3_CONFIG="$HOME/.config/gtk-3.0/settings.ini"
if grep -q 'WhiteSur-Light' "$GTK3_CONFIG"; then
    polybar --config="$HOME/.config/i3/polybar/config.ini" emi-bar2 &
else
    polybar --config="$HOME/.config/i3/polybar/config-dark2.ini" emi-bar2 &
fi

#$HOME/.config/polybar/theme.sh
