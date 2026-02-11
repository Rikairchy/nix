{ config, lib, pkgs, modulesPath, ...}:
{
  imports = []; 
  networking = {
    interfaces.ens192 = {
      ipv4.addresses = [
        {
          address = "10.0.1.224";
          prefixLength = 24;
        }
      ];
    };
    defaultGateway = "10.0.1.1";
    nameservers = [ "10.0.1.1" ];
    hostName = "swarm5";
    domain = "internal.homelab.services";
  };
}
