{pkgs, ...}: {
  home.packages = [
    (pkgs.writeShellApplication {
      name = "brightness-osd";

      runtimeInputs = with pkgs; [
        brightnessctl
        ddcutil
        libnotify
        gnugrep
      ];

      text = ''
        #!/usr/bin/env bash

        set -euo pipefail

        # ----------------------------
        # Validate input
        # ----------------------------
        if [[ ! "''${1:-}" =~ ^[+-][0-9]+$ ]]; then
            echo "Usage: $0 [+N|-N] (example: +5, -10)"
            exit 1
        fi

        DELTA="$1"

        STACK_TAG="brightness"

        # ----------------------------
        # Detect devices
        # ----------------------------
        LAPTOP_BACKLIGHT=""
        if brightnessctl info >/dev/null 2>&1; then
            LAPTOP_BACKLIGHT=1
        fi

        EXTERNAL_DISPLAY=""
        if command -v ddcutil >/dev/null 2>&1; then
            EXTERNAL_DISPLAY=$(ddcutil detect | grep -oP 'Display \K\d+' | head -n 1 || true)
        fi

        if [[ -z "$LAPTOP_BACKLIGHT" && -z "$EXTERNAL_DISPLAY" ]]; then
            echo "No brightness device found"
            exit 1
        fi

        # ----------------------------
        # Get current brightness (UNIFIED LOGIC)
        # ----------------------------
        if [[ -n "$LAPTOP_BACKLIGHT" ]]; then
            MAX=$(brightnessctl max)
            CUR=$(brightnessctl get)
            CURRENT=$(( CUR * 100 / MAX ))
        elif [[ -n "$EXTERNAL_DISPLAY" ]]; then
            CURRENT=$(ddcutil --display="$EXTERNAL_DISPLAY" getvcp 10 \
                | grep -oP 'current value =\s*\K\d+')
        fi

        # ----------------------------
        # Apply delta
        # ----------------------------
        NEW=$(( CURRENT + DELTA ))

        # Clamp
        (( NEW > 100 )) && NEW=100
        (( NEW < 1 )) && NEW=1

        # ----------------------------
        # Apply brightness (SYNC BOTH, NO DESYNC)
        # ----------------------------
        if [[ -n "$LAPTOP_BACKLIGHT" ]]; then
            brightnessctl set "''${NEW}%"
        fi

        if [[ -n "$EXTERNAL_DISPLAY" ]]; then
            ddcutil --display="$EXTERNAL_DISPLAY" setvcp 10 "$NEW" >/dev/null
        fi

        # ----------------------------
        # Icon selection
        # ----------------------------
        # if (( NEW <= 30 )); then
            # ICON="display-brightness-low"
        # elif (( NEW <= 70 )); then
            # ICON="display-brightness-medium"
        # else
            # ICON="display-brightness-high"
        # fi

        # ----------------------------
        # Stable OSD (NO FLICKER)
        # ----------------------------
        # -i "$ICON" \
        notify-send \
          -a "brightness" \
          -t 1000 \
          -i display-brightness-symbolic \
          -r 9910 \
          -h int:value:"$NEW" \
          -h string:x-canonical-private-synchronous:$STACK_TAG \
          -h boolean:transient:true \
          "Brightness: ''${NEW}%"
      '';
    })
  ];
}
