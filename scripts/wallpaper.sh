#!/bin/bash

zenity --text="Select Wallpaper" --file-selection | xargs nitrogen --set-zoom-fill
