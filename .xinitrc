#!/bin/bash
nitrogen --restore & 
setxkbmap -option grp:alt_shift_toggle -layout us,th &
battery(){
	cat /sys/class/power_supply/BAT0/capacity
}
while true; do
	xsetroot -name "  $(battery)% $(date +" %Y/%m/%d  %H:%M:%S")"
	sleep 1s
done &
exec dwm


