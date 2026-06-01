 #!/usr/bin/env bash

SHOT_TYPE="''${1:-region}" # region | window | output

OUTPUT_DIR="$HOME/Pictures/Screenshots"
mkdir -p "$OUTPUT_DIR"

FILENAME="screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png"
FILEPATH="$OUTPUT_DIR/$FILENAME"

case "$SHOT_TYPE" in
    region|window|output) ;;
    *)
        notify-send "Invalid screenshot type" "Using region mode"
        SHOT_TYPE="region"
        ;;
esac

# Take screenshot
hyprshot --silent -m "$SHOT_TYPE" -o "$OUTPUT_DIR" -f "$FILENAME"

# Wait until the file exists
while [[ ! -s "$FILEPATH" ]]; do
    sleep 0.05
done

# Wait until writing finishes
last_size=0
while true; do
    size=$(stat -c%s "$FILEPATH" 2>/dev/null || echo 0)
    if [[ "$size" -eq "$last_size" && "$size" -gt 0 ]]; then
        break
    fi
    last_size="$size"
    sleep 0.05
done

# Notification with actions
action=$(notify-send \
    --app-name="Screenshot" \
    --icon="$FILEPATH" \
    --action="edit=Edit" \
    "Screenshot saved & copied" "Edit with Mainmod + Shift + P")

case "$action" in
    edit)
    edit-last-screenshot
        ;;
esac

