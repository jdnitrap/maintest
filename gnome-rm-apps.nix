#gnome-rm-apps.nix

{config, pkgs, lib, ... }:

{

environment.gnome.excludePackages = (with pkgs; [
  
  #epiphany # web browser
  geary
  simple-scan
  gnome-calculator
  gnome-maps
  gnome-contacts
  gnome-calendar
  gnome-music
  gnome-weather
  gnome-clocks
  gnome-tour
  totem
  gnome-initial-setup
  gnome-photos
  gnome-shell-extensions
  gnome-extension-manager
  
  
  
  
]);

services.gnome.core-utilities.enable = true;
services.xserver.excludePackages = with  pkgs; [ xterm ];
documentation.nixos.enable = false;

}

