{ pkgs, ... }:
{
  home.packages = [
    (pkgs.writeShellApplication {
      name = "toggle-telegram";

      text = ''
        #!/usr/bin/env bash

        if ! pgrep -f "Telegram" >/dev/null; then
            Telegram
            sleep 0.3
        fi

        hyprctl dispatch togglespecialworkspace messaging
      '';
    })
  ];
}
