{...}: {
  programs.waybar = {
    enable = true;

    settings = [
      {
        layer = "top";
        position = "top";
        spacing = 10;

        modules-left = [
          "ext/workspaces"
          "mpris"
        ];
        modules-center = ["clock"];
        modules-right = [
          "custom/notification"
          "pulseaudio"
          "network"
          "bluetooth"
          "battery"
        ];

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

        "custom/notification" = {
          tooltip = true;
          format = "<span>{icon} {0}</span>";
          format-icons = {
            notification = "󱅫";
            none = "󰂜";
            dnd-notification = "󰂠";
            dnd-none = "󰪓";
            inhibited-notification = "󰂛";
            inhibited-none = "󰪑";
            dnd-inhibited-notification = "󰂛";
            dnd-inhibited-none = "󰪑";
          };
          return-type = "json";
          exec-if = "which swaync-client";
          exec = "swaync-client -swb";
          on-click = "swaync-client -t -sw";
          on-click-right = "swaync-client -d -sw";
          escape = true;
        };

        "pulseaudio" = {
          format = "{icon} {volume}";
          format-muted = " ";
          format-icons = [
            ""
            ""
            ""
          ];
          tooltip = false;
          reverse-scrolling = true;
          on-click = "foot --app-id=tui-app pulsemixer";
        };

        "network" = {
          format-disconnected = "󰤫";
          format-wifi = "{icon} ({signalStrength}) {essid}";
          max-length = 25;
          format-icons = [
            "󰤯"
            "󰤟"
            "󰤢"
            "󰤥"
            "󰤨"
          ];
          format-ethernet = "󰈀";
          format-linked = "{ifname} 󰈀";
          tooltip-format = " {ifname} via {gwaddri}";
          tooltip-format-wifi = " {ifname} @ {essid}\nIP: {ipaddr}\nStrength: {signalStrength}%\nFreq: {frequency}MHz\nUp: {bandwidthUpBits} Down: {bandwidthDownBits}";
          tooltip-format-ethernet = " {ifname}\nIP: {ipaddr}\n up: {bandwidthUpBits} down: {bandwidthDownBits}";
          tooltip-format-disconnected = "Disconnected";
          on-click = "foot --app-id=tui-app impala";
        };

        "bluetooth" = {
          format-on = "";
          format-off = "󰂲";
          format-disabled = "󰂲";
          format-connected = " {device_alias}";
          format-connected-battery = " ({device_battery_percentage}) {device_alias}";
          max-length = 25;
          tooltip-format = "{controller_alias} {controller_address}\n{num_connections} connected";
          tooltip-format-connected = "{controller_alias} {controller_address}\n{num_connections} connected\n{device_enumerate}";
          tooltip-format-enumerate-connected = "{device_alias} {device_address}";
          tooltip-format-enumerate-connected-battery = "{device_alias} {device_battery_percentage}% {device_address}";
          on-click = "foot --app-id=tui-app bluetui";
        };

        "battery" = {
          interval = 30;
          states = {
            warning = 30;
            critical = 15;
          };
          format = "{icon} {capacity}";
          format-icons = [
            ""
            ""
            ""
            ""
            ""
          ];
          format-charging = "󰂄 {capacity}";
          max-length = 25;
          tooltip = true;
          tooltip-format = "{timeTo}";
        };
      }
    ];
  };
}
