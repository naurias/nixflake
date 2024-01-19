{ config, lib, pkgs, ... }:

{


   environment.systemPackages = with pkgs; [
# Editors     
     neovim 
# Browsers
     firefox
     brave
# Command Utilites     
     git
     lazygit
     ripgrep
     fd
     wget
     pulseaudio
     steam-run
     p7zip
# Dev
     gcc
     #xdg-desktop-portal-gtk
     qt6Packages.qt6ct
# Themes
     vimix-icon-theme
     vimix-cursors
     lxappearance
     nerdfonts
# Terminals     
     alacritty
     #kitty
# GUI Utilites
     rofi-wayland
     waybar
     dunst
     keepassxc
     obsidian
#     nwg-look
# Torrents 
     qbittorrent
# File Managers
     lf
# Media
     mpv
     streamlink
   ];

  programs.thunar.enable = true;
  programs.thunar.plugins = with pkgs.xfce; [
   thunar-archive-plugin
   thunar-volman
];


}
