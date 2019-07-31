#!/bin/bash

# Save this script into set_colors.sh, make this file executable and run it:
#
# $ chmod +x set_colors.sh
# $ ./set_colors.sh
#
# Alternatively copy lines below directly into your shell.

gconftool-2 --set /apps/gnome-terminal/profiles/Default/use_theme_background --type bool false
gconftool-2 --set /apps/gnome-terminal/profiles/Default/use_theme_colors --type bool false
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/background_color '#0d0d19192626'
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/foreground_color '#d9d9e6e6f2f2'
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/palette '#000000000000:#b1b100000000:#0000b1b10000:#b1b1b1b10000:#00000000b1b1:#b1b10000b1b1:#0000b1b1b1b1:#d9d9d9d9d9d9:#262626262626:#ffff0e0e0e0e:#0e0effff0e0e:#ffffffff0e0e:#0e0e0e0effff:#ffff0e0effff:#0e0effffffff:#ffffffffffff'