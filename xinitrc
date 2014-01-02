#!/bin/bash

## set french canadian keyboard
setxkbmap -variant fr -layout ca

## urxvtd ##
#urxvtd -q -f -o 

## transparency ##
#xcompmgr -CcFf &

## mpd ##
#mpd &

## color on java interface
wmname LG3D

## export lang
#export LANG=en_CA.UTF-8

## dual screen 
xrandr --output DVI-0 --auto --output DVI-1 --auto --right-of DVI-0

## mute the pc speaker
xset -b

## turn on numlock
numlockx &

#exec dbus-launch --sh-syntax --exit-with-session awesome 
exec dbus-launch --sh-syntax --exit-with-session openbox-session
#exec startxfce4

