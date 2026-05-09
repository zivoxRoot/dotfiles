{...}: {
  programs.niri.settings = {
    binds = {
      "Mod+Shift+Slash".action.show-hotkey-overlay = [];

      "Mod+T".action.spawn = "foot";
      "Mod+B".action.spawn = "zen-beta";
      "Mod+Space".action.spawn-sh = ["foot --app-id=otter-launcher otter-launcher"];
      "Mod+W".action.spawn-sh = ["pkill waybar || waybar"];
      "Mod+Ctrl+W".action.spawn-sh = ["foot --app-id=tui-app impala"];
      "Mod+Ctrl+B".action.spawn-sh = ["foot --app-id=tui-app bluetui"];
      "Mod+E".action.spawn-sh = ["foot --app-id=tui-app yazi"];

      "Mod+N".action.spawn-sh = ["swaync-client --toggle-panel -sw"];
      "Mod+Ctrl+N".action.spawn-sh = ["swaync-client --toggle-dnd -sw"];
      "Mod+Shift+N".action.spawn-sh = ["swaync-client --close-all"];

      "XF86AudioRaiseVolume" = {
        action.spawn = ["volume-osd" "+5"];
        allow-when-locked = true;
        cooldown-ms = 150;
      };
      "XF86AudioLowerVolume" = {
        action.spawn = ["volume-osd" "-5"];
        allow-when-locked = true;
        cooldown-ms = 150;
      };
      # Precise controls
      "Mod+XF86AudioRaiseVolume" = {
        action.spawn = ["volume-osd" "+1"];
        allow-when-locked = true;
        cooldown-ms = 50;
      };
      "Mod+XF86AudioLowerVolume" = {
        action.spawn = ["volume-osd" "-1"];
        allow-when-locked = true;
        cooldown-ms = 50;
      };
      "XF86AudioMute" = {
        action.spawn = ["volume-osd" "mute"];
        allow-when-locked = true;
      };
      "XF86AudioMicMute" = {
        action.spawn = ["wpctl" "set-mute" "@DEFAULT_AUDIO_SOURCE@" "toggle"];
        allow-when-locked = true;
      };

      # Brightness
      "XF86MonBrightnessUp" = {
        action.spawn = ["brightness-osd" "+10"];
        allow-when-locked = true;
        cooldown-ms = 250;
      };
      "XF86MonBrightnessDown" = {
        action.spawn = ["brightness-osd" "-10"];
        allow-when-locked = true;
        cooldown-ms = 250;
      };
      # Precise control
      "Mod+XF86MonBrightnessUp" = {
        action.spawn = ["brightness-osd" "+1"];
        allow-when-locked = true;
        cooldown-ms = 50;
      };
      "Mod+XF86MonBrightnessDown" = {
        action.spawn = ["brightness-osd" "-1"];
        allow-when-locked = true;
        cooldown-ms = 50;
      };

      "Mod+O".action.toggle-overview = [];
      "Mod+Q".action.close-window = [];

      # Focus windows
      "Mod+H".action.focus-column-left = [];
      "Mod+L".action.focus-column-right = [];
      "Mod+K".action.focus-window-or-workspace-up = [];
      "Mod+J".action.focus-window-or-workspace-down = [];

      # Move windows
      "Mod+Shift+H".action.move-column-left = [];
      "Mod+Shift+L".action.move-column-right = [];
      "Mod+Shift+K".action.move-window-up-or-to-workspace-up = [];
      "Mod+Shift+J".action.move-window-down-or-to-workspace-down = [];

      # Focus monitors
      "Mod+Alt+H".action.focus-monitor-left = [];
      "Mod+Alt+L".action.focus-monitor-right = [];
      "Mod+Alt+K".action.focus-monitor-up = [];
      "Mod+Alt+J".action.focus-monitor-down = [];

      # Move windows to monitors
      "Mod+Shift+Alt+H".action.move-window-to-monitor-left = [];
      "Mod+Shift+Alt+L".action.move-window-to-monitor-right = [];
      "Mod+Shift+Alt+K".action.move-window-to-monitor-up = [];
      "Mod+Shift+Alt+J".action.move-window-to-monitor-down = [];

      # Focus and move windows with mod + scroll (+ shift)
      "Mod+TouchpadScrollDown" = {
        action.focus-workspace-down = [];
        cooldown-ms = 150;
      };
      "Mod+TouchpadScrollUp" = {
        action.focus-workspace-up = [];
        cooldown-ms = 150;
      };
      "Mod+Shift+TouchpadScrollDown" = {
        action.move-column-to-workspace-down = [];
        cooldown-ms = 150;
      };
      "Mod+Shift+TouchpadScrollUp" = {
        action.move-column-to-workspace-up = [];
        cooldown-ms = 150;
      };

      # Focus workspaces
      "Mod+1".action.focus-workspace = 1;
      "Mod+2".action.focus-workspace = 2;
      "Mod+3".action.focus-workspace = 3;
      "Mod+4".action.focus-workspace = 4;
      "Mod+5".action.focus-workspace = 5;
      "Mod+6".action.focus-workspace = 6;
      "Mod+7".action.focus-workspace = 7;
      "Mod+8".action.focus-workspace = 8;
      "Mod+9".action.focus-workspace = 9;

      # Move window to workspace
      "Mod+Shift+1".action.move-window-to-workspace = 1;
      "Mod+Shift+2".action.move-window-to-workspace = 2;
      "Mod+Shift+3".action.move-window-to-workspace = 3;
      "Mod+Shift+4".action.move-window-to-workspace = 4;
      "Mod+Shift+5".action.move-window-to-workspace = 5;
      "Mod+Shift+6".action.move-window-to-workspace = 6;
      "Mod+Shift+7".action.move-window-to-workspace = 7;
      "Mod+Shift+8".action.move-window-to-workspace = 8;
      "Mod+Shift+9".action.move-window-to-workspace = 9;

      # Switch to previous workspace back-and-forth
      "Mod+Tab".action.focus-workspace-previous = [];

      "Mod+BracketLeft".action.consume-or-expel-window-left = [];
      "Mod+BracketRight".action.consume-or-expel-window-right = [];

      "Mod+Comma".action.consume-window-into-column = [];
      "Mod+Period".action.expel-window-from-column = [];

      "Mod+R".action.switch-preset-column-width = [];
      "Mod+Shift+R".action.switch-preset-window-height = [];
      "Mod+F".action.maximize-column = [];
      "Mod+Shift+F".action.fullscreen-window = [];

      "Mod+Ctrl+F".action.expand-column-to-available-width = [];

      "Mod+C".action.center-column = [];
      "Mod+Ctrl+C".action.center-visible-columns = [];

      "Mod+Minus".action.set-column-width = "+10%";
      "Mod+Equal".action.set-column-width = "-10%";
      "Mod+Shift+Minus".action.set-window-height = "+10%";
      "Mod+Shift+Equal".action.set-window-height = "-10%";

      "Mod+P".action.toggle-column-tabbed-display = [];

      "Print".action.screenshot = [];
      "Ctrl+Print".action.screenshot-screen = [];
      "Alt+Print".action.screenshot-window = [];

      "Mod+Escape" = {
        allow-inhibiting = false;
        action.toggle-keyboard-shortcuts-inhibit = [];
      };

      "Mod+Delete".action.quit.skip-confirmation = false;
    };
  };
}
