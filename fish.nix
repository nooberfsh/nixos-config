{ config, pkgs, ... }:

{
  # https://nixos.wiki/wiki/Command_Shell
  programs.fish.enable = true;
  users.defaultUserShell = pkgs.fish;
}
