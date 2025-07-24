{ fetchFromGitHub, fetchgit, ... }:
{
  primitive = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "skywater-pdk-libs-sky130_fd_pr";
    rev = "1232782c1b9fab3aacda74d67ce7c92bf7da8105";
    hash = "";
    leaveDotGit = true;
    name = "primitive";
  };
  io = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "skywater-pdk-libs-sky130_fd_io";
    rev = "e60737bf624df95c211fe99c007ddec78e3e081d";
    hash = "";
    leaveDotGit = true;
    name = "io";
  };
  sc-hd = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "skywater-pdk-libs-sky130_fd_sc_hd";
    rev = "aed07ad6d4eff1861cb9d10f102d247231e3645c";
    hash = "";
    leaveDotGit = true;
    name = "sc-hd";
  };
  sc-hdll = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "skywater-pdk-libs-sky130_fd_sc_hdll";
    rev = "f67521458137f30a01ec76aad3028e77581446ae";
    hash = "";
    leaveDotGit = true;
    name = "sc-hdll";
  };
  sc-ms = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "skywater-pdk-libs-sky130_fd_sc_ms";
    rev = "3b95b8068f09b0f6dec28ae8d13f22ce980972ae";
    hash = "";
    leaveDotGit = true;
    name = "sc-ms";
  };
  sc-ls = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "skywater-pdk-libs-sky130_fd_sc_ls";
    rev = "dfbb5b4ae9d80bcec3f0aad1dd5a47a2400df010";
    hash = "";
    leaveDotGit = true;
    name = "sc-ls";
  };
  sc-hvl = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "skywater-pdk-libs-sky130_fd_sc_hvl";
    rev = "e5413e01fa071029ba84d9faa98d9acd80e75a38";
    hash = "";
    leaveDotGit = true;
    name = "sc-hvl";
  };
  sc-lp = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "skywater-pdk-libs-sky130_fd_sc_lp";
    rev = "b93a1a75fa1b864872ebb0b078f6a2dd6e318d7c";
    hash = "";
    leaveDotGit = true;
    name = "sc-lp";
  };
  sc-hs = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "skywater-pdk-libs-sky130_fd_sc_hs";
    rev = "b9b2be651c4ca109240709b7e3a7a91613b2eb56";
    hash = "";
    leaveDotGit = true;
    name = "sc-hs";
  };

  alpha = fetchFromGitHub {
    owner = "PaulSchulz";
    repo = "sky130_pschulz_xx_hd";
    rev = "6eb3b0718552b034f1bf1870285ff135e3fb2dcb";
    hash = "";
    leaveDotGit = true;
    name = "alpha";
  };

  xschem = fetchFromGitHub {
    owner = "StefanSchippers";
    repo = "xschem_sky130";
    rev = "5a1a7e9d6878d676cecbc88a2062e6c72b514c6c";
    hash = "";
    leaveDotGit = true;
    name = "xschem";
  };

  klayout = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "sky130_klayout_pdk";
    rev = "9861f40ff389c86fbe082122ee868a065cd4cfd4";
    hash = "";
    leaveDotGit = true;
    name = "klayout";
  };

  precheck = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "mpw_precheck";
    rev = "7eb869a4b6a5807f49d5ae738c541cce39c41ba5";
    hash = "";
    leaveDotGit = true;
    name = "precheck";
  };

  sram = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "sky130_sram_macros";
    rev = "5ad1c96053ee8223fe7e956e314646adfce605dd";
    hash = "";
    leaveDotGit = true;
    name = "sram";
  };

  sram-space = fetchgit {
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_fd_bd_sram";
    fetchSubmodules = false;
    rev = "be33adbcf188fdeab5c061699847d9d440f7a084";
    hash = "";
    leaveDotGit = true;
    name = "sram-space";
  };

  reram = fetchgit {
    fetchSubmodules = false;
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_fd_pr_reram";
    rev = "d6d2a3c6960aac0a0b12fc21221c31777bbf284d";
    hash = "";
    leaveDotGit = true;
    name = "reram";
  };

  osu-t12 = fetchgit {
    fetchSubmodules = false;
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_osu_sc_t12";
    rev = "ac90ef0c622a9377a16b5218d9da3ac4169eeaaf";
    hash = "";
    leaveDotGit = true;
    name = "osu-t12";
  };

  osu-t15 = fetchgit {
    fetchSubmodules = false;
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_osu_sc_t15";
    rev = "95d1c19abb47e1b2945847acb4e817b1b8417c43";
    hash = "";
    leaveDotGit = true;
    name = "osu-t15";
  };

  osu-t18 = fetchgit {
    fetchSubmodules = false;
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_osu_sc_t18";
    rev = "aa2b509f3c8f32ea94fdb55ac9768754667c1658";
    hash = "";
    leaveDotGit = true;
    name = "osu-t18";
  };
}
