{
  stdenvNoCC,
  fetchFromGitHub,
}:
let
  asap7sc7p5t = fetchFromGitHub {
    owner = "The-OpenROAD-Project";
    repo = "asap7sc7p5t_28";
    rev = "f970bd3c3292b79ae4d022a3ec80533534614066";
    hash = "";
    name = "asap7sc7p5t";
  };
in
stdenvNoCC.mkDerivation (finalAttrs: {
  name = "asap7";

  srcs = [ asap7sc7p5t ];
  sourceRoot = ".";
  buildInputs = [
    stdenvNoCC
  ];

  preConfigure = ''
    echo "Making all the folders writable"
    ${
      builtins.concatStringsSep ";" (builtins.map (source: "chmod -R u+w ${source.name}") finalAttrs.srcs)
    } 
    echo "Patching Shebangs"
    patchShebangs .
  '';

  installPhase = ''
    mkdir -p $out/share/pdk
    cd $out/share/pdk
    echo "Installing asap7sc7p5t files"
    echo "\tInstalling liberty files"
    mkdir -p libs.ref/asap7sc7p5t/lib
    cp -r $src/asap7sc7p5t/LIB/NLDM/*RVT*.lib libs.ref/asap7sc7p5t/lib/NLDM
    cp -r $src/asap7sc7p5t/LIB/CCS/*RVT_FF_ccs_*.lib libs.ref/asap7sc7p5t/lib/CCS
    cp -r $src/asap7 $out/share/pdk
  '';
})
