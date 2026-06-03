{ ... }:
{
  wayland.windowManager.hyprland.settings.animations = {
    enabled = true;

    bezier = [
      "overshot, 0.05, 0.9, 0.1, 1.01"
      "fluid, 0.25, 1, 0, 1"
      "snap, 0.5, 0.9, 0.1, 1.05"
      "menu_decel, 0.1, 1, 0, 1"
      "liner, 1, 1, 1, 1"
    ];

    animation = [
      "windowsIn, 1, 3, overshot, popin 80%"
      "windowsOut, 1, 2, snap, popin 80%"
      "windowsMove, 1, 3, overshot, slide"
      "border, 1, 1, liner"
      "borderangle, 1, 10, liner, once"
      "fade, 1, 2, fluid"
      "layersIn, 1, 3, overshot, popin 70%"
      "layersOut, 0, 2, menu_decel, slide"
      "fadeLayersIn, 1, 2, menu_decel"
      "fadeLayersOut, 1, 2, menu_decel"
      "workspaces, 1, 3, overshot"
      "specialWorkspace, 1, 3, overshot, slide"
    ];
  };
}
