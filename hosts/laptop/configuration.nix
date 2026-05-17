{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    # Hardware
    ./hardware.nix

    # Desktop
    ../../modules/desktop/stylix.nix
    ../../modules/desktop/xkb.nix
    ../../modules/desktop/niri.nix
    ../../modules/desktop/mango.nix
    ../../modules/desktop/zsh.nix
    ../../modules/desktop/usb.nix

    # Services
    ../../modules/services/ssh.nix
    ../../modules/services/greeter.nix
    ../../modules/services/bluetooth.nix
    ../../modules/services/kanata.nix
    ../../modules/services/syncthing.nix

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
