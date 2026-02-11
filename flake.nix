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
      swarm2 = nixpkgs.lib.nixosSystem {
        modules = [ ./hosts/swarm2/configuration.nix ];
      };
      swarm3 = nixpkgs.lib.nixosSystem {
        modules = [ ./hosts/swarm3/configuration.nix ];
      };
      swarm4 = nixpkgs.lib.nixosSystem {
        modules = [ ./hosts/swarm4/configuration.nix ];
      };
      swarm5 = nixpkgs.lib.nixosSystem {
        modules = [ ./hosts/swarm5/configuration.nix ];
      };
    };
  };
}
