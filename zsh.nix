{ config, pkgs, ... }:

{
  # https://nixos.wiki/wiki/Command_Shell
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;


  # https://nixos.org/manual/nixos/stable/index.html#module-programs-zsh-ohmyzsh
  programs.zsh.ohMyZsh = {
    enable = true;
    plugins = [ "git" "python" "man" "autojump"];
    theme = "agnoster";
  };
}
