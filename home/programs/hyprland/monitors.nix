{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    monitor = [
      ",preferred,auto,auto"
      "eDP-1,highres,0x0,1.2"
      "HDMI-A-2,highres,1600x0,2.4"
    ];

    workspace = [
      "1, monitor:eDP-1"
      "2, monitor:HDMI-A-2"
      "3, monitor:HDMI-A-2"
      "4, monitor:HDMI-A-2"
      "5, monitor:HDMI-A-2"
      "6, monitor:HDMI-A-2"
      "7, monitor:HDMI-A-2"
      "8, monitor:HDMI-A-2"
      "9, monitor:HDMI-A-2"
      "10, monitor:HDMI-A-2"
    ];
  };

}
