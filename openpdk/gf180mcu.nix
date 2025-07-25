{ fetchFromGitHub, ... }:
{
  primitive = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "globalfoundries-pdk-libs-gf180mcu_fd_pr";
    rev = "faef89e8c1b392733c32820a7b12e3a3847cc18c";
    hash = "sha256-3D9XBDEaaRSCooL/5G1GvsJ5ol9Tp013QsWLP3C72mE=";
    leaveDotGit = true;
    name = "primitive";
  };
  verification = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "globalfoundries-pdk-libs-gf180mcu_fd_pv";
    rev = "10ee7fc75437edafa56f29f2b1872e95c9f22b71";
    hash = "sha256-MRnwhGlGn1tmKY0QO88Az/0NJ2BhSZSsOBs82Vb+86Y=";
    leaveDotGit = true;
    name = "verification";
  };
  io = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "globalfoundries-pdk-libs-gf180mcu_fd_io";
    rev = "f84fe10e67a5cb9002e9ae8210f58e570726c366";
    hash = "sha256-qB+32JlyQAogmLSXJMP+l5p8SZYYTNyerLeRd/bfWLQ=";
    leaveDotGit = true;
    name = "io";
  };
  sc-7t5v0 = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "globalfoundries-pdk-libs-gf180mcu_fd_sc_mcu7t5v0";
    rev = "8743b6f9641eb8707179c4e51703380d4dc90f16";
    hash = "sha256-b5EXMEFa3JRZQIASotHYKJID7Gzg61yeUBZBFT/ULZA=";
    leaveDotGit = true;
    name = "sc-7t5v0";
  };
  sc-9t5v0 = fetchFromGitHub {
    owner = "fossi-foundation";
    repo = "globalfoundries-pdk-libs-gf180mcu_fd_sc_mcu9t5v0";
    rev = "376ea56fa36ce7702595ce4e0e3c9357ee38c81c";
    hash = "sha256-Q+CvnPPNRK6+9TadfYECPnElkpbHDyJ2YDMzR0gCQ8o=";
    leaveDotGit = true;
    name = "sc-9t5v0";
  };
  sram = fetchFromGitHub {
    owner = "google";
    repo = "globalfoundries-pdk-ip-gf180mcu_fd_ip_sram";
    rev = "9c411928870ce15226228fa52ddb6ecc0ea4ffbe";
    hash = "sha256-QIK2cXCd2giEF3qu+qOg+BuYG4KtgUhG5pUEpJTajf4=";
    leaveDotGit = true;
    name = "sram";
  };
  osu-sc = fetchFromGitHub {
    owner = "stineje";
    repo = "globalfoundries-pdk-libs-gf180mcu_osu_sc";
    rev = "a3ec85995e818653e5ea6ccd6145007f0bebcf31";
    hash = "sha256-1UNhzeJp8sy5OWHliywlaNWlQAFRzRDRRGueTWPtccM=";
    leaveDotGit = true;
    name = "osu-sc";
  };
}
