{
  description = "My basic flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-26.05";

    mangowm = {
      url = "github:mangowm/mango";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    fsel.url = "github:Mjoyufull/fsel?rev=a9d035f4ac56d9f94a94e9372b0000665c41defe";

    otter-launcher = {
      url = "github:kuokuo123/otter-launcher";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim/nixos-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nvf,
      mangowm,
      nixpkgs,
      otter-launcher,
      fsel,
      home-manager,
      zen-browser,
      nixvim,
      ...
    }@inputs:
    {
      nixosConfigurations.theophile = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/laptop/configuration.nix

          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;

              extraSpecialArgs = { inherit inputs; };

              users.theophile = {
                imports = [
                  ./home/home.nix
                ];
              };

              backupFileExtension = "backup";
            };
          }
        ];
      };
    };
}
