{ pkgs, ... }:

{
  home.packages = [
    (pkgs.writeShellApplication {
      name = "sesh-tmux";

      runtimeInputs = with pkgs; [
        sesh
        fzf
        tmux
      ];

      text = ''
        #!/usr/bin/env bash

        sesh connect "$(sesh list | fzf --reverse --no-preview)"
      '';
    })
  ];
}
