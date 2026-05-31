{ ... }:
{
  wayland.windowManager.hyprland.enable = true;

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
