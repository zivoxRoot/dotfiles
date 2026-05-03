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

    ./packages.nix

    ./programs/zen.nix
    ./programs/git.nix
    ./programs/foot.nix
    ./programs/waybar.nix
    ./programs/niri
  ];

  home.stateVersion = "25.11";
}
