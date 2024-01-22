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
    
   ".config/hypr" = {
      source = ./assets/hypr;
      recursive = true;
    };

   ".config/alacritty/alacritty.toml" = {
     source = ./assets/alacritty/alacritty.toml;
   };


#   ".config/lf" = {
#     source = ./assets/lf;
#     recursive = true;
#   };
#    ".config/hypr/hyprpaper.conf" = {
#        source = ./assets/hypr/hyprpaper.conf;
    #  };
   # ".config/hypr/wallpapers" = {
  #      source = ./assets/hypr/wallpapers;
 #       recursive = true;
#      };

   ".local/share/fonts" = {
     source = ./assets/fonts;
     recursive = true;
   };
   
  };


 #home.file.".config/hypr/hyprpaper.conf".source = ./assets/hypr/hyprpaper.conf;

# Theming
 # GTK 
   gtk.enable = true;

   gtk.cursorTheme.package = pkgs.vimix-cursors;
   gtk.cursorTheme.name = "Vimix-cursors";
   
   gtk.theme.package = pkgs.adw-gtk3;
   gtk.theme.name = "adw-gtk3-dark";

   gtk.iconTheme.package = pkgs.papirus-icon-theme;
   gtk.iconTheme.name = "Papirus";
 #QT Theming
   qt.enable  = true; 
   qt.platformTheme = "gtk";
   qt.style.name = "adwaita-dark";
# Packages to use for theme 
   qt.style.package = pkgs.adwaita-qt6;

 home.stateVersion = "23.11";
 programs.home-manager.enable = true;
}
