{
  stdenv,
  magic-vlsi,
  python3,
  tk,
  tcsh,
  fetchFromGitHub,
  fetchgit,
  git,
}:
let
  version = "1.0.531";
  tecnology = "sky130";
  pdk-sources = import ./sky130.nix {
    inherit fetchFromGitHub;
    inherit fetchgit;
  };
  sources-to-flags = builtins.concatStringsSep " " (
    builtins.map (source: "--enable-${source}-${tecnology}=${pdk-sources.${source}}") (
      builtins.attrNames pdk-sources
    )
  );
  flag-substitute-file = builtins.toFile "flag-substitute.sed" ''s/$(shell cd ''${.*} ; git rev-parse HEAD)/"unknown"/g'';
  pythonRuntime = python3 # .withPackages (ps: with ps; [ setuptools ])
  ;
  #commit-substitute-flags =
in
stdenv.mkDerivation {
  name = "open-pdk-${tecnology}";

  src = fetchFromGitHub {
    owner = "RTimothyEdwards";
    repo = "open_pdks";
    rev = "${ersion}";
    leaveDotGit = true;
    hash = "sha256-n0L0+Ksor76ZkLkynRdgSyCTrYe0maeOEOaikvAKu3c=";
  };
  buildInputs = [
    pythonRuntime
    magic-vlsi
    tk
    tcsh
    stdenv
    git
  ];
  #  sed '/%%%%%NIX_SKY130_MAKEFILE_EDIT%%%%%/{
  #    s/%%%%%NIX_SKY130_MAKEFILE_EDIT%%%%%//g
  #    r ${commit-substitute-flags}
  #  }' ./sky130/Makefile.in

  configurePhase = ''
    #echo "Patching Shebangs"
    patchShebangs .
    echo "Configuring PDK Files"
    ./configure --enable-${tecnology}-pdk ${sources-to-flags}
  '';
  #configurePhase = ''
  #  echo "Patching SKY130 Makefile.in"
  #  sed -i -f ${flag-substitute-file} ./sky130/Makefile.in
  #  echo "Patching Shebangs"
  #  patchShebangs .
  #  echo "Configuring PDK Files"
  #  ./configure --enable-${tecnology}-pdk ${sources-to-flags}
  #'';
  #./configure
  #postBuildPhase = ''
  #  ls .
  #'';

}
