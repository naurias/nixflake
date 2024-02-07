{ config, lib, pkgs, ... }:

{


   environment.systemPackages = with pkgs; [
# Editors     
     neovim 
     emacs29-pgtk
      libvterm
      emacsPackages.vterm
# Browsers
#     brave
     firefox
#     librewolf
     qutebrowser
      python311Packages.adblock
# Command Utilites 
     brightnessctl
     git
     htop
     #swaybg
     lazygit
     ripgrep
     fd
     wget
     pulseaudio
     steam-run
     p7zip
     unzip
     grim
     flameshot
     slurp
# Dev
     python3Full
     bluez
     cmake
     parallel
     blueman
     networkmanagerapplet
     openssl
     python311Packages.virtualenv
     nodejs_21
     gcc
     xdg-utils
     #xdg-desktop-portal-gtk
     qt6Packages.qt6ct
# Themes
     hyprpaper
     adw-gtk3
     #qt6Packages.qtstyleplugin-kvantum
     #themechanger
     #vimix-icon-theme
    # vimix-cursors
    # lxappearance
     fira-code-nerdfont
     meslo-lgs-nf
    # nerdfonts
# Terminals     
     #alacritty
     kitty
      ueberzugpp
      ffmpegthumbnailer
     #wezterm
# GUI Utilites
     rofi-wayland
     waybar
     pavucontrol
     pamixer
     dunst
     keepassxc
     thunderbird
     imagemagick
     gwenview
     okular
#     obsidian
#     nwg-look
# Torrents 
     qbittorrent
# Desgin
     inkscape
# File Managers
     lf
     ranger
     #krusader
# Media # Games
     mpv
     streamlink
     wineWowPackages.stagingFull
     winetricks
#     streamlink-twitch-gui-bin

# Security
     cryptomator
     megasync
     bitwarden

# Personal
     #discord
     buku
     bukubrow
   ];

  programs.thunar.enable = true;
  programs.thunar.plugins = with pkgs.xfce; [
   thunar-archive-plugin
   thunar-volman
];


}
