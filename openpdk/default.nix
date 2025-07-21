pkgs:
let
  buildOpenPDK = import ./buildOpenPDK.nix;
in
builtins.mapAttrs (name: v: pkgs.callPackage (buildOpenPDK name)) (
  import ./open-pdks.nix {
    fetchFromGitHub = pkgs.fetchFromGitHub;
    fetchgit = pkgs.fetchgit;
  }
)
