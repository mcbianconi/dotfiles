#!/usr/bin/env bash

mode="$1"

save_path="/home/mcbianconi/images/screenshots/"

msg_snippet_title="Screenshot snippet taken!"
msg_full_title="Screenshot taken!"
msg_content="Saved to ${save_path}"

case "${mode}" in
  --snippet|-s)
    flameshot -p "${save_path}" && \
    notify-send -i /home/mcbianconi/images/icons/screenshot.png -t 5000 -u normal "${msg_snippet_title}" "${msg_content}"
    ;;
  --full|-f)
    flameshot full -p "${save_path}"
    -d 500 && \
    notify-send -i /home/mcbianconi/images/icons/screenshot.png -t 5000 -u normal "${msg_full_title}" "${msg_content}"
    ;;
  *)
    echo "Invalid option. Exiting"
    ;;
esac
