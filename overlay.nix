final: prev: {
  openpdk = {
    sky130 = final.pkgs.callPackage ./openpdk/buildSky130.nix { };
    gf180mcu = final.pkgs.callPackage ./openpdk/buildGf180mcu.nix { };
  };
}
