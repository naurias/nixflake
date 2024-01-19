{ config, lib, pkgs, self, ... }: {
  # Enable nix ld
  programs.nix-ld.enable = true;
  #programs.nix-ld.package = self.inputs.nix-ld-rs.packages.${pkgs.hostPlatform.system}.nix-ld-rs;

}
