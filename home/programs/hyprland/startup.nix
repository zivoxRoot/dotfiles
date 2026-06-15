{ ... }:
{
  wayland.windowManager.hyprland.settings.exec-once = [
    "waybar"
    "clipse -listen"
    "swww-daemon"
    "swaync"
    "udiskie --tray --automount --notify"
    "Telegram"
    "sioyek"
    "foot --app-id=yazi yazi"
    "foot --app-id=calculator qalc"
    "foot --app-id=music-player kew"
  ];
}
