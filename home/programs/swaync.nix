{...}: {
  services.swaync = {
    enable = true;

    settings = {
      layer = "overlay";
      positionX = "right";
      positionY = "top";
      timeout = 5;
      timeout-low = 3;
      timeout-critical = 10;
      control-center-margin-top = 0;
      control-center-margin-bottom = 0;
      control-center-margin-right = 0;
      control-center-margin-left = 0;
      control-center-layer = "top";
      layer-shell = true;
      cssPriority = "user";
      hide-on-action = false;
      script-fail-notify = true;
      ignore-gtk-theme = true;
      widgets = [
        "dnd"
        "mpris"
        "volume"
        "backlight"
        "notifications"
      ];
      widget-config = {
        mpris = {
          image-size = 96;
          image-radius = 12;
        };
        volume = {
          label = "󰕾";
        };
        backlight = {
          label = "";
        };
      };
    };
  };
}
