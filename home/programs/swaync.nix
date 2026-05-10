{...}: {
  services.swaync = {
    enable = true;

    settings = {
      positionX = "center";
      positionY = "top";
      cssPriority = "user";
      control-center-width = 450;
      fit-to-screen = false;
      layer = "overlay";
      control-center-layer = "top";

      notification-window-width = 350;
      notification-icon-size = 64;
      notification-body-image-height = 100;
      notification-body-image-width = 200;
      notification-inline-replies = false;
      notification-2fa-action = false;

      timeout = 5;
      timeout-low = 3;
      timeout-critical = 0;

      transition-time = 200;
      keyboard-shortcuts = true;
      layer-shell = true;
      hide-on-action = false;
      script-fail-notify = true;
      ignore-gtk-theme = true;
      text-empty = "No Notifications";

      widgets = [
        "notifications"
      ];
    };

    style = ''
        /* --- Global Settings --- */
        * {
          all: unset;
          font-family: "CaskaydiaCove Nerd Font Mono", "JetBrains Mono Nerd Font Propo", "Fira Sans", sans-serif;
          font-size: 14px;
          transition: 200ms ease-in-out;
        }

        .blank-window {
          background: transparent;
        }

        /* --- CONTROL CENTER (Main Window) --- */
        .control-center {
          border-radius: 0px;
          margin: 16px;  /* Control center margin */
          padding: 12px;
          border: 3px solid @base05;
        }

        /* --- Notifications in Control Center --- */
        .control-center .notification-row .notification-background {
          border-radius: 0px;
          margin: 6px 0px;
        }

        /* Critical Notification Styling - FIXED RADIUS */
        .control-center .notification-row .notification-background .notification.critical {
          margin: 10px;
          border-radius: 12px;
        }

      .control-center .notification-row .notification-background .notification .notification-content {
        /* margin: 4px; */
        padding: 4px;
      }

      .control-center .notification-row .notification-background .notification > *:last-child > * {
        min-height: 0.5em;
      }

      /* Actions (Buttons inside notifications) */
      .control-center .notification-row .notification-background .notification > *:last-child > * .notification-action {
        border-radius: 0px;
        margin: 6px;
        border: 1px solid transparent;
      }

      /* Close Button */
      .control-center .notification-row .notification-background .close-button {
        background: transparent;
        border-radius: 0px;
        margin: 0px;
        padding: 4px;
      }

      progressbar, progress, trough {
        border-radius: 12px;
      }

      /* --- FLOATING NOTIFICATIONS (Popups) --- */
      .notification-row {
        outline: none;
        margin: 0;
        padding: 2px;
      }

      .floating-notifications.background .notification-row .notification-background {
        border-radius: 0px;
        margin: 15px; /* Notification pop-up margin */
        padding: 0;
      }

      .floating-notifications.background .notification-row .notification-background .notification {
        border-radius: 0px;
      }

      .floating-notifications.background .notification-row .notification-background .notification.critical {
        border-radius: 4px;
      }

      .floating-notifications.background .notification-row .notification-background .notification .notification-content {
        padding: 10px;
      }

      .floating-notifications.background .notification-row .notification-background .notification > *:last-child > * {
        min-height: 2em;
      }

      /* Floating Actions */
      .floating-notifications.background .notification-row .notification-background .notification > *:last-child > * .notification-action {
        border-radius: 12px;
        margin: 6px;
        border: 1px solid transparent;
      }

      .image {
        margin: 10px 20px 10px 10px;
      }

      .summary {
        font-weight: 800;
        font-size: 1rem;
      }

      .body {
        font-size: 0.8rem;
      }

      .time {
        opacity: 0.8;
      }

      .floating-notifications.background .notification-row .notification-background .close-button {
        margin: 10px;
        padding: 10px;
        border-radius: 6px;
        background-color: transparent;
      }
    '';
  };
}
