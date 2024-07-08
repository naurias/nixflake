{config, pkgs, ... }:

let
  variant = "Macchiato";
  accent = "Blue";
  kvantumThemePackage = pkgs.catppuccin-kvantum.override {
    inherit variant accent;
  };
in


{
 
 home.username = "nix";
 home.homeDirectory = "/home/nix";
 


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

 # Theming

 	#GTK
	gtk.enable = true;

	gtk.cursorTheme.package = pkgs.bibata-cursors;
	gtk.cursorTheme.name = "Bibata-Modern-Ice";
	gtk.cursorTheme.size = 24;

	gtk.theme = {
         name = "Catppuccin-Macchiato-Standard-Blue-Dark";
	  package = pkgs.catppuccin-gtk.override {
          accents = [ "blue" ];
          size = "standard";
          variant = "macchiato";
         };
	};

	gtk.iconTheme.package = pkgs.papirus-icon-theme;
	gtk.iconTheme.name = "Papirus-Dark";
	


	#QT
	qt.enable = true;
	qt.platformTheme.name = "qtct";
	qt.style.name = "kvantum";

	 xdg.configFile = {
    "Kvantum/kvantum.kvconfig".text = ''
      [General]
      theme=Catppuccin-${variant}-${accent}
    '';

    # The important bit is here, links the theme directory from the package to a directory under `~/.config`
    # where Kvantum should find it.
    "Kvantum/Catppuccin-${variant}-${accent}".source = "${kvantumThemePackage}/share/Kvantum/Catppuccin-${variant}-${accent}";
  };


# ZSH

 progams.zsh = {
  enable = true;
  enableCompletion = true;
  autosuggestion = {
   enable = true; 
  };
  syntaxHighlighting = {
   enable = true;
  };

 };


 home.stateVersion = "24.05";
 programs.home-manager.enable = true;
}
