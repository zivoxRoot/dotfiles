{...}: {
  programs.sioyek = {
    enable = true;

    bindings = {
      "screen_down" = ["d"];
      "screen_up" = ["u"];
    };

    config = {
      startup_commands = "toggle_dark_mode;fit_to_page_width";
    };
  };
}
