{ pkgs, ... }:
{
  home.packages = [
    (pkgs.writeShellApplication {
      name = "toggle-music-player";

      text = ''
        #!/usr/bin/env bash

        if ! pgrep -f "foot.*music-player" >/dev/null; then
            foot --app-id music-player kew &
            sleep 0.3
        fi

        hyprctl dispatch togglespecialworkspace music-player
      '';
    })
  ];
}
