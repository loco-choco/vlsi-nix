{ fetchFromGitHub, fetchgit, ... }:
{
  primitive = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_pr";
    rev = "v0.20.1";
    hash = "sha256-ycuEgrAZF++UsfQ9DFsqy4Y3D6RgkaQFRTySXO30dfc=";
  };
  io = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_io";
    rev = "v0.2.1";
    hash = "sha256-wKtGFBWr0eGdj8UXZF+Hag8wjSyZpL56SF+3IlvCsqk=";
  };
  sc-hd = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_sc_hd";
    rev = "v0.0.2";
    hash = "sha256-4T55Y51YHBwQt18KIapmRv4tYz09644Us0xyn9KCdCc=";
  };
  sc-hdll = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_sc_hdll";
    rev = "v0.1.1";
    hash = "sha256-D/DwdDFVAoTU4BchMC7keLwKfxbRL2s+8xw2iE6TWMs=";
  };
  sc-ms = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_sc_ms";
    rev = "v0.0.2";
    hash = "sha256-PajS2O+bpXnoultTZOMFOtMP0k09CnRDOQCOx/vRv3Q=";
  };
  sc-ls = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_sc_ls";
    rev = "v0.1.1";
    hash = "sha256-5T5VPi9xkVSJ3qPAXnmf35VcjqVAm/3OtKU9RY84lCk=";
  };
  sc-hvl = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_sc_hvl";
    rev = "v0.0.3";
    hash = "sha256-8j5QolVY0cQA6bInCBrQJKT8yD00W0UoBDBpDO3GoSw=";
  };
  sc-lp = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_sc_lp";
    rev = "v0.0.2";
    hash = "sha256-3cy2NAbEP45RVlgoA8sFLN0cIjr0JFwRkqVb512WOtw=";
  };
  sc-hs = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_sc_hs";
    rev = "v0.0.2";
    hash = "sha256-bXQZrtXm/FH1tjsxMJEucDyVxlU0RGjnLujXhCDUdEg=";
  };

  alpha = fetchFromGitHub {
    owner = "PaulSchulz";
    repo = "sky130_pschulz_xx_hd";
    rev = "6eb3b0718552b034f1bf1870285ff135e3fb2dcb";
    hash = "sha256-+7DxRIZJM7rsMUcWA6DjVNMaPrhlY2CwdK8RhVNOuDA=";
  };

  xschem = fetchFromGitHub {
    owner = "StefanSchippers";
    repo = "xschem_sky130";
    rev = "cdb5dba83695057cbf2da63b6c41a2570d68d4af";
    hash = "sha256-wGguyCIpr7cyH2Ye/VzaxbR80MLU6yMnA4f704dSH60=";
  };

  klayout = fetchFromGitHub {
    owner = "efabless";
    repo = "sky130_klayout_pdk";
    rev = "68b8aa87c129191f642da662d348e9ca6930581b";
    hash = "sha256-oTAIDS2QODXjvJM4eOmtogCnHfurW8GiKqyist+dd0o=";
  };

  precheck = fetchFromGitHub {
    owner = "efabless";
    repo = "mpw_precheck";
    rev = "gfmpw-1d";
    hash = "sha256-qPN4ruExANz1rgnAMTuVSRVlOnovH9FZkPPenWYvw4Q=";
  };

  sram = fetchFromGitHub {
    owner = "efabless";
    repo = "sky130_sram_macros";
    rev = "7b40220ebd47b8c17d58a94abaa57f111a08987a";
    hash = "sha256-eJFoMAD9z3M8dRMKFoW4tLu01fR19Pl1fFJ+V1lTfdQ=";
  };

  sram-space = fetchgit {
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_fd_bd_sram";
    fetchSubmodules = false;
    rev = "refs/tags/v0.0.0";
    hash = "sha256-LCQxq0RvDr5TkL7HwxZt38k+4gE4ynSqsRlorlP94Wc=";
  };

  reram = fetchgit {
    fetchSubmodules = false;
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_fd_pr_reram";
    rev = "refs/tags/v2.0.2";
    hash = "sha256-4k3hs6TdYfuqCAN8CqjLpsamOqWIG52Iyk1RCzYfpR8=";
  };

  osu-t12 = fetchgit {

    fetchSubmodules = false;
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_osu_sc_t12";
    rev = "ac90ef0c622a9377a16b5218d9da3ac4169eeaaf";
    hash = "sha256-UNnGFWyQ6ulSiCEcpJdJQpsBqJv4cz/wIQVgsiApi2Y=";
  };

  osu-t15 = fetchgit {
    fetchSubmodules = false;
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_osu_sc_t15";
    rev = "95d1c19abb47e1b2945847acb4e817b1b8417c43";
    hash = "sha256-cijsh9r/2LShYHa5TI3d7pM/6AwfYu73qLYOlPQ/5qQ=";
  };

  osu-t18 = fetchgit {
    fetchSubmodules = false;
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_osu_sc_t18";
    rev = "aa2b509f3c8f32ea94fdb55ac9768754667c1658";
    hash = "sha256-epLVeefxJ61xsaddNvrL4Kxv8p8P5yo7jS7V/vHCzyI=";
  };
}
