{config, pkgs, ... }:

{
 
 home.username = "naurias";
 home.homeDirectory = "/home/naurias";
 


 home.packages = with pkgs; [
#  htop
  (unstablePkgs.catpuccin-kvantum.override {
   accent = "Blue";
   variant = "Macchiato"
  } 
  )


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
#    ".config/hypr/hyprpaper.conf" = {
#        source = ./assets/hy	pr/hyprpaper.conf;
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
#   gtk.enable = true;

#   gtk.cursorTheme.package = pkgs.vimix-cursors;
#   gtk.cursorTheme.name = "Vimix-cursors";
   
#   gtk.theme.package = pkgs.adw-gtk3;
#   gtk.theme.name = "adw-gtk3-dark";

#   gtk.iconTheme.package = pkgs.papirus-icon-theme;
#   gtk.iconTheme.name = "Papirus";
 #QT Theming
  qt = {
   enable = true;
   platformTheme = "qt5ct";
   style = {
    name = "kvantum";
    package = pkgs.catpuccin-kvantum;
   };
  };

  xdg.configFile = {
        "Kvantum/Catppuccin-Macchiato-Blue/Catppuccin-Macchiato-Blue/Catppuccin-Macchiato-Blue.kvconfig".source = "${unstablePkgs.catppuccin-kvantum}/share/Kvantum/Catppuccin-Macchiato-Blue/Cattpuccin-Macchiato-Blue.kvconfig";
        "Kvantum/Catppuccin-Macchiato-Blue/Catppuccin-Macchiato-Blue/Catppuccin-Macchiato-Blue.svg".source = "${unstablePkgs.catppuccin-kvantum}/share/Kvantum/Catppuccin-Macchiato-Blue/Cattpuccin-Macchiato-Blue.svg";
  };
  

  #GTK THemeing

   gtk = {
    enable = true;
    theme = {
     name = "Tokyonight-Dark-BL";
     package = pkgs.tokyo-night-gtk;
    };
   };

   home.pointerCursor = {
    gtk.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 24;
   };

 home.stateVersion = "23.11";
 programs.home-manager.enable = true;
}
