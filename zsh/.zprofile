if [[ "$(tty)" = "/dev/tty1" ]]; then
    pgrep i3 || startx
fi

if [[ "$(tty)" = "/dev/tty2" ]]; then
    pgrep Hyprland || exec Hyprland
fi

