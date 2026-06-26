{ lib, ... }:

{
  programs.kitty = lib.mkForce {
    enable = true;

    extraConfig = ''
      shell_integration no-rc

      allow_remote_control yes
      bold_font auto
      confirm_os_window_close 0
      cursor_trail 1
      disable_ligature never
      enable_audio_bell no
      font_family CaskaydiaCove Nerd Font Mono
      font_size 11
      italic_font auto
      scrollback_lines 10000
      window_padding_width 10

      include ./themes/Matugen.conf
    '';
  };
}
