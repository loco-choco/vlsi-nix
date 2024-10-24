{ stdenv, magic-vlsi, python3, fetchFromGitHub }:
{ tecnology }:
let
  version = "1.0.498";
  pdks_flags = import ./open-pdks.nix;
in stdenv.mkDerivation {
  name = "open-pdk-${tecnology}";
  src = fetchFromGitHub {
    owner = "RTimothyEdwards";
    repo = "open_pdks";
    rev = "${version}";
    hash = "";
  };
  buildInputs = [ python3 magic-vlsi ];

  preBuildPhase = ''
    echo "Configuring PDK Files"
    ./configure ${builtins.concatStringsSep " " pdks_flags.${tecnology}}
  '';
}
