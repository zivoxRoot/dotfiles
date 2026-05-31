{ pkgs, ... }:
{
  home.packages = [
    (pkgs.writeShellApplication {
      name = "toggle-yazi";

      text = ''
        #!/usr/bin/env bash

        if ! pgrep -f "foot.*yazi" >/dev/null; then
            foot --app-id yazi yazi &
            sleep 0.3
        fi

        hyprctl dispatch togglespecialworkspace yazi
      '';
    })
  ];
}
