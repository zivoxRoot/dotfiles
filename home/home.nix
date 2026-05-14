{
  config,
  pkgs,
  lib,
  inputs,
  ...
}: {
  imports = [
    inputs.zen-browser.homeModules.beta
    inputs.otter-launcher.homeModules.default
    inputs.nvf.homeManagerModules.default

    ./packages.nix

    ./scripts

    ./programs/zen.nix
    ./programs/git.nix
    ./programs/nvf.nix
    ./programs/foot.nix
    ./programs/waybar.nix
    ./programs/otter-launcher
    ./programs/clipse.nix
    ./programs/niri
    ./programs/sioyek.nix
    ./programs/bash.nix
    ./programs/swaync.nix
  ];

  home.username = "theophile";
  home.homeDirectory = "/home/theophile";

  home.sessionVariables = {
    MANPAGER = "vim +Man!";
    NIXOS_OZONE_WL = "1";
    EDITOR = "vim";
  };

  home.stateVersion = "25.11";
}
