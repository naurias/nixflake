{
  description = "Personal System Configurations with Home Manager";
  
  inputs = {
   nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
   home-manager = {
    url = "github:nix-community/home-manager";
    inputs.nixpkgs.follows = "nixpkgs";
   };

  };

  outputs = { self, nixpkgs, home-manager, ... }: 
   let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
     inherit system;
     config.allowUnfree = true;
    };
    lib = nixpkgs.lib;
   in {
    nixosConfigurations = {
     nixreaper = lib.nixosSystem {
      inherit system;
      modules = [ 
       ./configuration.nix
       home-manager.nixosModules.home-manager {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
	home-manager.users.naurias = {
         imports = [
          ./home.nix
	 ];
	};
        # home-manager.users.naurias = import ./home.nix;
        # Optionally, use home-manager.extraSpecialArgs to pass
        # arguments to home.nix
       }
      ];
     };
    };
   };

  
}
