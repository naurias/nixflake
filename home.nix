{config, pkgs, ... }:


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
 
   ".zshrc" = {
     source = ./assets/.zshrc;
   };

   ".config/dunst" = {
      source = ./assets/dunst;
      recursive = true; 
   };
    
    ".config/kitty" = {
        source = ./assets/kitty;
        recursive = true;
      };
    ".config/fzftab" = {
      source = ./assets/fzftab;
      recursive = true;
    };
   
   ".config/ohmyposh" = {
     source = ./assets/ohmyposh;
     recursive = true;
   };

   ".local/share/fonts" = {
     source = ./assets/fonts;
     recursive = true;
   };
   
  };


 #home.file.".config/hypr/hyprpaper.conf".source = ./assets/hypr/hyprpaper.conf;

 # Theming

 	#GTK rh

	gtk.enable = true;

	gtk.cursorTheme.package = pkgs.bibata-cursors;
	gtk.cursorTheme.name = "Bibata-Modern-Ice";
	gtk.cursorTheme.size = 20;

	gtk.theme = {
         name = "Orchis-Dark";
	 package = pkgs.orchis-theme;
	 
	};

	gtk.iconTheme.package = pkgs.papirus-icon-theme;
	gtk.iconTheme.name = "Papirus-Dark";
	


	#QT
	qt.enable = true;
	qt.platformTheme.name = "qtct";
	qt.style.name = "kvantum";

	# Kvantum

	 xdg.configFile = {
    "Kvantum/kvantum.kvconfig".text = ''
      [General]
      theme=Orchis-dark-solid
    '';

     "Kvantum/Orchis-dark-solid" = {
	source = ./assets/Kvantum/Orchis-dark-solid;
	recursive = true;
     };

  };


# OH-MY-POSH for zsh
 programs.oh-my-posh = {
  enable = true;
  enableZshIntegration = true;
  package = pkgs.oh-my-posh;
 # useTheme = "bubbles";

 };



 home.stateVersion = "24.05";
 programs.home-manager.enable = true;
}
