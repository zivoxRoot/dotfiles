{...}: {
  services.syncthing = {
    enable = true;
    user = "theophile";
    dataDir = "/home/theophile";
    configDir = "/home/theophile/.config/syncthing";
  };
}
