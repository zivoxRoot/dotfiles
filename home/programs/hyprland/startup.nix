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
    "kitty --app-id=yazi yazi"
    "kitty --app-id=calculator qalc"
    "kitty --app-id=music-player kew"
  ];
}
