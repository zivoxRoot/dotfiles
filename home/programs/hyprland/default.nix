{ ... }:
{
  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.configType = "hyprlang";

  imports = [
    ./monitors.nix
    ./startup.nix
    ./preferences.nix
    ./rules.nix
    ./look.nix
    ./animations.nix
    ./bindings
  ];
}
