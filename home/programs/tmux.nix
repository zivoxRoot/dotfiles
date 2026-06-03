{ pkgs, ... }:
{
  programs.tmux = {
    enable = true;
    terminal = "tmux-256color";
    mouse = true;
    keyMode = "vi";

    extraConfig = ''
      ### Status bar ###
      set -g status-position top
      set -g status-interval 3

      # Left side
      set -g status-left " #S "

      # Right side
      set -g status-right "\
      #{?window_zoomed_flag,🔍 ,}"

      ### Window styling ###
      setw -g window-status-format " #I:#W "
      setw -g window-status-current-format " #[bold]#I:#W "

      ### Terminal ###
      set -ga terminal-overrides ",*256col*:Tc"
      set -g allow-passthrough on

      ### Clipboard ###
      set -g set-clipboard on

      ### General ###
      set -g detach-on-destroy off
      set -g history-limit 1000000

      ### Prefix ###
      unbind C-b
      set -g prefix M-Space

      ### Indexes ###
      set -g base-index 1
      set -g pane-base-index 1
      set-option -g renumber-windows on

      ### Splits ###
      unbind %
      bind i split-window -h -c "#{pane_current_path}"

      unbind '"'
      bind o split-window -v -c "#{pane_current_path}"

      ### Kill pane ###
      bind-key x kill-pane

      ### New window ###
      bind c new-window -c "#{pane_current_path}"

      ### Vim navigation ###
      bind-key j select-pane -D
      bind-key k select-pane -U
      bind-key h select-pane -L
      bind-key l select-pane -R

      ### Resize ###
      bind -r M-j resize-pane -D 5
      bind -r M-k resize-pane -U 5
      bind -r M-l resize-pane -R 5
      bind -r M-h resize-pane -L 5

      ### Zoom ###
      bind -r m resize-pane -Z
    '';
  };
}
