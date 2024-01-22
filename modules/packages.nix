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
     kitty
      ueberzugpp
     #wezterm
     xdg-utls
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
