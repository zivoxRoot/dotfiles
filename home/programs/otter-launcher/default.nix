{ ... }:
{
  programs.otter-launcher.enable = true;

  home.file.".config/otter-launcher/config.toml".source = ./config.toml;
}
