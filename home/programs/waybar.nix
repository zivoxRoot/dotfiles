{...}: {
  programs.waybar = {
    enable = true;

    settings = [
      {
        layer = "top";
        position = "top";
        spacing = 10;

        modules-left = ["niri/workspaces"];
        modules-center = ["clock" "mpris"];
        modules-right = ["pulseaudio" "network" "bluetooth" "battery"];

        "clock" = {
          format = "{:%R}";
          tooltip-format = "<small>{calendar}</small>";
          calendar = {
            mode = "month";
            week-pos = "right";
            format = {
              today = "<span><b><u>{}</u></b></span>";
            };
          };
        };

        "mpris" = {
          format = "{player_icon} {artist} - {title}";
          format-paused = "{artist} - {title}";
          max-length = 25;
          interval = 1;
          player-icon = {
            default = "";
            zen = "";
            mpv = "";
          };
          status-icons = {
            paused = "";
            playing = "▶";
            stopped = "";
          };
          on-click = "playerctl play-pause";
          on-right-click = "playerctl next";
          on-scroll-up = "playerctl previous";
          on-scroll-down = "playerctl position 10+";
        };

        "pulseaudio" = {
          format = "{icon} {volume}%";
          format-muted = " ";
          format-icons = ["" "" ""];
          tooltip = false;
          reverse-scrolling = true;
          on-click = "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle";
        };

        "network" = {
          format-disconnected = "󰤫";
          format-wifi = "{icon} {signalStrength}%";
          format-icons = ["󰤯" "󰤟" "󰤢" "󰤥" "󰤨"];
          format-ethernet = "󰈀";
          format-linked = "{ifname} 󰈀";
          tooltip-format = " {ifname} via {gwaddri}";
          tooltip-format-wifi = " {ifname} @ {essid}\nIP: {ipaddr}\nStrength: {signalStrength}%\nFreq: {frequency}MHz\nUp: {bandwidthUpBits} Down: {bandwidthDownBits}";
          tooltip-format-ethernet = " {ifname}\nIP: {ipaddr}\n up: {bandwidthUpBits} down: {bandwidthDownBits}";
          tooltip-format-disconnected = "Disconnected";
          on-click = "foot impala";
        };

        "bluetooth" = {
          format-on = "";
          format-off = "󰂲";
          format-disabled = "󰂲";
          format-connected = " {device_alias}";
          format-connected-battery = " ({device_battery_percentage}%) {device_alias}";
          max-length = 25;
          tooltip-format = "{controller_alias} {controller_address}\n{num_connections} connected";
          tooltip-format-connected = "{controller_alias} {controller_address}\n{num_connections} connected\n{device_enumerate}";
          tooltip-format-enumerate-connected = "{device_alias} {device_address}";
          tooltip-format-enumerate-connected-battery = "{device_alias} {device_battery_percentage}% {device_address}";
          on-click = "foot bluetui";
        };

        "battery" = {
          interval = 30;
          states = {
            warning = 30;
            critical = 15;
          };
          format = "{icon} {capacity}%";
          format-icons = ["" "" "" "" ""];
          format-charging = "󰂄 {capacity}%";
          max-length = 25;
          tooltip = true;
          tooltip-format = "{timeTo}";
        };
      }
    ];
  };
}
