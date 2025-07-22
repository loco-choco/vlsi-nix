{
  stdenv,
  magic-vlsi,
  python312,
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
  pythonRuntime = python312;
in
stdenv.mkDerivation {
  name = "open-pdk-${tecnology}";

  src = fetchFromGitHub {
    owner = "RTimothyEdwards";
    repo = "open_pdks";
    rev = "${version}";
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

  makeFlags = [
    "SHARED_PDKS_PATH=$(out)/share/pdk"
  ];

  configurePhase = ''
    #echo "Patching Shebangs"
    patchShebangs .
    echo "Configuring PDK Files"
    ./configure --enable-${tecnology}-pdk ${sources-to-flags}
  '';
}
