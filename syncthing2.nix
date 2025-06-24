#syncthing2.nix

{config, lib, pkgs, ... }:

{

services.syncthing = {
  enable = true;
  openDefaultPorts = true; # Open ports in the firewall for Syncthing
};

services.syncthing.systemService = true;

}
