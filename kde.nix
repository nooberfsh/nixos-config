{ config, pkgs, ... }:

{

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  # services.xserver.displayManager.gdm.enable = true;
  # services.xserver.desktopManager.gnome.enable = true;

  # kde
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.desktopManager.plasma5.enable = true;

  # 互换左Control和Caps键
  # https://unix.stackexchange.com/questions/377600/in-nixos-how-to-remap-caps-lock-to-control
  services.xserver.xkbOptions = "ctrl:swapcaps";
}

