#!/bin/sh
setxkbmap -option grp:lalt_lshift_toggle,caps:escape -layout us,th &
xinput set-prop 'MSFT0001:00 06CB:CE2D Touchpad' 'libinput Tapping Enabled' 1 &
xinput set-prop 'MSFT0001:00 06CB:CE2D Touchpad' 'libinput Natural Scrolling Enabled' 1 &
hsetroot -solid "#282828" &
exec picom &
exec dunst &
exec slstatus &
exec dwm
