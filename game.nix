#bob.nix

{config, pkgs, lib, ...}:

{

users.users.game = {
    isNormalUser = true;
    description = "bob";
    extraGroups = [ "networkmanager" "wheel" "scanner" "lp" "podman" "input" "video"];
    packages = with pkgs; [
     
    ];
  };
  
  }
