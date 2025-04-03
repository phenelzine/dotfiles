#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#exec openbox-session
#exec ratpoison
exec herbstluftwm

#panel (hopefully will work#
#~/.config/panel.sh &

#keyboard layout#
# setxkbmap it &

#important stuff
exec xinput set-prop "SYNA3602:00 0911:5288 Touchpad" "libinput Tapping Enabled" 1 &
exec xidlehook --not-when-audio --timer 300 '/usr/local/bin/slock' '' &

#compositor 
picom -f &

#wallpaper
feh --bg-scale /usr/share/backgrounds/wallpaper.jpg &

#restart dwm without exiting
while true; do
	ratpoison >/dev/null 2>&1
done

#dwm#
# exec dwm

