{...}: {
  programs.niri.settings = {
    cursor = {
      hide-after-inactive-ms = 3000;
      hide-when-typing = true;
    };

    layout = {
      gaps = 16;
      focus-ring.width = 1;

      background-color = "transparent";
      preset-column-widths = [
        {proportion = 1. / 3.;}
        {proportion = 1. / 2.;}
        {proportion = 2. / 3.;}
      ];
    };

    gestures.hot-corners.enable = false;
  };
}
