{ pkgs, ... }:
{
  home.packages = [
    (pkgs.writeShellApplication {
      name = "toggle-yazi";

      text = ''
        #!/usr/bin/env bash

        if ! pgrep -f "kitty.*yazi" >/dev/null; then
            kitty --app-id yazi yazi &
            sleep 0.3
        fi

        hyprctl dispatch togglespecialworkspace yazi
      '';
    })
  ];
}
