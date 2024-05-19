{ config, lib, pkgs, ... }:

{
 xdg.mime.enable = true; 
 xdg.mime.defaultApplications = {

    "inode/directory" = "yazi.desktop";
    "image/png"  = "org.kde.gwenview.desktop";
    "image/jpeg"  = "org.kde.gwenview.desktop";
    "x-scheme-handler/http" = "brave.desktop";
    "x-scheme-handler/https" = "brave.desktop";
    "text/html" = "firefox.desktop";
    "x-scheme-handler/chrome" = "brave.desktop";
    "video/mp4" = "mpv.desktop";
    "video/mpeg" = "mpv.desktop";
    "text/plain" = "nvim.desktop";
    "application/pdf" = "okularApplication_pdf.desktop";

  };



}
