{ fetchFromGitHub, ... }:
{
  pr = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "globalfoundries-pdk-libs-gf180mcu_fd_pr";
    rev = "faef89e8c1b392733c32820a7b12e3a3847cc18c";
    hash = "";
    leaveDotGit = true;
    name = "pr";
  };
  #pv = fetchFromGitHub {
  #  owner = "fossi-foundation";
  #  repo = "globalfoundries-pdk-libs-gf180mcu_fd_pv";
  #  rev = "10ee7fc75437edafa56f29f2b1872e95c9f22b71";
  #  hash = "";
  #  leaveDotGit = true;
  #  name = "pv";
  #};
  #io = fetchFromGitHub {
  #  owner = "fossi-foundation";
  #  repo = "globalfoundries-pdk-libs-gf180mcu_fd_io";
  #  rev = "f84fe10e67a5cb9002e9ae8210f58e570726c366";
  #  hash = "";
  #  leaveDotGit = true;
  #  name = "io";
  #};
  #sc-mcu7t5v0 = fetchFromGitHub {
  #  owner = "fossi-foundation";
  #  repo = "globalfoundries-pdk-libs-gf180mcu_fd_sc_mcu7t5v0";
  #  rev = "8743b6f9641eb8707179c4e51703380d4dc90f16";
  #  hash = "";
  #  leaveDotGit = true;
  #  name = "sc-mcu7t5v0";
  #};
  #sc-mcu9t5v0 = fetchFromGitHub {
  #  owner = "fossi-foundation";
  #  repo = "globalfoundries-pdk-libs-gf180mcu_fd_sc_mcu9t5v0";
  #  rev = "376ea56fa36ce7702595ce4e0e3c9357ee38c81c";
  #  hash = "";
  #  leaveDotGit = true;
  #  name = "sc-mcu9t5v0";
  #};
  #sram = fetchFromGitHub {
  #  owner = "google";
  #  repo = "globalfoundries-pdk-ip-gf180mcu_fd_ip_sram";
  #  rev = "9c411928870ce15226228fa52ddb6ecc0ea4ffbe";
  #  hash = "";
  #  leaveDotGit = true;
  #  name = "sram";
  #};
  #osu-sc = fetchFromGitHub {
  #  owner = "stineje";
  #  repo = "globalfoundries-pdk-libs-gf180mcu_osu_sc";
  #  rev = "a3ec85995e818653e5ea6ccd6145007f0bebcf31";
  #  hash = "";
  #  leaveDotGit = true;
  #  name = "osu-sc";
  #};
}
