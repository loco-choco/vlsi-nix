final: prev: {
  openpdk = {
    sky130 = final.pkgs.callPackage ./openpdk/buildSky130.nix {};
  };
}
