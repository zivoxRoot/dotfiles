{ pkgs, ... }:
{
  home.packages = [
    (pkgs.writeShellApplication {
      name = "toggle-calculator";

      text = ''
        #!/usr/bin/env bash

        if ! pgrep -f "foot.*calculator" >/dev/null; then
            foot --app-id calculator qalc &
            sleep 0.3
        fi

        hyprctl dispatch togglespecialworkspace calculator
      '';
    })
  ];
}
