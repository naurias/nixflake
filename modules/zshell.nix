{ config, lib, pkgs, ... }:

{

programs.zsh.enable = true;
users.users.naurias.shell = pkgs.zsh;


}
