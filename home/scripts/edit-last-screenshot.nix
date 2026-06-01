{ pkgs, ... }:

{
  home.packages = [
    (pkgs.writeShellApplication {
      name = "edit-last-screenshot";

      runtimeInputs = with pkgs; [
        satty
      ];

      text = ''
        #!/usr/bin/env bash

        DIR="$HOME/Pictures/Screenshots"

        FILE=$(find "$DIR" -type f -name "*.png" -printf '%T@ %p\n' | sort -nr | head -n1 | cut -d' ' -f2-)
        SATTY_FILENAME="edited_$(date +'%Y-%m-%d_%H-%M-%S').png"
        SATTY_FILEPATH="$DIR/$SATTY_FILENAME"

        if [[ -n "$FILE" ]]; then
          satty --disable-notifications --filename "$FILE" -o "$SATTY_FILEPATH"
          notify-send \
            --app-name="Screenshot" \
            --icon="$SATTY_FILEPATH" \
            "Edited screenshot saved & copied" "Edit with Mainmod + Shift + P"
        fi
      '';
    })
  ];
}
