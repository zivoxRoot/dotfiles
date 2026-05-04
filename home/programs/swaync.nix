{...}: {
  services.swaync = {
    enable = true;

    settings = {
      layer = "overlay";
    };
  };
}
