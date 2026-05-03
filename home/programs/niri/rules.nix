{...}: {
  programs.niri.settings = {
    window-rules = [
      {
        matches = [
          {
            app-id = "firefox$";
            title = "^Picture-in-Picture$";
          }
        ];

        open-floating = true;
        default-floating-position = {
          relative-to = "bottom-right";
          x = 100;
          y = 100;
        };
        tiled-state = true;
      }
    ];

    layer-rules = [
      {
        matches = [
          {namespace = "^swww-daemon$";}
        ];

        place-within-backdrop = true;
      }
    ];
  };
}
