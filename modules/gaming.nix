{ config, lib, pkgs, ... }:

{


 hardware.opengl = {
   enable =true;
   driSupport = true;
   driSupport32Bit = true;
 };


 programs.steam.enable = true;
 programs.steam.gamescopeSession.enable = true;
 programs.gamemode.enable = true;

 environment.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOLS_PATHS = "/home/naurias/.steam/root/compatibilitytools.d";
  };

}
