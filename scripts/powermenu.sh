#!/bin/bash

case "$(echo -e "shutdown\nreboot\nsuspend\nlock" | dmenu -p "power:" -fn JetBrainsMonoNerdFont -l 4 -nb "#101010" -nf "#ffffff" -sb "#b4b4b4" -sf "#000000")" in
shutdown)
  case "$(echo -e "yes\nno" | dmenu -p "confirm?" -fn JetBrainsMonoNerdFont -l 2 -nb "#101010" -nf "#ffffff" -sb "#b4b4b4" -sf "#000000")" in
  yes) systemctl poweroff ;;
  no) exit ;;
  esac
  ;;
reboot)
  case "$(echo -e "yes\nno" | dmenu -p "confirm?" -fn JetBrainsMonoNerdFont -l 2 -nb "#101010" -nf "#ffffff" -sb "#b4b4b4" -sf "#000000")" in
  yes) systemctl reboot ;;
  no) exit ;;
  esac
  ;;
suspend)
  slock &
  systemctl suspend
  ;;
lock) exec slock ;;
esac

