{ ... }:
{
  networking.hostName = "nixos";

  networking.networkmanager.enable = true;

  networking.wireless.iwd = {
    enable = false;
    settings.General.EnableNetworkConfiguration = true;
  };

  virtualisation.docker.enable = true;
}
