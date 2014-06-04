xrandr --auto --output DVI-0 --mode 1920x1080 --left-of DVI-1
setxkbmap -layout ca -variant fr
urxvtd -q -o -f
exec awesome
