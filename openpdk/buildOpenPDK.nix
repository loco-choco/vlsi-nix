tecnology:
{ stdenv, magic-vlsi, python3, fetchFromGitHub, fetchgit }:
let
  version = "1.0.498";
  pdks-flags = import ./open-pdks.nix;
  sources-to-flags = builtins.concatStringsSep " " (builtins.map (source:
    "--enable-${source}-${tecnology}=${
      fetchgit pdks-flags.${tecnology}.sources.${source}
    }") (builtins.attrNames (pdks-flags.${tecnology}.sources)));
commit-substitute-flags = 
in stdenv.mkDerivation {
  name = "open-pdk-${tecnology}";
  src = fetchFromGitHub {
    owner = "RTimothyEdwards";
    repo = "open_pdks";
    rev = "${version}";
    hash = "sha256-g1f3I0I3ECbCvDCNa6HQhla3ykEHRyafqS4xL2P01V8=";
  };
  buildInputs = [ python3 magic-vlsi ];

  configurePhase = ''
    echo "Editing SKY130 Makefile.in"
    sed '/%%%%%NIX_SKY130_MAKEFILE_EDIT%%%%%/{
      s/%%%%%NIX_SKY130_MAKEFILE_EDIT%%%%%//g
      r ${commit-substitute-flags}
    }' ./sky130/Makefile.in
    echo "Configuring PDK Files"
    ./configure --enable-${tecnology}-pdk ${sources-to-flags}
  '';
  #./configure 

}

#####
