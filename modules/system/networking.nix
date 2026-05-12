{...}: {
  networking.hostName = "nixos";

  networking.wireless.iwd = {
    enable = true;
    settings.General.EnableNetworkConfiguration = true;
  };

  virtualisation.docker.enable = true;
}
