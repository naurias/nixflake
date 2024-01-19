{config, pkgs, ... }:

{
 
 home.username = "naurias";
 home.homeDirectory = "/home/naurias";
 
 home.packages = with pkgs; [
#  htop
 ];

  home.file = {
   ".config/test1/test.txt" = {
     source = ./example.txt;
   };

   ".config/waybar" = {
     source = ./assets/waybar;
     recursive = true;
   };

   ".config/alacritty/alacritty.toml" = {
     source = ./assets/alacritty/alacritty.toml;
   };

   ".config/hypr/hyprland.conf" = {
     source = ./assets/hypr/hyprland.conf;
   };

   ".config/lf" = {
     source = ./assets/lf;
     recursive = true;
   };


   ".local/share/fonts" = {
     source = ./assets/fonts;
     recursive = true;
   };

   
  };


# Icons and Cursors
#  gtk = {
#   enable = true;
#   theme = {
#    package = pkgs.orchis-theme;
#    name = "orchis-theme";
#   };
#  };

 home.stateVersion = "23.11";
 programs.home-manager.enable = true;
}
