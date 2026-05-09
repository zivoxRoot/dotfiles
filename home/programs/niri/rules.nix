{...}: {
  programs.niri.settings = {
    window-rules = [
      # Firefox picture in picture
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

      # Otter launcher floating center small
      {
        matches = [
          {
            app-id = "otter-launcher";
          }
        ];

        open-floating = true;

        min-width = 400;
        max-width = 400;
        min-height = 400;
        max-height = 400;
      }

      # TUI app float center
      {
        matches = [
          {
            app-id = "tui-app";
          }
        ];

        open-floating = true;
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
