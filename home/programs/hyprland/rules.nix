{ ... }:
{
  wayland.windowManager.hyprland.settings.windowrule = [
    "suppressevent maximize, class:.*"
    "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"

    # Two sizes for TUI apps
    "float,class:tui-app"
    "float,class:tui-app-large"
    "size 1100 650,class:tui-app-large"

    # Otter launcher float
    "float,class:otter-launcher"
    "size 400 300,class:otter-launcher"

    # Telegram floating in special workspace
    "float,class:^(org.telegram.desktop)$"
    "size 450 750,class:^(org.telegram.desktop)$"
    "workspace special:messaging,class:^(org.telegram.desktop)$"

    # File manager floating in special workspace
    "float,class:yazi"
    "workspace special:yazi,class:yazi"

    # PDF viewer in special workspace
    "workspace special:pdfviewer,class:sioyek"

    # Calculator floating in special workspace
    "float,class:calculator"
    "workspace special:calculator,class:calculator"
  ];
}
