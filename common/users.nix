{ config, lib, pkgs, modulesPath, ...}:
{
  imports = []; 
  users = {
    users = {
      nixos = {
        extraGroups = [ "docker" "wheel" ];
        isNormalUser = true;
        openssh.authorizedKeys.keys = [
          "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICP0QN24aDbpvAAxw2879xs6xzteBacaFxJb3tZNjwB/"
        ];
      };
    };
  };
  security.sudo.extraRules = [
    {
      groups = [ "wheel" ];
      commands = [ { command = "ALL"; options = [ "NOPASSWD" ]; } ];
    }
  ];
}
