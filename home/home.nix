{
  config,
  pkgs,
  lib,
  inputs,
  ...
}: {
  imports = [
    inputs.zen-browser.homeModules.beta

    ./packages.nix

    ./programs/zen.nix
    ./programs/git.nix
    ./programs/foot.nix
    ./programs/waybar.nix
    ./programs/niri
    ./programs/bash.nix
  ];

  home.username = "theophile";
  home.homeDirectory = "/home/theophile";
  home.stateVersion = "25.11";
}
