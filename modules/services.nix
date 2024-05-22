{ config, lib, pkgs, ... }:

{

 services.udisks2.enable = true;
 services.flatpak.enable = true;
}
