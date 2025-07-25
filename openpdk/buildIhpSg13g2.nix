{
  stdenvNoCC,
  fetchFromGitHub,
}:
stdenvNoCC.mkDerivation {
  name = "ihp-sg13g2";

  src = fetchFromGitHub {
    owner = "IHP-GmbH";
    repo = "IHP-Open-PDK";
    rev = "82478bf9442edc572b596136285de70c83ac4f16";
    hash = "sha256-9Z2e6QLnTgV4zxvNbIcJm8BXEyIVvOKfkOZ2o3rbwFM=";
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
