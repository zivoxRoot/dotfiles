{...}: {
  wayland.windowManager.hyprland.settings.windowrule = [
    "suppressevent maximize, class:.*"
    "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
    "float,class:tui-app"
    "float,class:otter-launcher"
    "size 400 300,class:otter-launcher"
  ];
}
