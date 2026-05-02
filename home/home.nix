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
    ./programs/waybar.nix
  ];

  home.packages = with pkgs; [
    inputs.ayugram-desktop.packages.${pkgs.system}.ayugram-desktop
    inputs.gazelle.packages.${pkgs.system}.default
    nautilus
    alejandra
    pre-commit
    vim
    rofi
    xwayland-satellite
    swww
    brightnessctl
    fastfetch
    bluez
    bluetui
    impala
  ];

  home.stateVersion = "25.11";
}
