{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    bind = [
      "SUPER, Q, killactive"

      # Windows settings
      "SUPER, P, togglefloating"
      "SUPER, Y, layoutmsg, togglesplit"
      "SUPER, F, fullscreen, 1"
      "SUPER_SHIFT, F, fullscreen, 0"
      "SUPER_SHIFT, X, pin"

      # Switch between workspace with SUPER + [0-9]
      "SUPER, code:10, workspace, 1"
      "SUPER, code:11, workspace, 2"
      "SUPER, code:12, workspace, 3"
      "SUPER, code:13, workspace, 4"
      "SUPER, code:14, workspace, 5"
      "SUPER, code:15, workspace, 6"
      "SUPER, code:16, workspace, 7"
      "SUPER, code:17, workspace, 8"
      "SUPER, code:18, workspace, 9"
      "SUPER, code:19, workspace, 10"

      # Move window to workspace with SUPER + Shift + [0-9]
      "SUPER_SHIFT, code:10, movetoworkspace, 1"
      "SUPER_SHIFT, code:11, movetoworkspace, 2"
      "SUPER_SHIFT, code:12, movetoworkspace, 3"
      "SUPER_SHIFT, code:13, movetoworkspace, 4"
      "SUPER_SHIFT, code:14, movetoworkspace, 5"
      "SUPER_SHIFT, code:15, movetoworkspace, 6"
      "SUPER_SHIFT, code:16, movetoworkspace, 7"
      "SUPER_SHIFT, code:17, movetoworkspace, 8"
      "SUPER_SHIFT, code:18, movetoworkspace, 9"
      "SUPER_SHIFT, code:19, movetoworkspace, 10"

      # Move window to workspace (silently) with SUPER + Alt + [0-9]
      "SUPER_ALT, code:10, movetoworkspacesilent, 1"
      "SUPER_ALT, code:11, movetoworkspacesilent, 2"
      "SUPER_ALT, code:12, movetoworkspacesilent, 3"
      "SUPER_ALT, code:13, movetoworkspacesilent, 4"
      "SUPER_ALT, code:14, movetoworkspacesilent, 5"
      "SUPER_ALT, code:15, movetoworkspacesilent, 6"
      "SUPER_ALT, code:16, movetoworkspacesilent, 7"
      "SUPER_ALT, code:17, movetoworkspacesilent, 8"
      "SUPER_ALT, code:18, movetoworkspacesilent, 9"
      "SUPER_ALT, code:19, movetoworkspacesilent, 10"
    ];

    bindm = [
      # Move/Resize windows with mouse
      "SUPER, mouse:272, movewindow"
      "SUPER, mouse:273, resizewindow"
      "SUPER, Z, movewindow"
      "SUPER, X, resizewindow"
    ];

    binde = [
      # Move window focus with SUPER + vim keys
      "SUPER, H, movefocus, l"
      "SUPER, L, movefocus, r"
      "SUPER, K, movefocus, u"
      "SUPER, J, movefocus, d"

      # Move windows with SUPER + Shift + vim keys
      "SUPER_SHIFT, L, movewindow, r"
      "SUPER_SHIFT, H, movewindow, l"
      "SUPER_SHIFT, K, movewindow, u"
      "SUPER_SHIFT, J, movewindow, d"

      # Resize active window with SUPER + Ctrl + vim keys
      "SUPER_CONTROL, L, resizeactive, 30 0"
      "SUPER_CONTROL, H, resizeactive, -30 0"
      "SUPER_CONTROL, K, resizeactive, 0 -30"
      "SUPER_CONTROL, J, resizeactive, 0 30"

      # Navigate to last workspace back and forth
      "SUPER, TAB, workspace, previous"

      # Navigate relative workspaces with SUPER + Shift + [J / K]
      "SUPER_ALT, H, workspace, r-1"
      "SUPER_ALT, L, workspace, r+1"
    ];
  };
}
