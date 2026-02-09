{ config, lib, pkgs, modulesPath, ...}:
{
  imports = []; 
  virtualisation.docker = {
    enable = true;
    enableOnBoot = true;
    daemon.settings.live-restore = false;
  };
  networking = {
    firewall = {
      allowedTCPPorts = [ 22 2377 7946 ];
      allowedUDPPorts = [ 4789 7946 ];
      enable = true;
    };
  };
}
