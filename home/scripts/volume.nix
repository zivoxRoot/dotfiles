{pkgs, ...}: {
  home.packages = [
    (pkgs.writeShellApplication {
      name = "volume-osd";

      runtimeInputs = with pkgs; [
        wireplumber # for wpctl
        libnotify # for notify-send / dunstify
        gnugrep
        gawk
      ];

      text = ''
        #!/usr/bin/env bash
        set -euo pipefail

        # ----------------------------
        # Validate argument
        # ----------------------------
        if [[ ! "''${1:-}" =~ ^[+-][0-9]+$ ]]; then
            echo "Usage: $0 [+N|-N] (example: +5, -3)"
            exit 1
        fi

        DELTA="$1"
        STACK_TAG="volume"

        # ----------------------------
        # Detect Bluetooth
        # ----------------------------
        if wpctl inspect @DEFAULT_SINK@ | grep -q "bluez"; then
            IS_BLUETOOTH=1
        else
            IS_BLUETOOTH=0
        fi

        # ----------------------------
        # Get current volume (0–100)
        # ----------------------------
        CURRENT=$(wpctl get-volume @DEFAULT_SINK@ | awk '{print $2}')
        CURRENT_PERCENT=$(awk "BEGIN {printf \"%d\", $CURRENT*100}")

        # ----------------------------
        # Apply delta
        # ----------------------------
        NEW=$(( CURRENT_PERCENT + DELTA ))

        # Clamp
        (( NEW > 100 )) && NEW=100
        (( NEW < 0 )) && NEW=0

        # ----------------------------
        # Icon selection
        # ----------------------------
        if (( NEW == 0 )); then
            ICON="audio-volume-muted"
        elif (( NEW <= 33 )); then
            ICON="audio-volume-low"
        elif (( NEW <= 66 )); then
            ICON="audio-volume-medium"
        else
            ICON="audio-volume-high"
        fi

        if (( IS_BLUETOOTH == 1 )); then
            ICON="bluetooth-symbolic"
        fi

        # ----------------------------
        # Apply volume
        # ----------------------------
        wpctl set-volume @DEFAULT_SINK@ "''${NEW}%"

        # ----------------------------
        # OSD (stable, no flicker)
        # ----------------------------
        notify-send \
          -a "volume" \
          -t 1000 \
          -i "$ICON" \
          -r 9911 \
          -h int:value:"$NEW" \
          -h string:x-canonical-private-synchronous:$STACK_TAG \
          -h boolean:transient:true \
          "Volume: ''${NEW}%"
      '';
    })
  ];
}
