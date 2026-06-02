{ ... }:
{
  programs.zsh.shellAliases = {
    # Nixos
    nrs = "sudo nixos-rebuild switch --flake ~/dotfiles#theophile";

    # Movement
    ".." = "cd ..";
    "..." = "cd ../..";
    "...." = "cd ../../..";
    "....." = "cd ../../../..";
    "......" = "cd ../../../../..";
    ".2" = "cd ../..";
    ".3" = "cd ../../..";
    ".4" = "cd ../../../..";
    ".5" = "cd ../../../../..";
    ".6" = "cd ../../../../../..";

    # Listing
    l = "eza --color=always --git --icons=always --group-directories-last --no-filesize --no-time --no-user --no-permissions --long";
    ls = "eza --color=always --git --icons=always --group-directories-last --no-filesize --no-time --no-user --no-permissions ";
    la = "eza --color=always --git --icons=always --group-directories-last --no-filesize --no-time --no-user --no-permissions --long --all  ";
    ll = "eza --color=always --git --icons=always --group-directories-last --long --all";
    lt = "eza --color=always --git --icons=always --group-directories-last -T -L 3 ";
    "l." = "eza --color=always --git --icons=always --group-directories-last -d .*";

    # Git
    g = "git";
    gi = "git init";
    gs = "git status";
    ga = "git add .";
    gc = "git commit -m";
    gp = "git push";
    gP = "git pull";
    gd = "git diff";
    gl = "git log --oneline --graph --decorate";
    gll = "git log --graph --decorate";
    gb = "git branch";
    gbd = "git branch -d";
    gbs = "git checkout -b";
    gsw = "git switch";
    gm = "git merge";
    gcl = "git clone";

    # Others
    fzf = "fzf --preview 'bat --style=numbers --color=always {}'";
    y = "yazi";
    lg = "lazygit";
    bat = "bat --theme base16";
    cat = "bat -p --theme base16";
    mkdir = "mkdir -p";
    rm = "gomi";
    rmdir = "gomi";
    restore = "gomi --restore";
    mv = "mv -i";
    cp = "cp -ri";
    t = "sesh-tmux";
    q = "exit";
  };
}
