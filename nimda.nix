#bob.nix

{config, pkgs, lib, ...}:

{

users.users.nimda = {
    isNormalUser = true;
    description = "nimda";
    extraGroups = [ "networkmanager" "wheel" "scanner" "lp" "podman" "input" "video"];
     initialPassword = "n";
	packages = with pkgs; [
     
    ];
  };
  
  }
