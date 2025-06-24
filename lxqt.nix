#lxqt.nix

{config, pkgs, lib, ... }:

{

# Enable the X11 windowing system.
  services.xserver.enable = true;

# Enable the Plasma Desktop Environment.
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.desktopManager.lxqt.enable = true;





}
