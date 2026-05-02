{ lib, ...}:

{
  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = lib.mkForce "CaskaydiaCove Nerd Font Mono:size=9";
        dpi-aware = lib.mkForce "yes";
        pad = "10x0";
      };
    };
  };
}
