{
  stdenvNoCC,
  fetchFromGitHub,
}:
stdenvNoCC.mkDerivation {
  name = "ihp-sg13g2";

  src = fetchFromGitHub {
    owner = "IHP-GmbH";
    repo = "IHP-Open-PDK";
    rev = "668ee5dbd2bde0915785f83d772b1bdbdcd55235";
    hash = "sha256-x/ywiRhCY63N/njF+cd9oBPMT/sfC30fmlQuCBY0pt0=";
    fetchSubmodules = true;
  };

  buildInputs = [
    stdenvNoCC
  ];

  configurePhase = ''
    echo "Patching Shebangs"
    patchShebangs .
  '';

  dontBuild = true;

  installPhase = ''
    mkdir -p $out/share/pdk
    cp -r $src/ihp-sg13g2 $out/share/pdk
  '';
}
