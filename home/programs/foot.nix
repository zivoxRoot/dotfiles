{lib, ...}: {
  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = lib.mkForce "CaskaydiaCove Nerd Font Mono:size=11";
        pad = "10x0";
      };
    };
  };
}
