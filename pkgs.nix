#pkgs.nix

{ config, lib, pkgs, ... }:

{

environment.systemPackages = with pkgs;

 [

	ncdu
	screen
	tmux
	flatpak
#	netbird
	btop
	gnome-console
	podman
	podman-compose
	screen
	tmux
	zellij
	dive
	distrobox

];
}
