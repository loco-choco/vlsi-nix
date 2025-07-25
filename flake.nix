{
  description = "A Nix flake for some PDKs";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/master";
  };
  outputs =
    {
      self,
      flake-utils,
      nixpkgs,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = (import nixpkgs) {
          inherit system;
          overlays = [ self.overlay ];
        };
      in
      {
        packages = {
          sky130 = pkgs.openpdk.sky130;
          gf180mcu = pkgs.openpdk.gf180mcu;
          ihp-sg13g2 = pkgs.openpdk.ihp-sg13g2;
        };
      }
    )
    // {
      overlay = import ./overlay.nix;
    };
}
