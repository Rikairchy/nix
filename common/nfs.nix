{ config, lib, pkgs, modulesPath, ...}:
{
  imports = []; 
  fileSystems."/mnt/nfs/" = {
    device = "10.0.1.226:/nfs" ;
    fsType = "nfs";
  };
  boot.supportedFilesystems = [ "nfs" ];
}
