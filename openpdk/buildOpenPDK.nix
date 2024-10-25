tecnology:
{ stdenv, magic-vlsi, python3, tk, tcsh, fetchFromGitHub, fetchgit }:
let
  version = "1.0.498";
  pdks-flags = import ./open-pdks.nix;
  sources-to-flags = builtins.concatStringsSep " " (builtins.map (source:
    "--enable-${source}-${tecnology}=${
      fetchgit pdks-flags.${tecnology}.sources.${source}
    }") (builtins.attrNames (pdks-flags.${tecnology}.sources)));
  flag-substitute-file = builtins.toFile "flag-substitute.sed"
    ''s/$(shell cd ''${.*} ; git rev-parse HEAD)/"unknown"/g'';
  pythonRuntime = python3.withPackages (ps: with ps; [ setuptools ]);
  #commit-substitute-flags = 
in stdenv.mkDerivation {
  name = "open-pdk-${tecnology}";
  src = fetchFromGitHub {
    owner = "RTimothyEdwards";
    repo = "open_pdks";
    rev = "${version}";
    hash = "sha256-g1f3I0I3ECbCvDCNa6HQhla3ykEHRyafqS4xL2P01V8=";
  };
  buildInputs = [ pythonRuntime magic-vlsi tk tcsh stdenv];
  #  sed '/%%%%%NIX_SKY130_MAKEFILE_EDIT%%%%%/{
  #    s/%%%%%NIX_SKY130_MAKEFILE_EDIT%%%%%//g
  #    r ${commit-substitute-flags}
  #  }' ./sky130/Makefile.in

  configurePhase = ''
    echo "Patching SKY130 Makefile.in"
    sed -i -f ${flag-substitute-file} ./sky130/Makefile.in
    echo "Patching Shebangs"
    patchShebangs .
    echo "Configuring PDK Files"
    ./configure --enable-${tecnology}-pdk ${sources-to-flags}
  '';
  #./configure 
  postBuildPhase = ''
    ls .
  '';

}

#####
