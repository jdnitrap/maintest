# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      	./hardware-configuration.nix
#      /etc/nixbook/base_lite.nix

########################################################################

##User###


#	./bob.nix
#	/.nimda.nix
#	<home-manager/nixos>




##Desktop Eviroments

#	./icewm.nix
	./gnome.nix
	./gnome-rm-apps.nix
#	./plasma.nix
#	./lxqt.nix
#	./icewm.nix
#	./cinnamon.nix

##System

#	./pkgs.nix
# 	./print.nix
#	./sound.nix
#	./opse.nix
#	./bluetooth.nix
	./flatpak.nix
	./plymouth.nix

##Networking    
    
#   	./syncthing.nix
#	./syncthing2.nix
#	./tailscale.nix    



##Security


#	./opensnitch2.nix


##Firefox

#	./firefox2.nix

###Experiment

#	./fwcommon.nix
#	./fwdefault.nix
#	./fwservice.nix
#	./fwsetting.nix
#	./fwzone.nix    
    
];

########################################################################


  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "lenovomini"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/New_York";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };



  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };


  

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
#  users.users.nimda = {
#    isNormalUser = true;
#    description = "nimda";
#    extraGroups = [ "networkmanager" "wheel" ];
#    packages = with pkgs; [
    
#    ];
#  };
  
  #users.users.bob = {
    #isNormalUser = true;
    #description = "bob";
    #extraGroups = [ "networkmanager" "wheel" "scanner" "lp"];
    #packages = with pkgs; [
    #  thunderbird
    #];
  #};

  
  



#users.users.eve.isNormalUser = true;
#home-manager.users.eve = { pkgs, ... }: {
#  home.packages = with pkgs; [ htop ];
#  programs.bash.enable = true;

  # The state version is required and should stay at the version you
  # originally installed.
#  home.stateVersion = "24.11";
#};  

  # Install firefox.
  programs.firefox.enable = false;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

 

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
    #enable = true;
    # enableSSHSupport = true;
   #};

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
   services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
   networking.firewall.enable = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?
  

#OPENSNITCH
  
  #services.opensnitch = {
  #enable = true;
  #};
    
    
    
    
#systemd = {
#  services = {
#    opensnitch = {
#      description = "Opensnitch Application Firewall Daemon";
#      wants = ["network.target"]; 
#      after = ["network.target"]; 
#     wantedBy = ["multi-user.target"];
#      path = [ pkgs.iptables ];
      
#      enable = true;
#    };
#  };
#};


  
 # services.avahi = {
 # enable = true;
 # nssmdns4 = true;
 # openFirewall = true;
#};

#services.printing.drivers = with pkgs; [ 

#	epson-workforce-635-nx625-series
#	epson-201106w
#	epson-201401w
#	foomatic-db-ppds
#	gutenprint
#	foomatic-db
#	cnijfilter_2_80
#	cnijfilter_4_00
#	epson_201207w
#	gutenprintBin
#	cups-printers
	
	
	
#	];
	
#hardware.sane.enable = true; # enables support for SANE scanners
#	services.ipp-usb.enable = true;
#	services.avahi.nssmdns = true;
  


	hardware.bluetooth.enable = true; # enables support for Bluetooth
	hardware.bluetooth.powerOnBoot = true; # powers up the default Bluetooth controller on boot
	services.blueman.enable = true;
  
 
#	services.devmon.enable = true;
#	services.gvfs.enable = true; 
#	services.udisks2.enable = true;
#	services.power-profiles-daemon.enable = true;
#	services.upower.enable = true;
#	services.fwupd.enable = true;
	hardware.sensor.iio.enable = true;




#	programs.nm-applet.enable = true;
#	systemd.network.enable = true;


 
#	services.netbird.enable = true;
#services.firewalld.enable = true;
#services.kasmweb.enable = true;

	hardware.acpilight.enable = true;
virtualisation.containers.enable = true;
  virtualisation.podman.enable = true;
     

}
