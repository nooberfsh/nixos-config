{ config, pkgs, ... }:

{
  networking.hostName = "noob3";

  imports = [
    ../users.nix
    ../kde.nix
    ../fcitx.nix
    ../locale.nix
    ../fonts.nix
    ../packages.nix
    #../zsh.nix
    ../fish.nix
  ];
}
