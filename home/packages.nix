{
  pkgs,
  inputs,
  ...
}:
{
  home.packages = with pkgs; [
    # Misc
    fastfetch

    # Desktop
    gnome.gvfs
    udiskie
    exfatprogs
    ntfs3g
    swww
    brightnessctl
    bluez
    xwayland-satellite
    libnotify
    playerctl
    wl-clipboard
    adwaita-icon-theme
    qutebrowser

    # GUI applications
    telegram-desktop
    vscode
    mpv
    nautilus
    satty
    feh

    # TUI tools
    bluetui
    impala
    ani-cli
    yazi
    yt-dlp
    fzf
    pulsemixer
    lazygit
    gomi
    htop
    inputs.fsel.packages.${pkgs.system}.default
    libqalculate
    lazydocker

    # CLI tools
    tree
    vim
    unzip
    glow
    sesh
    ripgrep
    fd
    bat
    jq
    unixtools.arp

    # Programming
    python315
  ];
}
