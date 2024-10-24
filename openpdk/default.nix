{ pkgs }:
builtins.mapAttrs (name: pkgs.callPackage ((import ./buildOpenPDK.nix) name))
(import ./open-pdks.nix)
