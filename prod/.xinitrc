[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

systemctl --user import-environment DISPLAY &
xsetroot -solid "#000000" &
xrandr --dpi 201 &
compton -b &
exec i3
