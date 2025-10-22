#user-nimda.nix

{config, pkgs, lib, ...}:

{

users.users.nimda = {
    isNormalUser = true;
    description = "nimda";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    
    ];
  };
  
  }
