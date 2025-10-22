#bob.nix

{config, pkgs, lib, ...}:

{

	users.users.bob = {
	isNormalUser = true;
	description = "bob";
	extraGroups = [ "networkmanager" "wheel" "scanner" "lp" "podman" "input" "video"];
	initialPassword = "b";
	packages = with pkgs; [
     
    ];
  };
  
  }
