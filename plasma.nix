#plasma.nix

{config, pkgs, ...}:

{

# Enable the X11 windowing system.
  services.xserver.enable = true;

# Enable the Plasma Desktop Environment.
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.desktopManager.plasma6.enable = true;
}
