{
  description = "Personal Nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      # inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = {flake-parts, ...} @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "x86_64-linux"
        "aarch64-darwin"
      ];

      imports = [
        inputs.nixvim.flakeModules.nixvimConfigurations
        inputs.nixvim.flakeModules.auto
      ];

      nixvim = {
        packages.enable = true;
        checks.enable = true;
      };

      perSystem = {system, ...}: {
        nixvimConfigurations.default = inputs.nixvim.lib.evalNixvim {
          inherit system;
          modules = [./config];
        };
      };
    };
}
