{ config, pkgs, ... }:

let 
  clang = pkgs.llvmPackages_12.libclang;
  llvm = pkgs.llvmPackages_12.llvm;
  python3 = pkgs.python39;
in  
{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = [
    # base
    pkgs.gcc
    pkgs.gdb
    pkgs.git
    pkgs.tree
    pkgs.unzip
    pkgs.vim
    pkgs.neovim
    pkgs.wget
    pkgs.cmake
    pkgs.htop
    pkgs.tmux
    pkgs.curl
    pkgs.pkg-config
    pkgs.gnumake
    pkgs.openssl
    pkgs.binutils
    pkgs.ninja
    pkgs.autojump

    python3
    llvm
    clang
	
    # misc
    pkgs.smartmontools
    pkgs.cpu-x
    pkgs.fd
    pkgs.ripgrep
    pkgs.tokei

    # desktop
    pkgs.libsForQt5.yakuake

    # dev 
    pkgs.jetbrains.clion
    pkgs.jetbrains.datagrip
    pkgs.jetbrains.idea-ultimate
    pkgs.dbeaver
    pkgs.slack

    # language tools
    pkgs.stack
    pkgs.rustup
    pkgs.scala
    pkgs.sbt
    pkgs.go
    pkgs.ruby
    pkgs.nodejs
    pkgs.jdk8
  ];

  # https://github.com/NixOS/nixpkgs/issues/52447
  environment.variables.LIBCLANG_PATH="${clang.lib}/lib";
}
