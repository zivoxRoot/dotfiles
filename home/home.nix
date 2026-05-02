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
    inputs.zen-browser.homeModules.beta
    ./programs/zen.nix
    ./programs/git.nix
    ./programs/foot.nix
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
