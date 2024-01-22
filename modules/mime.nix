{ config, lib, pkgs, ... }:

{
 xdg.mime.enable = true; 
 xdg.mime.defaultApplications = {

    "inode/directory" = "thunar.desktop";
    "image/png"  = "org.kde.gwenview.desktop";
    "image/jpeg"  = "org.kde.gwenview.desktop";
    "x-scheme-handler/http" = "brave-browser.desktop";
    "x-scheme-handler/https" = "brave-browser.desktop";
    "text/html" = "brave-browser.desktop";
    "x-scheme-handler/chrome" = "brave-browser.desktop";
    "video/mp4" = "mpv.desktop";
    "video/mpeg" = "mpv.desktop";
    "text/plain" = "nvim.desktop";
    "application/pdf" = "okularApplication_pdf.desktop";

  };



}
