{ config, lib, pkgs, ... }:

{
 xdg.mime.enable = true; 
 xdg.mime.default.Applications = {

    "inode/directory" = "thunar.desktop";
    "image/png"  = "gwenview.desktop";
    "image/jpeg"  = "gwenview.desktop";
    "x-scheme-handler/http" = "brave-browser.desktop";
    "x-scheme-handler/https" = "brave-browser.desktop";
    "text/html" = "brave-browser.desktop";
    "x-scheme-handler/chrome" = "brave-browser.desktop";
    "video/mp4" = "mpv.desktop";
    "video/mpeg" = "mpv.desktop";
    "text/plain" = "nvim.desktop";
    "application/pdf" = "okular.desktop";

  };



}
