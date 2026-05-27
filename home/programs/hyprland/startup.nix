{...}: {
  wayland.windowManager.hyprland.settings.exec-once = [
    "waybar"
    "clipse -listen"
    "swww-daemon"
    "swaync"
    "udiskie --tray --automount --notify"
  ];
}
