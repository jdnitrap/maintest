##virtualmachine.nix

{ config, lib, pkgs, ... }:

{
virtualisation.libvirtd = {
  enable = true;
  qemu = {
    package = pkgs.qemu_kvm;
    runAsRoot = true;
    swtpm.enable = true;
    ovmf = {
      enable = true;
      packages = [(pkgs.OVMF.override {
        secureBoot = true;
        tpmSupport = true;
      }).fd];
    };
  };
};

  # if you use libvirtd on a desktop environment
  programs.virt-manager.enable = true; # can be used to manage non-local hosts as well

}
