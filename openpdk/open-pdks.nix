{
  sky130 = {
    sources = {
      primitive = {
        url = "https://github.com/efabless/skywater-pdk-libs-sky130_fd_pr.git";
        fetchSubmodules = false;
        rev = "refs/tags/v0.20.1";
        hash = "sha256-ycuEgrAZF++UsfQ9DFsqy4Y3D6RgkaQFRTySXO30dfc=";
      };
      io = {
        url = "https://github.com/efabless/skywater-pdk-libs-sky130_fd_io.git";
        fetchSubmodules = false;
        rev = "refs/tags/v0.2.1";
        hash = "sha256-wKtGFBWr0eGdj8UXZF+Hag8wjSyZpL56SF+3IlvCsqk=";
      };
      sc-hd = {
        url =
          "https://github.com/efabless/skywater-pdk-libs-sky130_fd_sc_hd.git";
        fetchSubmodules = false;
        rev = "refs/tags/v0.0.2";
        hash = "sha256-4T55Y51YHBwQt18KIapmRv4tYz09644Us0xyn9KCdCc=";
      };
      sc-hdll = {
        url =
          "https://github.com/efabless/skywater-pdk-libs-sky130_fd_sc_hdll.git";
        fetchSubmodules = false;
        rev = "refs/tags/v0.1.1";
        hash = "sha256-D/DwdDFVAoTU4BchMC7keLwKfxbRL2s+8xw2iE6TWMs=";
      };

      sc-ms = {
        url =
          "https://github.com/efabless/skywater-pdk-libs-sky130_fd_sc_ms.git";
        fetchSubmodules = false;
        rev = "refs/tags/v0.0.2";
        hash = "sha256-PajS2O+bpXnoultTZOMFOtMP0k09CnRDOQCOx/vRv3Q=";
      };

      sc-ls = {
        url =
          "https://github.com/efabless/skywater-pdk-libs-sky130_fd_sc_ls.git";
        fetchSubmodules = false;
        rev = "refs/tags/v0.1.1";
        hash = "sha256-5T5VPi9xkVSJ3qPAXnmf35VcjqVAm/3OtKU9RY84lCk=";
      };
      sc-hvl = {
        url =
          "https://github.com/efabless/skywater-pdk-libs-sky130_fd_sc_hvl.git";
        fetchSubmodules = false;
        rev = "refs/tags/v0.0.3";
        hash = "sha256-8j5QolVY0cQA6bInCBrQJKT8yD00W0UoBDBpDO3GoSw=";
      };

      sc-lp = {
        url =
          "https://github.com/efabless/skywater-pdk-libs-sky130_fd_sc_lp.git";
        fetchSubmodules = false;
        rev = "refs/tags/v0.0.2";
        hash = "sha256-3cy2NAbEP45RVlgoA8sFLN0cIjr0JFwRkqVb512WOtw=";
      };

      sc-hs = {
        url =
          "https://github.com/efabless/skywater-pdk-libs-sky130_fd_sc_hs.git";

        fetchSubmodules = false;
        rev = "refs/tags/v0.0.2";
        hash = "sha256-bXQZrtXm/FH1tjsxMJEucDyVxlU0RGjnLujXhCDUdEg=";
      };

      alpha = {
        url = "https://github.com/PaulSchulz/sky130_pschulz_xx_hd.git";
        fetchSubmodules = false;
        rev = "6eb3b0718552b034f1bf1870285ff135e3fb2dcb";
        hash = "sha256-+7DxRIZJM7rsMUcWA6DjVNMaPrhlY2CwdK8RhVNOuDA=";
      };

      xschem = {
        url = "https://github.com/StefanSchippers/xschem_sky130.git";
        fetchSubmodules = false;
        rev = "cdb5dba83695057cbf2da63b6c41a2570d68d4af";
        hash = "sha256-wGguyCIpr7cyH2Ye/VzaxbR80MLU6yMnA4f704dSH60=";
      };

      klayout = {
        url = "https://github.com/efabless/sky130_klayout_pdk.git";
        fetchSubmodules = false;
        rev = "68b8aa87c129191f642da662d348e9ca6930581b";
        hash = "sha256-oTAIDS2QODXjvJM4eOmtogCnHfurW8GiKqyist+dd0o=";
      };

      precheck = {
        url = "https://github.com/efabless/mpw_precheck.git";
        fetchSubmodules = false;
        rev = "refs/tags/gfmpw-1d";
        hash = "sha256-qPN4ruExANz1rgnAMTuVSRVlOnovH9FZkPPenWYvw4Q=";
      };

      sram = {
        url = "https://github.com/efabless/sky130_sram_macros.git";
        fetchSubmodules = false;
        rev = "7b40220ebd47b8c17d58a94abaa57f111a08987a";
        hash = "sha256-eJFoMAD9z3M8dRMKFoW4tLu01fR19Pl1fFJ+V1lTfdQ=";
      };

      sram-space = {
        url =
          "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_fd_bd_sram";
        fetchSubmodules = false;
        rev = "refs/tags/v0.0.0";
        hash = "sha256-LCQxq0RvDr5TkL7HwxZt38k+4gE4ynSqsRlorlP94Wc=";
      };

      reram = {
        fetchSubmodules = false;
        url =
          "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_fd_pr_reram";
        rev = "refs/tags/v2.0.2";
        hash = "sha256-4k3hs6TdYfuqCAN8CqjLpsamOqWIG52Iyk1RCzYfpR8=";
      };

      osu-t12 = {

        fetchSubmodules = false;
        url =
          "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_osu_sc_t12";
        rev = "ac90ef0c622a9377a16b5218d9da3ac4169eeaaf";
        hash = "sha256-UNnGFWyQ6ulSiCEcpJdJQpsBqJv4cz/wIQVgsiApi2Y=";
      };

      osu-t15 = {
        fetchSubmodules = false;
        url =
          "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_osu_sc_t15";
        rev = "95d1c19abb47e1b2945847acb4e817b1b8417c43";
        hash = "sha256-cijsh9r/2LShYHa5TI3d7pM/6AwfYu73qLYOlPQ/5qQ=";
      };

      osu-t18 = {
        fetchSubmodules = false;
        url =
          "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_osu_sc_t18";
        rev = "aa2b509f3c8f32ea94fdb55ac9768754667c1658";
        hash = "sha256-epLVeefxJ61xsaddNvrL4Kxv8p8P5yo7jS7V/vHCzyI=";
      };

    };
  };
  #gf180mcu = [ "--enable-gf180mcu-pdk" "--enable-osu-sc-gf180mcu" ];
}
