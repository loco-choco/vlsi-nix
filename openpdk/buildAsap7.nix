{
  p7zip,
  stdenvNoCC,
  fetchFromGitHub,
}:
let
  asap7sc7p5t = fetchFromGitHub {
    owner = "The-OpenROAD-Project";
    repo = "asap7sc7p5t_28";
    rev = "f970bd3c3292b79ae4d022a3ec80533534614066";
    hash = "sha256-g5y5AmgQ0mKwQkaxfELEVfFEOT/aMagcPRS8AOsYF+Q=";
    sparseCheckout = [
      "LIB"
      "LEF"
      "GDS"
      "techlef_misc"
    ];
    name = "asap7sc7p5t";
  };
  openroad-flow-scripts = fetchFromGitHub {
    owner = "The-OpenROAD-Project";
    repo = "OpenROAD-flow-scripts";
    rev = "d7c7e73f973c85331311d2270bbeae652d34c040";
    hash = "sha256-weLWc6HdkF6MHxVTpARnxqofx5geD2X1QAB4qfY+rlk=";
    sparseCheckout = [
      "flow/platforms/asap7/rcx_patterns.rules"
      "flow/platforms/asap7/KLayout"
      "flow/platforms/asap7/openRoad"
      "flow/platforms/asap7/openlane"
    ];
    name = "openroad-flow-scripts";
  };
in
stdenvNoCC.mkDerivation (finalAttrs: {
  name = "asap7sc7p5t";

  srcs = [
    asap7sc7p5t
    openroad-flow-scripts
  ];
  sourceRoot = ".";
  buildInputs = [
    stdenvNoCC
    p7zip
  ];

  preConfigure = ''
    echo "Making all the folders writable"
    ${
      builtins.concatStringsSep ";" (builtins.map (source: "chmod -R u+w ${source.name}") finalAttrs.srcs)
    } 
    echo "Patching Shebangs"
    patchShebangs .
    src=$(pwd)
  '';

  dontBuild = true;

  installPhase = ''
    echo "Installing asap7sc7p5t files"
    mkdir -p $out/share/pdk/asap7/libs.ref/asap7sc7p5t
    pushd $out/share/pdk/asap7/libs.ref/asap7sc7p5t
    echo "  Installing liberty files"
    mkdir -p lib/NLDM
    mkdir -p lib/CCS
    find $src/asap7sc7p5t/LIB/NLDM/ -iname '*RVT*.lib.7z' -exec bash -c "7z x -olib/NLDM  \"{}\"" \;
    find $src/asap7sc7p5t/LIB/CCS/ -iname '*RVT_FF_ccs_*.lib.7z' -exec bash -c "7z x -olib/CCS  \"{}\"" \;

    echo "  Installing techlef files"
    mkdir -p techlef
    cp $src/asap7sc7p5t/techlef_misc/asap7_tech_1x_201209.lef techlef

    echo "  Installing lef files"
    mkdir -p lef
    find $src/asap7sc7p5t/LEF/ -iname '*_R_*.lef' -exec bash -c "cp \"{}\" lef" \;

    echo "  Installing gds files"
    mkdir -p gds
    find $src/asap7sc7p5t/GDS/ -iname '*_R_*.gds' -exec bash -c "cp \"{}\" gds" \;

    popd

    echo "Installing openroad-flow-scripts files"

    echo "  Installing klayout files"
    mkdir -p $out/share/pdk/asap7/libs.tech/klayout
    pushd $out/share/pdk/asap7/libs.tech/klayout
    cp $src/openroad-flow-scripts/flow/platforms/asap7/KLayout/asap7.lyp .
    cp $src/openroad-flow-scripts/flow/platforms/asap7/KLayout/asap7.lyt .
    popd

    echo "  Installing openlane files"
    mkdir -p $out/share/pdk/asap7/libs.tech/openlane
    mkdir -p $out/share/pdk/asap7/libs.tech/openlane/asap7sc7p5t
    pushd $out/share/pdk/asap7/libs.tech/openlane

    echo "    Installing rules file"
    cp $src/openroad-flow-scripts/flow/platforms/asap7/rcx_patterns.rules .

    echo "    Installing platform config file"
    cp $src/openroad-flow-scripts/flow/platforms/asap7/openlane/config.tcl .

    echo "    Installing stdcells config and no_synth.cells files"
    cp -r $src/openroad-flow-scripts/flow/platforms/asap7/openlane/asap7sc7p5t .

    echo "    Installing pdn file"
    cp $src/openroad-flow-scripts/flow/platforms/asap7/openRoad/pdn/pdn.cfg asap7sc7p5t

    echo "    Installing tracks file"
    cp $src/openroad-flow-scripts/flow/platforms/asap7/openRoad/make_tracks.tcl asap7sc7p5t

    popd
  '';
})
