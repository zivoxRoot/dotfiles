{...}: {
  programs.niri.settings = {
    spawn-at-startup = [
      {argv = ["xwayland-satellite"];}
      {argv = ["waybar"];}
      {argv = ["swww-daemon"];}
      {argv = ["swaync"];}
      {argv = ["clipse -listen"];}
    ];
  };
}
