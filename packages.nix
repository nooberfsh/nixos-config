{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # base
    gcc
    gdb
    git
    tree
    unzip
    vim
    neovim
    wget
    cmake
    htop
    tmux
    python39
    curl
    pkg-config
    gnumake
    openssl
    binutils
    ninja
    autojump
    clang
    libclang
	
    # misc
    smartmontools
    cpu-x

    # desktop
    libsForQt5.yakuake

    # dev 
    jetbrains.clion
    jetbrains.datagrip
    jetbrains.idea-ultimate
    dbeaver
    slack

    # language tools
    stack
    rustup
    scala
    sbt
    go
    ruby
    nodejs
    jdk8
  ];
}
