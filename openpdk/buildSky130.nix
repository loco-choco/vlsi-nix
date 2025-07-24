{
  stdenvNoCC,
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
  open-pdk-script = fetchFromGitHub {
    owner = "RTimothyEdwards";
    repo = "open_pdks";
    rev = "${version}";
    leaveDotGit = true;
    hash = "sha256-n0L0+Ksor76ZkLkynRdgSyCTrYe0maeOEOaikvAKu3c=";
    name = "open-pdk-script";
  };

  sources = builtins.map (source: pdk-sources.${source}) (builtins.attrNames pdk-sources);
  source-flags = (
    builtins.map (source: "--enable-${source}-${tecnology}=../../${source}") (
      builtins.attrNames pdk-sources
    )
  );
  pythonRuntime = python312;
in
stdenvNoCC.mkDerivation {
  name = "open-pdk-${tecnology}";

  srcs = [
    open-pdk-script
  ] ++ sources;
  sourceRoot = "open-pdk-script";
  #sourceRoot = open-pdk-script;
  buildInputs = [
    pythonRuntime
    magic-vlsi
    tk
    tcsh
    stdenvNoCC
    git
  ];

  #unpackPhase = ''
  #  runHook preUnpack

  #  for _src in $srcs; do
  #    cp -r --no-preserve=mode "$_src" $(stripHash "$_src")
  #  done

  #  runHook postUnpack
  #'';

  #makeFlags = [
  #  "SHARED_PDKS_PATH=$(out)/share/pdk"
  #  "ENABLED_VARIANTS=A"
  #];
  preConfigure = ''
    echo "Making all the folders writable"
    ${
      builtins.concatStringsSep ";" (
        builtins.map (source: "chmod -R u+w ../${source}") (builtins.attrNames pdk-sources)
      )
    }  
    echo "Patching Shebangs"
    patchShebangs .
  '';
  #configurePhase = ''
  #  echo "Patching Shebangs"
  #  patchShebangs .
  #  echo "Configuring PDK Files"
  #  ./configure --enable-${tecnology}-pdk ${sources-to-flags} --prefix=$(out)
  #'';

  configureFlags = [
    #"--with-sky130-link-targets=source"
    "--enable-${tecnology}-pdk"
  ] ++ source-flags;

  #preBuild = ''
  #'';

  #preInstall = ''
  #  ls $out/share/pdk
  #'';
  #postInstall = ''
  #  mkdir -p $out/share/pdk
  #  cp -r /build/output $out/share/pdk
  #'';
}
