{
  description = "HLS NixOS flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
  };

  outputs = { self, nixpkgs, ... }: {
    nixosConfigurations = {
      swarm1 = nixpkgs.lib.nixosSystem {
        modules = [ ./hosts/swarm1/configuration.nix ];
      };
    };
  };
}
