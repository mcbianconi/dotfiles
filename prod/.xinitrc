[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

systemctl --user import-environment DISPLAY
xsetroot -solid "#202124"
xrandr --dpi 201
sh ~/.fehbg
exec i3
