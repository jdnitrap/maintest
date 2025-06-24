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
	git
	gh
	pciutils
	geany
	acpi
	lnyx
	elinks
	fastfetch
	nnn
	btop
	htop
	calcurse
	pcmanfm
	libnotify
	hledger

];
}
