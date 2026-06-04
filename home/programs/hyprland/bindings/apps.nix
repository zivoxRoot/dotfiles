{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    bind = [
      "SUPER, T, exec, foot"
      "SUPER, B, exec, zen-beta"
      "SUPER, SPACE, exec, foot --app-id=otter-launcher otter-launcher"
      "SUPER, E, exec, toggle-yazi"
      "SUPER, M, exec, toggle-telegram"
      "SUPER_CTRL, C, exec, toggle-calculator"

      "SUPER, V, exec, foot --app-id=tui-app clipse"
      "SUPER_CTRL, B, exec, foot --app-id=tui-app bluetui"
      "SUPER_CTRL, W, exec, foot --app-id=tui-app impala"
      "SUPER_CTRL, S, exec, foot --app-id=tui-app-large htop"
      "SUPER_CTRL, D, exec, foot --app-id=tui-app-large lazydocker"

      # Notifications
      "SUPER, N, exec, swaync-client --toggle-panel -sw"
      "SUPER_CTRL, N, exec, swaync-client --toggle-dnd -sw"
      "SUPER_SHIFT, N, exec, swaync-client --close-all"

      # Utils
      "SUPER, W, exec, pkill waybar || waybar"
      "SUPER, R, togglespecialworkspace, pdfviewer"

      # Screenshot
      ", PRINT, exec, screenshot region"
      "SUPER, PRINT, exec, screenshot window"
      "SHIFT, PRINT, exec, screenshot output"
      "SUPER_SHIFT, V, exec, edit-last-screenshot"
    ];
  };
}
