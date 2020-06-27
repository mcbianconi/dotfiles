#!/usr/bin/env bash

lock() {
  i3lock -n -ti /home/mcbianconi/Imagens/lockscreen.png
}

case "$1" in
    lock)
        i3lock-fancy
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        systemctl suspend
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 [lock|logout|suspend|hibernate|reboot|shutdown]"
        exit 2
esac

exit 0
