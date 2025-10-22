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
	gnome-console
	podman
	podman-compose
	zellij
	dive
	distrobox
	git
	gh
	pciutils
	geany
	acpi
	lynx
	elinks
	fastfetch
	nnn
	btop
	htop
	calcurse
#	pcmanfm
#	libnotify
	hledger
	gnome-software
	onlyoffice-desktopeditors
	protonvpn-gui
	mediawriter
	filezilla
	axel
	wget
	nautilus
	
	linuxKernel.packages.linux_zen.xone
	linuxKernel.packages.linux_zen.xpadneo
	linuxKernel.packages.linux_xanmod_stable.xpadneo

];
}
