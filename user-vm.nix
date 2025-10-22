#user-vm.nix

{config, pkgs, lib, ...}:

{

users.users.vm = {
    isNormalUser = true;
    description = "vm";
    extraGroups = [ "networkmanager" "wheel" "scanner" "lp" "podman" "input" "video" "libvirtd"];
    packages = with pkgs; [
     
    ];
  };
  
  }
