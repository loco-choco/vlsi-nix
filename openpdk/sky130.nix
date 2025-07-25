{ fetchFromGitHub, fetchgit, ... }:
{
  primitive = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "skywater-pdk-libs-sky130_fd_pr";
    rev = "1232782c1b9fab3aacda74d67ce7c92bf7da8105";
    hash = "sha256-X7or2EfACbiNUBHI3nuBi8qdXxr3nIkBnphvUmKXGFk=";
    leaveDotGit = true;
    name = "primitive";
  };
  io = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "skywater-pdk-libs-sky130_fd_io";
    rev = "e60737bf624df95c211fe99c007ddec78e3e081d";
    hash = "sha256-zaS3P5YXVnnoU4nPtB3v5pkDeusN8XoIihq3tfV2IsE=";
    leaveDotGit = true;
    name = "io";
  };
  sc-hd = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "skywater-pdk-libs-sky130_fd_sc_hd";
    rev = "aed07ad6d4eff1861cb9d10f102d247231e3645c";
    hash = "sha256-DT4wyGx9qZD11Ze/VOeCISwR5UU1JdLsLd4z5Mym9HA=";
    leaveDotGit = true;
    name = "sc-hd";
  };
  sc-hdll = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "skywater-pdk-libs-sky130_fd_sc_hdll";
    rev = "f67521458137f30a01ec76aad3028e77581446ae";
    hash = "sha256-mqEwvsa57MuwptSgAK66tqa2VkVusL5tDlynkT52eF0=";
    leaveDotGit = true;
    name = "sc-hdll";
  };
  sc-ms = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "skywater-pdk-libs-sky130_fd_sc_ms";
    rev = "3b95b8068f09b0f6dec28ae8d13f22ce980972ae";
    hash = "sha256-cWoCwloRd5CVhApFhbqrvbJ1QP6NOz0rYaqWahBID7c=";
    leaveDotGit = true;
    name = "sc-ms";
  };
  sc-ls = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "skywater-pdk-libs-sky130_fd_sc_ls";
    rev = "dfbb5b4ae9d80bcec3f0aad1dd5a47a2400df010";
    hash = "sha256-Uj3chkF0IS32Ri5XRT/IUf0WWvJq5I5OQox4xyitJLY=";
    leaveDotGit = true;
    name = "sc-ls";
  };
  sc-hvl = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "skywater-pdk-libs-sky130_fd_sc_hvl";
    rev = "e5413e01fa071029ba84d9faa98d9acd80e75a38";
    hash = "sha256-C2KEaCd1IlZO2cKpWtQNXmMqqDal41Ev73fQZgHleSs=";
    leaveDotGit = true;
    name = "sc-hvl";
  };
  sc-lp = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "skywater-pdk-libs-sky130_fd_sc_lp";
    rev = "b93a1a75fa1b864872ebb0b078f6a2dd6e318d7c";
    hash = "sha256-rmCPrPYce8db+X1ba1KqF0/kSWMNFls5H9SresmCn6U=";
    leaveDotGit = true;
    name = "sc-lp";
  };
  sc-hs = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "skywater-pdk-libs-sky130_fd_sc_hs";
    rev = "b9b2be651c4ca109240709b7e3a7a91613b2eb56";
    hash = "sha256-BPv3NSbYLhfpfcuXCjzbpBeXdRQaxtznwl6twQFLGTs=";
    leaveDotGit = true;
    name = "sc-hs";
  };

  alpha = fetchFromGitHub {
    owner = "PaulSchulz";
    repo = "sky130_pschulz_xx_hd";
    rev = "6eb3b0718552b034f1bf1870285ff135e3fb2dcb";
    hash = "sha256-L6Soq3jqnVq2QyrwhvpmwHB7wgu+ezFujtabi3eX+Bg=";
    leaveDotGit = true;
    name = "alpha";
  };

  xschem = fetchFromGitHub {
    owner = "StefanSchippers";
    repo = "xschem_sky130";
    rev = "5a1a7e9d6878d676cecbc88a2062e6c72b514c6c";
    hash = "sha256-zxpV0m+UoIPmNEZfam9YmKpfZ6X5lqU9iUNfjNd3MC8";
    leaveDotGit = true;
    name = "xschem";
  };

  klayout = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "sky130_klayout_pdk";
    rev = "9861f40ff389c86fbe082122ee868a065cd4cfd4";
    hash = "sha256-/rb30azy4zoy9xfQFa8jMd/NvjQh6IWy9zOjfMyYm5I=";
    leaveDotGit = true;
    name = "klayout";
  };

  precheck = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "mpw_precheck";
    rev = "7eb869a4b6a5807f49d5ae738c541cce39c41ba5";
    hash = "sha256-wmomE+BrNFYl9Cq1sIqPMrAFp953K+pqUzpOPVpAmiQ=";
    leaveDotGit = true;
    name = "precheck";
  };

  sram = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "sky130_sram_macros";
    rev = "5ad1c96053ee8223fe7e956e314646adfce605dd";
    hash = "sha256-o5uAPPJ33j2cI5HkUd3I0SX62/Hb33KZZM2xXyUiUrw=";
    leaveDotGit = true;
    name = "sram";
  };

  sram-space = fetchgit {
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_fd_bd_sram";
    fetchSubmodules = false;
    rev = "be33adbcf188fdeab5c061699847d9d440f7a084";
    hash = "sha256-sgDZuGeDw5jyO3ynWmMHby4n5IWHzwWdl16vJpFQsOQ=";
    leaveDotGit = true;
    name = "sram-space";
  };

  reram = fetchgit {
    fetchSubmodules = false;
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_fd_pr_reram";
    rev = "d6d2a3c6960aac0a0b12fc21221c31777bbf284d";
    hash = "sha256-Kh/Iedj9pr6bKsEkBPTl30bECPGIo+A7ugbnWptO3BU=";
    leaveDotGit = true;
    name = "reram";
  };

  osu-t12 = fetchgit {
    fetchSubmodules = false;
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_osu_sc_t12";
    rev = "ac90ef0c622a9377a16b5218d9da3ac4169eeaaf";
    hash = "sha256-O4uzcdCMdGY6+cqBy5otSarPGlgUbVJgRRJvcLiubR8=";
    leaveDotGit = true;
    name = "osu-t12";
  };

  osu-t15 = fetchgit {
    fetchSubmodules = false;
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_osu_sc_t15";
    rev = "95d1c19abb47e1b2945847acb4e817b1b8417c43";
    hash = "sha256-98AcYWs5StvD8GAEtyncm1Qzg4ibFcWVfxMZIsvI6Bw=";
    leaveDotGit = true;
    name = "osu-t15";
  };

  osu-t18 = fetchgit {
    fetchSubmodules = false;
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_osu_sc_t18";
    rev = "aa2b509f3c8f32ea94fdb55ac9768754667c1658";
    hash = "sha256-m6n/URKy5FJ699+QVW1SPTCA7I/B8pUxbODKtawPe+M=";
    leaveDotGit = true;
    name = "osu-t18";
  };
}
