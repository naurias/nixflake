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
# settings for waybar

   ".config/waybar" = {
     source = ./assets/waybar;
     recursive = true;
   };
    
   ".config/hypr" = {
      source = ./assets/hypr;
      recursive = true;
    };

   ".config/alacritty/alacritty.toml" = {
     source = ./assets/alacritty/alacritty.toml;
   };
   ".config/dunst" = {
      source = ./assets/dunst;
      recursive = true; 
   };
    
    ".config/kitty" = {
        source = ./assets/kitty;
        recursive = true;
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


 #home.file.".config/hypr/hyprpaper.conf".source = ./assets/hypr/hyprpaper.conf;


 home.stateVersion = "23.11";
 programs.home-manager.enable = true;
}
