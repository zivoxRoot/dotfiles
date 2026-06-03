{ ... }:
{
  # Enable the uinput module
  boot.kernelModules = [ "uinput" ];

  # Enable uinput
  hardware.uinput.enable = true;

  # Set up udev rules for uinput
  services.udev.extraRules = ''
    KERNEL=="uinput", MODE="0660", GROUP="uinput", OPTIONS+="static_node=uinput"
  '';

  # Ensure the uinput group exists
  users.groups.uinput = { };

  # Add the Kanata service user to necessary groups
  systemd.services.kanata-internalKeyboard.serviceConfig = {
    SupplementaryGroups = [
      "input"
      "uinput"
    ];
  };

  services.kanata = {
    enable = false;
    keyboards = {
      internalKeyboard = {
        devices = [
          # Replace the paths below with the appropriate device paths for your setup.
          # Use `ls /dev/input/by-path/` to find your keyboard devices.
          "/dev/input/by-path/platform-i8042-serio-0-event-kbd"
          "/dev/input/by-path/pci-0000:00:14.0-usb-0:3:1.0-event-kbd"
        ];
        extraDefCfg = "process-unmapped-keys yes";

        config = ''
          ;; Source keys
          (defsrc
          a s d f h j k l ; spc
          )

          ;; Timing variables
          (defvar
          tap-time 120
          hold-time 180
          )

          ;; Key aliases
          ;; Define tap-hold behaviors: tap for letter, hold for modifier or layer.
          (defalias
          q (tap-hold $tap-time $hold-time q lmet)
          s (tap-hold $tap-time $hold-time s lalt)
          d (tap-hold $tap-time $hold-time d lsft)
          f (tap-hold $tap-time $hold-time f lctl)
          h (tap-hold $tap-time $hold-time h _)  ;; NOTE: Eventually move the '_' to 'lctl' if something doesn't work
          j (tap-hold $tap-time $hold-time j lctl)
          k (tap-hold $tap-time $hold-time k lsft)
          l (tap-hold $tap-time $hold-time l lalt)
          m (tap-hold $tap-time $hold-time m lmet)
          spc (tap-hold $tap-time $hold-time spc (layer-toggle vim-nav))
          left  left   ;; Left arrow for vim-nav
          down  down   ;; Down arrow for vim-nav
          up    up     ;; Up arrow for vim-nav
          right right  ;; Right arrow for vim-nav
          )

          ;; Base layer
          (deflayer base
          @q @s @d @f @h @j @k @l @m @spc
          )

          ;; Vim-nav layer
          (deflayer vim-nav
          _ _ _ _ @left @down @up @right _ _
          )
        '';
      };
    };
  };
}
