{ config, lib, pkgs, ... }:

{

# Enable libvirt and kvm and virt-manager
virtualisation.libvirtd.enable = true;
programs.virt-manager.enable = true;

# docker
virtualisation.docker.enable = true;

#   virtualisation.virtualbox.host.enable = true;
#   users.extraGroups.vboxusers.members = [ "naurias" ];


}
