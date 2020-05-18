[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

xsetroot -solid "#000000" &
xrandr --output HDMI-1-1 --left-of eDP-1-1 --auto &
compton -b &
exec i3
