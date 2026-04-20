#!/bin/bash

killall -q polybar

GTK3_CONFIG="$HOME/.config/gtk-3.0/settings.ini"
if grep -q 'WhiteSur-Light' "$GTK3_CONFIG"; then
    polybar --config="$HOME/.config/i3/polybar/config.ini" emi-bar &
else
    polybar --config="$HOME/.config/i3/polybar/config-dark.ini" emi-bar &
fi

<<<<<<< HEAD
#$HOME/.config/polybar/theme.sh
=======
$HOME/.config/polybar/theme.sh
>>>>>>> 58abe29e1dddcb882b312e2e798d23c5997bb438
