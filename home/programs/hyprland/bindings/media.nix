{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    bindl = [
      ", X86AudioNext, exec, playerctl next"
      ", X86AudioPause, exec, playerctl play-pause"
      ", X86AudioPlay, exec, playerctl play-pause"
      ", X86AudioPrev, exec, playerctl previous"
    ];

    bindel = [
      # Volume
      ", XF86AudioRaiseVolume, exec, volume-osd +5"
      "SUPER, XF86AudioRaiseVolume, exec, volume-osd +1"
      ", XF86AudioLowerVolume, exec, volume-osd -5"
      "SUPER, XF86AudioLowerVolume, exec, volume-osd -1"
      ", XF86AudioMute, exec, volume-osd mute"
      # ", XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"

      # Brightness
      ", XF86MonBrightnessUp, exec, brightness-osd +10"
      "SUPER, XF86MonBrightnessUp, exec, brightness-osd +1"
      ", XF86MonBrightnessDown, exec, brightness-osd -10"
      "SUPER, XF86MonBrightnessDown, exec, brightness-osd -1"
    ];
  };
}
