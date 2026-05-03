{
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    inputs.ayugram-desktop.packages.${pkgs.system}.ayugram-desktop
    ani-cli
    yt-dlp
    mpv
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
