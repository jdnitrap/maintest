#user_game.nix

{config, pkgs, lib, ...}:

{

users.users.game = {
    isNormalUser = true;
    description = "game";
    extraGroups = [ "networkmanager" "wheel" "scanner" "lp" "podman" "input" "video"];
    initialPassword = "g";
    packages = with pkgs; [
     
    ];
  };
  
  }
