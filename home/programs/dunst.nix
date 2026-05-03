{...}: {
  services.dunst = {
    enable = true;

    settings = {
      global = {
        default_pause_level = 50;
        notification_limit = 5;
        history_length = 100;

        offset = "(0, 0)";
        indicate_hidden = true;
        format = "<b>%s</b>\\n%b";
        idle_treshold = 120;
        show_age_treshold = 60;
        layer = "top";
      };
    };
  };
}
