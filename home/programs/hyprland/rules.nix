{ ... }:
{
  wayland.windowManager.hyprland.settings.windowrule = [
    # "suppressevent maximize, class:.*"
    # "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"

    # Two sizes for TUI apps
    "float on,match:class tui-app"
    "float on,match:class tui-app-large"
    "size 1100 650,match:class tui-app-large"

    # Music player floating in special workspace
    "float on,match:class music-player"
    "size 900 650,match:class music-player"
    "workspace special:music-player,match:class music-player"

    # Otter launcher float
    "float on,match:class otter-launcher"
    "size 400 300,match:class otter-launcher"

    # Telegram floating in special workspace
    "float on,match:class ^(org.telegram.desktop)$"
    "size 450 750,match:class ^(org.telegram.desktop)$"
    "workspace special:messaging,match:class ^(org.telegram.desktop)$"

    # File manager floating in special workspace
    "float on,match:class yazi"
    "workspace special:yazi,match:class yazi"

    # PDF viewer in special workspace
    "workspace special:pdfviewer,match:class sioyek"

    # Calculator floating in special workspace
    "float on,match:class calculator"
    "workspace special:calculator,match:class calculator"
  ];
}
