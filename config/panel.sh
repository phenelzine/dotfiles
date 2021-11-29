#!/bin/sh

XPOS=0
WIDTH=1920
HEIGHT=16
FONT="terminus-12"
FG="#575B70"
BG="#131C26"

GREEN="^fg(#5AF78E)^bg()"
YELLOW="^fg(#F4F99D)^bg()"
RED="^fg(#FF6E67)^bg()"
WHITE="^fg(#E6E6E6)^bg()"
PINK="^fg(#FF92D0)^bg()"
BLUE="^fg(#9AEDFE)^bg()"
MAGENTA="^fg(#CAA9FA)^bg()"


CLEAN="^fg()^bg()"

while true; do

	XWINDOW=$(echo "Active Window: `echo $(xdotool getwindowfocus getwindowname)`")
	TIME=$(echo "Date: `echo $(date +"%a %d %B at %R")`")
	BATTERYLINE=$(echo "Battery: `cat /sys/class/power_supply/BAT0/capacity `%")		
	KERNEL=$(echo "Kernel: `echo $(uname -r)`")
	UPDATES=$(echo "Updates: `echo $(checkupdates | wc -l)`")
	UPTIME=$(echo "Uptime: `echo $(uptime -p)`")
	WIFILINE=$(echo "WiFi: `echo $(iw dev wlan0 info | grep ssid | awk '{print $2}')`")

	xsetroot -name "  $BATTERYLINE  |  $TIME  |  $KERNEL  |  $UPDATES  |  $WIFILINE  |  $UPTIME "

	sleep 1	

done 

