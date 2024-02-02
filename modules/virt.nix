{ config, lib, pkgs, ... }:

{

# Enable libvirt and kvm and virt-manager
virtualisation.libvirtd.enable = true;
programs.virt-manager.enable = true;

# docker
#virtualisation.docker.enable = true;

# Podman
#  virtualisation = {
#    podman = {
#      enable = true;

      # Create a `docker` alias for podman, to use it as a drop-in replacement
#      dockerCompat = true;

      # Required for containers under podman-compose to be able to talk to each other.
#      defaultNetwork.settings.dns_enabled = true;
#    };
#  };
#   virtualisation.virtualbox.host.enable = true;
#   users.extraGroups.vboxusers.members = [ "naurias" ];


}
