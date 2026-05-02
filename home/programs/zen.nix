{
  config,
  pkgs,
  inputs,
  ...
}: {
  programs.zen-browser = {
    enable = true;
    setAsDefaultBrowser = true;
    enablePrivateDesktopEntry = true;
    nativeMessagingHosts = [pkgs.firefoxpwa];

    profiles.${config.home.username} = rec {
      isDefault = true;
      settings = {
        "zen.workspaces.continue-where-left-off" = true;
        "zen.workspaces.natural-scroll" = true;
        "zen.view.compact.hide-tabbar" = true;
        "zen.view.compact.hide-toolbar" = true;
        "zen.view.compact.animate-sidebar" = true;
        "zen.welcome-screen.seen" = true;
        "zen.urlbar.behavior" = "float";
      };

      mods = [
        "253a3a74-0cc4-47b7-8b82-996a64f030d5" # Floating History
        "4ab93b88-151c-451b-a1b7-a1e0e28fa7f8" # No Sidebar Scrollbar
        "7190e4e9-bead-4b40-8f57-95d852ddc941" # Tab title fixes
        "a6335949-4465-4b71-926c-4a52d34bc9c0" # Better Find Bar
        "c6813222-6571-4ba6-8faf-58f3343324f6" # Disable Rounded Corners
        "c8d9e6e6-e702-4e15-8972-3596e57cf398" # Zen Back Forward
        "d8b79d4a-6cba-4495-9ff6-d6d30b0e94fe" # Better Active Tab
        "e122b5d9-d385-4bf8-9971-e137809097d0" # No Top Sites
        "f7c71d9a-bce2-420f-ae44-a64bd92975ab" # Better Unloaded Tabs
        "fd24f832-a2e6-4ce9-8b19-7aa888eb7f8e" # Quietify
        "79dde383-4fe7-404a-a8e6-9be440022542" # Tidy popups
      ];

      extensions.packages = with inputs.firefox-addons.packages.${pkgs.stdenv.hostPlatform.system}; [
        ublock-origin
        darkreader
      ];

      pinsForce = true;
      pins = {
        # Essential pins (visible on all spaces)
        "Infomaniak" = {
          id = "48e8a119-5a14-4826-9545-91c8e8dd3bf6";
          url = "https://ksuite.infomaniak.com/1118659/mail";
          position = 101;
          isEssential = true;
        };
        "Notion" = {
          id = "43e8a117-5a11-4827-9i45-91c8e8dd3bf6";
          url = "https://www.notion.so/To-get-done-3417e866d8d180d3929de23c019ff4e0";
          position = 102;
          isEssential = true;
        };

        # Programming pins
        "Github" = {
          id = "42e8a419-5a14-4827-9545-91c8e8dd3bf6";
          url = "https://github.com";
          position = 103;
          workspace = spaces."Programming".id;
          isEssential = false;
        };
        # Nix-related stuff folder
        "Nix" = {
          id = "43e8i499-5a14-4827-9545-91u8e8dd3bf6";
          isGroup = true;
          isFolderCollapsed = true;
          editedTitle = true;
          position = 104;
          workspace = spaces."Programming".id;
        };
        "Packages" = {
          id = "42e8a419-5a34-4823-9749-91c8e8yd3if6";
          url = "https://search.nixos.org/packages";
          position = 105;
          workspace = spaces."Programming".id;
          isEssential = false;
          folderParentId = "Nix";
        };
        "Wiki" = {
          id = "42e8a419-5a14-4823-9745-91c8e8dd3bf6";
          url = "https://wiki.nixos.org/wiki/NixOS_Wiki";
          position = 106;
          workspace = spaces."Programming".id;
          isEssential = false;
          folderParentId = "Nix";
        };
        "Nix language" = {
          id = "42e8a419-5a34-482u-9743-91c8e8yd3if7";
          url = "https://nix.dev/tutorials/nix-language.html";
          position = 107;
          workspace = spaces."Programming".id;
          isEssential = false;
          folderParentId = "Nix";
        };

        # School pins
        "CNED" = {
          id = "42i8a219-5a14-4827-9845-91c8e8dd3bf6";
          url = "https://eformation.cned.fr";
          position = 103;
          workspace = spaces."School".id;
          isEssential = false;
        };
        "Agenda" = {
          id = "42u4a219-5a11-4827-9825-91b8e8dd3bf3";
          url = "https://calendar.google.com/calendar/u/0/r?pli=1";
          position = 104;
          workspace = spaces."School".id;
          isEssential = false;
        };
        "Mail" = {
          id = "42u4a219-5a11-4827-9845-91c8e8dd3bf6";
          url = "https://mail.google.com/mail/u/0/#inbox";
          position = 105;
          workspace = spaces."School".id;
          isEssential = false;
        };
        "Drive" = {
          id = "42u4a219-5a11-4822-9845-91c5e8dd2bf7";
          url = "https://drive.google.com/drive/home";
          position = 106;
          workspace = spaces."School".id;
          isEssential = false;
        };
        "Avancement" = {
          id = "42u4a219-5v11-4822-9843-91c5e8dd2bf9";
          url = "https://docs.google.com/spreadsheets/d/1W27Ia6laPlN9cjmYG3Y0GgdZU3VVZ8jmgIpBOaIHFhQ/edit?gid=0#gid=0";
          position = 107;
          workspace = spaces."School".id;
          isEssential = false;
        };
        "Révision" = {
          id = "22u4a519-5i11-4822-9843-91c5e8dd2bf9";
          url = "https://docs.google.com/spreadsheets/d/1TnK8_toCxk1Vf1L3_XwzBYP6E5l13J-PPPnXq4-IPdY/edit?pli=1&gid=0#gid=0";
          position = 108;
          workspace = spaces."School".id;
          isEssential = false;
        };
      };

      spacesForce = true;
      spaces = {
        Home = {
          id = "572910e1-4468-4832-a869-0b3a93e2f165";
          icon = "🏠";
          position = 1000;
        };
        Programming = {
          id = "cdd10fab-4fc5-494b-9041-325e5759195b";
          icon = "💻";
          position = 2000;
        };
        School = {
          id = "c6de089c-410d-4206-961d-ab11f988d40a";
          icon = "📚";
          position = 3000;
        };
      };

      keyboardShortcutsVersion = 17; # Pin to prevent regression
      keyboardShortcuts = [
        {
          id = "zen-compact-mode-toggle";
          key = "b";
          modifiers.alt = true;
        }
        {
          id = "zen-compact-mode-show-sidebar"; # toggle floating sideboar
          key = "o";
          modifiers.alt = true;
        }
        {
          id = "key_savePage";
          key = "s";
          modifiers.control = true;
        }
        {
          id = "key_quitApplication";
          disabled = true;
        }
      ];
    };

    policies = {
      AutofillAdressEnabled = false;
      AutofillCreditCardEnabled = false;
      DisableAppUpdate = true;
      DisableFeedbackCommand = true;
      DisableFirefoxStudies = true;
      DisablePocket = true;
      DisableTelemetry = true;
      NoDefaultBookmarks = true;
      DontCheckDefaultBrowser = true;
      OfferToSaveLogins = false;
      EnableTrackingProtection = {
        Value = true;
        Locked = true;
        Cryptomining = true;
        Fingerprinting = true;
      };
      SanitizeOnShutdown = {
        FormData = true;
        Cache = true;
      };
    };
  };

  stylix.targets.zen-browser.profileNames = [config.home.username];

  # Open files with the browser
  xdg.mimeApps = let
    associations = builtins.listToAttrs (
      map
      (name: {
        inherit name;
        value = "zen-beta.desktop";
      })
      [
        "application/x-extension-shtml"
        "application/x-extension-xhtml"
        "application/x-extension-html"
        "application/x-extension-xht"
        "application/x-extension-htm"
        "x-scheme-handler/unknown"
        "x-scheme-handler/mailto"
        "x-scheme-handler/chrome"
        "x-scheme-handler/about"
        "x-scheme-handler/https"
        "x-scheme-handler/http"
        "application/xhtml+xml"
        "application/json"
        "text/plain"
        "text/html"
      ]
    );
  in {
    enable = true;
    associations.added = associations;
    defaultApplications = associations;
  };
}
