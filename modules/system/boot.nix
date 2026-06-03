{ pkgs, ... }:
{
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # For ddcutil to manage brightness on external monitor
  boot.kernelModules = [ "i2c-dev" ];
  hardware.i2c.enable = true;
  users.users.theophile.extraGroups = [ "i2c" ];

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;
}
