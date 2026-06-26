{
  config,
  pkgs,
  inputs,
  ...
}:
{
  imports = [
    # Hardware
    ./hardware.nix

    # Desktop
    ../../modules/desktop/xkb.nix
    ../../modules/desktop/mango.nix
    ../../modules/desktop/hyprland.nix
    ../../modules/desktop/zsh.nix
    ../../modules/desktop/usb.nix
    ../../modules/desktop/wireshark.nix

    # Services
    ../../modules/services/ssh.nix
    ../../modules/services/greeter.nix
    ../../modules/services/upower.nix
    ../../modules/services/bluetooth.nix
    ../../modules/services/kanata.nix
    ../../modules/services/syncthing.nix
    ../../modules/services/printing.nix

    # System
    ../../modules/system/nix.nix
    ../../modules/system/nix-cache.nix
    ../../modules/system/boot.nix
    ../../modules/system/locale.nix
    ../../modules/system/networking.nix

    # User
    ../../modules/user/theophile.nix
  ];

  system.stateVersion = "25.11";
}
