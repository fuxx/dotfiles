#!/usr/bin/env zsh


xrandr --output DP-0 --mode 1920x1080 --rate 60.00 --rotate normal --pos 0x0 --primary
#xrandr --output DP-2 --mode 2560x1440 --rate 144.00 --rotate normal --pos 2560x0

xrandr --output eDP1 --mode 1920x1080 --pos 0x0 --primary

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

feh --randomize --bg-fill --recursive --no-fehbg ~/Pictures/wallpapers/*.(png|jpg)

xsetroot -xcf /usr/share/icons/Adwaita/cursors/left_ptr 16

export SUDO_ASKPASS=~/bin/askpass

exec bspwm
