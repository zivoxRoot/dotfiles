{
  config,
  pkgs,
  lib,
  inputs,
  ...
}: {
  home.username = "theophile";
  home.homeDirectory = "/home/theophile";

  imports = [
    ./programs/git.nix
    ./programs/zen.nix
    ./programs/foot.nix
    inputs.zen-browser.homeModules.beta
  ];

  home.packages = with pkgs; [
    nautilus
    alejandra
    pre-commit
    vim
    rofi
    waybar
    xwayland-satellite
    swww
    brightnessctl
    fastfetch
    telegram-desktop
  ];

  home.stateVersion = "25.11";
}
