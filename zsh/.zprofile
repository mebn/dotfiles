if [[ "$(tty)" = "/dev/tty1" ]]; then
    pgrep Hyprland || exec Hyprland
fi

if [[ "$(tty)" = "/dev/tty2" ]]; then
    pgrep i3 || startx
fi

