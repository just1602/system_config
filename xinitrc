#!/bin/bash

. ~/.github_token.sh

## urxvtd ##
urxvtd -q -f -o 

## transparency ##
xcompmgr -CcFf &

## mpd ##
mpd &

## color on java interface
wmname LG3D

## export lang
export LANG=en_CA.UTF-8

## dual screen 
xrandr --output DVI-0 -s 3840x1080
xrandr --output DVI-0 --mode 1920x1080
xrandr --output DVI-1 --mode 1920x1080
xrandr --output DVI-1 --left-of DVI-0

#exec ck-launch-session dbus-launch --sh-syntax --exit-with-session awesome 
exec ck-launch-session dbus-launch --sh-syntax --exit-with-session openbox-session

thunderbird &
