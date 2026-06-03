{ ... }:
{
  programs.niri.settings = {
    outputs."eDP-1" = {
      mode = {
        width = 1920;
        height = 1080;
        refresh = 120.030;
      };
      position = {
        x = 1080;
        y = 0;
      };
      scale = 1.3;
    };

    outputs."HDMI-A-2" = {
      mode = {
        width = 3840;
        height = 2160;
        refresh = 29.281;
      };
      scale = 2.5;
    };
  };
}
