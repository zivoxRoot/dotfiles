{...}: {
  programs.bash = {
    enable = false;

    shellAliases = {
      nrs = "sudo nixos-rebuild switch --flake ~/dotfiles#theophile";
      lg = "lazygit";
    };
  };
}
