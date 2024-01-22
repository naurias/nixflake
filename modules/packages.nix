{ config, lib, pkgs, ... }:

{


   environment.systemPackages = with pkgs; [
# Editors     
     neovim 
# Browsers
     brave
# Command Utilites     
     git
     #swaybg
     lazygit
     ripgrep
     fd
     wget
     pulseaudio
     steam-run
     p7zip
     grim
     flameshot
     slurp
# Dev
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
    # nerdfonts
# Terminals     
     #alacritty
     kitty
      ueberzugpp
     #wezterm
# GUI Utilites
     rofi-wayland
     waybar
     pavucontrol
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
# File Managers
     lf
     ranger
     #krusader
# Media
     mpv
     streamlink

# Security
     cryptomator
     megasync

# Personal
     discord
     buku
     bukubrow
   ];

  programs.thunar.enable = true;
  programs.thunar.plugins = with pkgs.xfce; [
   thunar-archive-plugin
   thunar-volman
];


}
