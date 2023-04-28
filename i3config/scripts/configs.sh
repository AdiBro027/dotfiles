#!/bin/bash

case "$(printf 'Polybar Reload\nPolybar Config' | dmenu -i -p 'Choose' -fn JetBrainsMonoNerdFont -nb '#101010' -nf '#d4d4d4' -sb '#808080' -sf '#000000' )" in

    'Polybar Reload') $HOME/.config/polybar/launch.sh ;;
    'Polybar Config') alacritty -e nvim $HOME/.config/polybar/config.ini ;;
    *) exit 1 ;;
esac
