{ config, pkgs, ... }:

{
  users.users.tom = {
    isNormalUser = true;
    home = "/home/tom";
    description = "tom is a sexy boy!";
    extraGroups = ["wheel" "networkmanager"];
  };
}
