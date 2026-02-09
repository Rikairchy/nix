outputs = { self, nixpkgs, ... }: {
  nixosConfigurations = {
    swarm1 = nixpkgs.lib.nixosSystem {
      modules = [ ./hosts/swarm1/configuration.nix ];
    };
  };
};
