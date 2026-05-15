{pkgs, ...}: {
  home.packages = with pkgs; [
    sunsetr
  ];

  home.file.".config/sunsetr/sunsetr.toml".source = ./sunsetr.toml;
}
