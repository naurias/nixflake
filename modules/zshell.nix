{ config, lib, pkgs, ... }:

{

#programs.zsh.enable = true;

programs.zsh = {
  enable = true;
  autosuggestions.enable = true;
  enableCompletition = true;
#  ohMyZsh.enable = true;
#  ohMyZsh.plugins = [ "git" ];
#  ohMyZsh.theme = "frisk";
  syntaxHighlighting.enable = true;
};

users.users.nix.shell = pkgs.zsh;


}
