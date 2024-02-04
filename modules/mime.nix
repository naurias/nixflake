{ config, lib, pkgs, ... }:

{
 xdg.mime.enable = true; 
 xdg.mime.defaultApplications = {

    "inode/directory" = "ranger.desktop";
    "image/png"  = "org.kde.gwenview.desktop";
    "image/jpeg"  = "org.kde.gwenview.desktop";
    "x-scheme-handler/http" = "firefox.desktop";
    "x-scheme-handler/https" = "firefox.desktop";
    "text/html" = "firefox.desktop";
    "x-scheme-handler/chrome" = "firefox.desktop";
    "video/mp4" = "mpv.desktop";
    "video/mpeg" = "mpv.desktop";
    "text/plain" = "nvim.desktop";
    "application/pdf" = "okularApplication_pdf.desktop";

  };



}
