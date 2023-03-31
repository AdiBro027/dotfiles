#!/bin/bash

case "$(echo -e "shutdown\nreboot\nlock" | rofi -dmenu -i -p "Choose" -no-custom -scroll-method 1 -font "JetBrainsMonoNerdFont 11")" in
shutdown)
  case "$(echo -e "yes\nno" | rofi -dmenu -i -p "Are You Sure?" -no-custom -scroll-method 1 -font "JetBrainsMonoNerdFont 11")" in
  yes) systemctl poweroff ;;
  no) exit ;;
  esac
  ;;
reboot)
  case "$(echo -e "yes\nno" | rofi -dmenu -i -p "Are You Sure?" -no-custom -scroll-method 1 -font "JetBrainsMonoNerdFont 11")" in
  yes) systemctl reboot ;;
  no) exit ;;
  esac
  ;;
lock) exec slock ;;
esac

