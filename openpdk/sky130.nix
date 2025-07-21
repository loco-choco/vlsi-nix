{ fetchFromGitHub, fetchgit, ... }:
{
  primitive = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_pr";
    rev = "v0.20.1";
    hash = "sha256-kO1gNdnBPuKtK5zFuO+le8qyQAwD9Ru5cZkF1xfk/UQ=";
    leaveDotGit = true;
  };
  io = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_io";
    rev = "v0.2.1";
    hash = "sha256-tVkxGg7dvpGRSHLRvaQv9QHqAzckH2V9MssVHqjVScM=";
    leaveDotGit = true;
  };
  sc-hd = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_sc_hd";
    rev = "v0.0.2";
    hash = "sha256-Ql0ed2w88xXE9un2Qt9xpSk1qo3PGSYnOz0ndyg0Nyc=";
    leaveDotGit = true;
  };
  sc-hdll = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_sc_hdll";
    rev = "v0.1.1";
    hash = "sha256-pFcfT2laXiuqzi3ZZt0YrLNEpboXsRj9nD7FSFPz/rg=";
    leaveDotGit = true;
  };
  sc-ms = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_sc_ms";
    rev = "v0.0.2";
    hash = "sha256-CJa8dBNgraNcDRoup+IjvNuOuChKVsxB3Pr67j1P2vE=";
    leaveDotGit = true;
  };
  sc-ls = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_sc_ls";
    rev = "v0.1.1";
    hash = "sha256-/7WfyKntcuQTdWhu7f4u+KhJWLX3/LK9chpcxddA+Ew=";
    leaveDotGit = true;
  };
  sc-hvl = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_sc_hvl";
    rev = "v0.0.3";
    hash = "sha256-tldR8jyjW4PoRmPWyb4EsTKZDesNq9F5lG6hHYP7U5M=";
    leaveDotGit = true;
  };
  sc-lp = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_sc_lp";
    rev = "v0.0.2";
    hash = "sha256-jOjG1+E3Nk5oxjsKO3ym8mPGRdgMmRr/hi0FbSwMWOU=";
    leaveDotGit = true;
  };
  sc-hs = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_sc_hs";
    rev = "v0.0.2";
    hash = "sha256-jOjG1+E3Nk5oxjsKO3ym8mPGRdgMmRr/hi0FbSwMWOU=";
    leaveDotGit = true;
  };

  alpha = fetchFromGitHub {
    owner = "PaulSchulz";
    repo = "sky130_pschulz_xx_hd";
    rev = "6eb3b0718552b034f1bf1870285ff135e3fb2dcb";
    hash = "sha256-L6Soq3jqnVq2QyrwhvpmwHB7wgu+ezFujtabi3eX+Bg=";
    leaveDotGit = true;
  };

  xschem = fetchFromGitHub {
    owner = "StefanSchippers";
    repo = "xschem_sky130";
    rev = "cdb5dba83695057cbf2da63b6c41a2570d68d4af";
    hash = "sha256-wGguyCIpr7cyH2Ye/VzaxbR80MLU6yMnA4f704dSH60=";
    leaveDotGit = true;
  };

  klayout = fetchFromGitHub {
    owner = "efabless";
    repo = "sky130_klayout_pdk";
    rev = "68b8aa87c129191f642da662d348e9ca6930581b";
    hash = "sha256-Ys2jnoMfW1K+xTw6YlSIDCYxItU2k/xu4agW1TceUmE=";
    leaveDotGit = true;
  };

  precheck = fetchFromGitHub {
    owner = "efabless";
    repo = "mpw_precheck";
    rev = "gfmpw-1d";
    hash = "sha256-Fzoj5EahUrTwEcFgFhANleon9By9GVOa96McdhblF0Q=";
    leaveDotGit = true;
  };

  sram = fetchFromGitHub {
    owner = "efabless";
    repo = "sky130_sram_macros";
    rev = "7b40220ebd47b8c17d58a94abaa57f111a08987a";
    hash = "sha256-v2mKPnnCKvEW9OLPTRhZjtfO7Pnp9sRaISiWs8hw/ng=";
    leaveDotGit = true;
  };

  sram-space = fetchgit {
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_fd_bd_sram";
    fetchSubmodules = false;
    rev = "refs/tags/v0.0.0";
    hash = "sha256-RbMTE0DVSbWaUOya0gbGOtwX49L0YAQNBbo0gzy0rNI=";
    leaveDotGit = true;
  };

  reram = fetchgit {
    fetchSubmodules = false;
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_fd_pr_reram";
    rev = "refs/tags/v2.0.2";
    hash = "sha256-1TXnDQqzg7JEIPwLA0syi5m6Nq0ncLzd7ddVOJOEmrM=";
    leaveDotGit = true;
  };

  osu-t12 = fetchgit {
    fetchSubmodules = false;
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_osu_sc_t12";
    rev = "ac90ef0c622a9377a16b5218d9da3ac4169eeaaf";
    hash = "sha256-O4uzcdCMdGY6+cqBy5otSarPGlgUbVJgRRJvcLiubR8=";
    leaveDotGit = true;
  };

  osu-t15 = fetchgit {
    fetchSubmodules = false;
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_osu_sc_t15";
    rev = "95d1c19abb47e1b2945847acb4e817b1b8417c43";
    hash = "sha256-98AcYWs5StvD8GAEtyncm1Qzg4ibFcWVfxMZIsvI6Bw=";
    leaveDotGit = true;
  };

  osu-t18 = fetchgit {
    fetchSubmodules = false;
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_osu_sc_t18";
    rev = "aa2b509f3c8f32ea94fdb55ac9768754667c1658";
    hash = "sha256-m6n/URKy5FJ699+QVW1SPTCA7I/B8pUxbODKtawPe+M=";
    leaveDotGit = true;
  };
}
