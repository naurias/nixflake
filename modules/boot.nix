{ config, lib, pkgs, ... }:

{

# USE GRUB AS BOOT LOADER


   boot.loader = {
    efi = {
     canTouchEfiVariables = true;
     efiSysMountPoint = "/boot";
    };
    grub = {
     enable = true;
     efiSupport = true;
     device = "nodev";
     useOSProber = true;
    };
   };

# FileSystem support

   boot.supportedFilesystems = [ "ntfs" "btrfs"  ];

}
