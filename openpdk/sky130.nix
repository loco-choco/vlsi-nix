{ fetchFromGitHub, fetchgit, ... }:
{
  primitive = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_pr";
    rev = "refs/heads/main";
    hash = "sha256-UJCiXaxJQMSXFsnqq0HLzkc5YOidozpsuzW8XoY2lVs=";
    leaveDotGit = true;
  };
  io = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_io";
    rev = "refs/heads/master";
    hash = "sha256-9g5jkGT0hdfqGePZMV131rCAU/gVr8Czrhr/NUdiAV4=";
    leaveDotGit = true;
  };
  sc-hd = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_sc_hd";
    rev = "refs/heads/master";
    hash = "sha256-WWJFgCaHHmx/hsZ7n40PxBrMswswOtiBXQwkV9UZkT0=";
    leaveDotGit = true;
  };
  sc-hdll = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_sc_hdll";
    rev = "refs/heads/master";
    hash = "sha256-qW4iDNF5PiIldSrkLZZk9nZwq80d1i95D91kJylgWEY=";
    leaveDotGit = true;
  };
  sc-ms = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_sc_ms";
    rev = "refs/heads/master";
    hash = "sha256-V8D/Z8s/oOzWK6bUpqAtXlP+KJwtiMc5U03Z444Ntac=";
    leaveDotGit = true;
  };
  sc-ls = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_sc_ls";
    rev = "refs/heads/master";
    hash = "sha256-0fIZpBOH4MxDQcsdjpawsFGwp9gEEYsSD1F/917m10U=";
    leaveDotGit = true;
  };
  sc-hvl = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_sc_hvl";
    rev = "refs/heads/master";
    hash = "sha256-6YmJYMIJ/0ULHE7DPjh9EUE+7BfuaJ3O9oLrLVFa3nU=";
    leaveDotGit = true;
  };
  sc-lp = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_sc_lp";
    rev = "refs/heads/master";
    hash = "sha256-Ebfwf8FjZy2wiJBltk35ZReCOkefjCb65NPDm0HyqVU=";
    leaveDotGit = true;
  };
  sc-hs = fetchFromGitHub {
    owner = "efabless";
    repo = "skywater-pdk-libs-sky130_fd_sc_hs";
    rev = "refs/heads/master";
    hash = "sha256-z2tmg1CecGfNoNUL3YCGjEYkBMYLW8dRy5XFWXq97XM=";
    leaveDotGit = true;
  };

  alpha = fetchFromGitHub {
    owner = "PaulSchulz";
    repo = "sky130_pschulz_xx_hd";
    rev = "refs/heads/master";
    hash = "sha256-F7rNmKO50hdbDuFvd/8kspZVT0V1ryqqBiLek13ioVY=";
    leaveDotGit = true;
  };

  xschem = fetchFromGitHub {
    owner = "StefanSchippers";
    repo = "xschem_sky130";
    rev = "refs/heads/main";
    hash = "sha256-077qQRGNyc7DsPqKwPGUxPMWlva+ipCbhZ1wirasnTk=";
    leaveDotGit = true;
  };

  klayout = fetchFromGitHub {
    owner = "efabless";
    repo = "sky130_klayout_pdk";
    rev = "refs/heads/main";
    hash = "sha256-x+NgPVZ+01WH7PQr9+r/0R1xzjAzZpEzcL6UO5pFnxg=";
    leaveDotGit = true;
  };

  precheck = fetchFromGitHub {
    owner = "efabless";
    repo = "mpw_precheck";
    rev = "refs/heads/main";
    hash = "sha256-HslEzw9TPJlKEg66aSDv6780hdnaTq5JB0678RxZKIM=";
    leaveDotGit = true;
  };

  sram = fetchFromGitHub {
    owner = "efabless";
    repo = "sky130_sram_macros";
    rev = "refs/heads/main";
    hash = "sha256-mBImCXvd3nZvvl0pD5pH7VHvM8/C934Q9TW4GDsFLQQ=";
    leaveDotGit = true;
  };

  sram-space = fetchgit {
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_fd_bd_sram";
    fetchSubmodules = false;
    rev = "refs/heads/main";
    hash = "sha256-sJ9tEHUGZz8bcBJragSjCg2tQFjCPjLjlUAhfVIG42E=";
    leaveDotGit = true;
  };

  reram = fetchgit {
    fetchSubmodules = false;
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_fd_pr_reram";
    rev = "refs/heads/main";
    hash = "sha256-+HMb+mDsbyDvxQu33HSfLCpRUsYtqU14VCpQsoyFxQk=";
    leaveDotGit = true;
  };

  osu-t12 = fetchgit {
    fetchSubmodules = false;
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_osu_sc_t12";
    rev = "refs/heads/main";
    hash = "sha256-RUizbSYI4zIkGhEgrpurWWIBeqaBBEloFgz61usFbow=";
    leaveDotGit = true;
  };

  osu-t15 = fetchgit {
    fetchSubmodules = false;
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_osu_sc_t15";
    rev = "refs/heads/main";
    hash = "sha256-oa4k8uq1Jr2YvR+5WfjZcnp45lukrbFx1iv4Qs4amMY=";
    leaveDotGit = true;
  };

  osu-t18 = fetchgit {
    fetchSubmodules = false;
    url = "https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_osu_sc_t18";
    rev = "refs/heads/main";
    hash = "sha256-fRAUtMUMWo1LWGPqQa5EjqjRzX7QnsZBrhCXj1xcbCw=";
    leaveDotGit = true;
  };
}
