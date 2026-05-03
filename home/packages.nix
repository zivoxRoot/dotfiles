{
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    inputs.ayugram-desktop.packages.${pkgs.system}.ayugram-desktop
    nautilus
    alejandra
    pre-commit
    vim
    rofi
    xwayland-satellite
    swww
    brightnessctl
    fastfetch
    bluez
    bluetui
    impala
  ];
}
