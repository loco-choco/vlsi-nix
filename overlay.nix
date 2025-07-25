final: prev: {
  openpdk = {
    sky130 = final.pkgs.callPackage ./openpdk/buildSky130.nix { };
    gf180mcu = final.pkgs.callPackage ./openpdk/buildGf180mcu.nix { };
    ihp-sg13g2 = final.pkgs.callPackage ./openpdk/buildIhpSg13g2.nix { };
  };
}
