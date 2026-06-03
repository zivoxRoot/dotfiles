{ ... }:
{
  programs.niri.settings.input = {
    keyboard.xkb = {
      layout = "us";
      options = "caps:swapescape,compose:ralt";
    };
    touchpad.natural-scroll = true;
    focus-follows-mouse = {
      enable = true;
      max-scroll-amount = "0%";
    };
    warp-mouse-to-focus.enable = true;
  };
}
