{...}: {
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.theophile = {
    isNormalUser = true;
    description = "theophile";
    extraGroups = ["networkmanager" "wheel" "docker"];
  };
}
