{ pkgs, ... }:
{
  home.packages = [
    (pkgs.writeShellApplication {
      name = "toggle-calculator";

      text = ''
        #!/usr/bin/env bash

        if ! pgrep -f "kitty.*calculator" >/dev/null; then
            kitty --app-id calculator qalc &
            sleep 0.3
        fi

        hyprctl dispatch togglespecialworkspace calculator
      '';
    })
  ];
}
