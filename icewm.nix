#icewm.nix

{config, input, lib, pkgs, ... }:

{

# Enable the X11 windowing system.
  services.xserver.enable = true;

# Enable the Plasma Desktop Environment.
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.windowManager.icewm.enable = true;

}
