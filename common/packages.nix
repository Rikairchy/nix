{ config, lib, pkgs, modulesPath, ...}:
{
  imports = []; 
  environment.systemPackages = with pkgs ; [
    vim-full
    git
    ];
  virtualisation.vmware.guest.enable = true;
}
