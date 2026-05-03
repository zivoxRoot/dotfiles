{...}: {
  imports = [
    ./input.nix
    ./startup.nix
    ./output.nix
    ./layout.nix
    ./rules.nix
    ./binds.nix
  ];
  programs.niri.settings = {
    hotkey-overlay.skip-at-startup = true;
    prefer-no-csd = true;
  };
}
