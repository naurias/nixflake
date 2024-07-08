{ config, lib, pkgs, ... }:

{

#programs.zsh.enable = true;
users.users.nix.shell = pkgs.zsh;


}
