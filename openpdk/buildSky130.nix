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
  #pdk-sources = import ./sky130.nix {
  #  inherit fetchFromGitHub;
  #  inherit fetchgit;
  #};
  #sources-to-flags = builtins.concatStringsSep " " (
  #  builtins.map (source: "--enable-${source}-${tecnology}=${pdk-sources.${source}}") (
  #    builtins.attrNames pdk-sources
  #  )
  #);
  #flag-substitute-file = builtins.toFile "flag-substitute.sed" ''s/$(shell cd ''${.*} ; git rev-parse HEAD)/"unknown"/g'';
  #pythonRuntime = python3 # .withPackages (ps: with ps; [ setuptools ])
  #;
  #commit-substitute-flags =
in
stdenv.mkDerivation (final: {
  name = "open-pdk-${final.tecnology}";
  version = "1.0.531";
  tecnology = "sky130";
  pythonRuntime = python3;

  src = fetchFromGitHub {
    owner = "RTimothyEdwards";
    repo = "open_pdks";
    rev = "${final.version}";
    leaveDotGit = true;
    hash = "sha256-n0L0+Ksor76ZkLkynRdgSyCTrYe0maeOEOaikvAKu3c=";
  };
  buildInputs = [
    final.pythonRuntime
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
    ./configure --enable-${final.tecnology}-pdk ${
      builtins.map (source: "--enable-${source}-${final.tecnology}=${final.pdk-sources.${source}}") (
        builtins.attrNames final.pdk-sources
      )
    }
  '';
  pdk-sources = {
    primitive = fetchFromGitHub {
      owner = "efabless";
      repo = "skywater-pdk-libs-sky130_fd_pr";
      rev = "main";
      hash = "";
      leaveDotGit = true;
    };
    io = fetchFromGitHub {
      owner = "efabless";
      repo = "skywater-pdk-libs-sky130_fd_io";
      rev = "main";
      hash = "";
      leaveDotGit = true;
    };
    sc-hd = fetchFromGitHub {
      owner = "efabless";
      repo = "skywater-pdk-libs-sky130_fd_sc_hd";
      rev = "main";
      hash = "";
      leaveDotGit = true;
    };
    sc-hdll = fetchFromGitHub {
      owner = "efabless";
      repo = "skywater-pdk-libs-sky130_fd_sc_hdll";
      rev = "main";
      hash = "";
      leaveDotGit = true;
    };
    sc-ms = fetchFromGitHub {
      owner = "efabless";
      repo = "skywater-pdk-libs-sky130_fd_sc_ms";
      rev = "main";
      hash = "";
      leaveDotGit = true;
    };
    sc-ls = fetchFromGitHub {
      owner = "efabless";
      repo = "skywater-pdk-libs-sky130_fd_sc_ls";
      rev = "main";
      hash = "";
      leaveDotGit = true;
    };
    sc-hvl = fetchFromGitHub {
      owner = "efabless";
      repo = "skywater-pdk-libs-sky130_fd_sc_hvl";
      rev = "main";
      hash = "";
      leaveDotGit = true;
    };
    sc-lp = fetchFromGitHub {
      owner = "efabless";
      repo = "skywater-pdk-libs-sky130_fd_sc_lp";
      rev = "main";
      hash = "";
      leaveDotGit = true;
    };
    sc-hs = fetchFromGitHub {
      owner = "efabless";
      repo = "skywater-pdk-libs-sky130_fd_sc_hs";
      rev = "main";
      hash = "";
      leaveDotGit = true;
    };

    alpha = fetchFromGitHub {
      owner = "PaulSchulz";
      repo = "sky130_pschulz_xx_hd";
      rev = "main";
      hash = "";
      leaveDotGit = true;
    };

    xschem = fetchFromGitHub {
      owner = "StefanSchippers";
      repo = "xschem_sky130";
      rev = "main";
      hash = "";
      leaveDotGit = true;
    };

    klayout = fetchFromGitHub {
      owner = "efabless";
      repo = "sky130_klayout_pdk";
      rev = "main";
      hash = "";
      leaveDotGit = true;
    };

    precheck = fetchFromGitHub {
      owner = "efabless";
      repo = "mpw_precheck";
      rev = "main";
      hash = "";
      leaveDotGit = true;
    };

    sram = fetchFromGitHub {
      owner = "efabless";
      repo = "sky130_sram_macros";
      rev = "main";
      hash = "";
      leaveDotGit = true;
    };

    sram-space = fetchgit {
      url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_fd_bd_sram";
      fetchSubmodules = false;
      rev = "main";
      hash = "";
      leaveDotGit = true;
    };

    reram = fetchgit {
      fetchSubmodules = false;
      url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_fd_pr_reram";
      rev = "main";
      hash = "";
      leaveDotGit = true;
    };

    osu-t12 = fetchgit {
      fetchSubmodules = false;
      url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_osu_sc_t12";
      rev = "main";
      hash = "";
      leaveDotGit = true;
    };

    osu-t15 = fetchgit {
      fetchSubmodules = false;
      url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_osu_sc_t15";
      rev = "main";
      hash = "";
      leaveDotGit = true;
    };

    osu-t18 = fetchgit {
      fetchSubmodules = false;
      url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_osu_sc_t18";
      rev = "main";
      hash = "";
      leaveDotGit = true;
    };
  };
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

})

#####
