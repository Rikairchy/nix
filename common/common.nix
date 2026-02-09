{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./docker.nix
      ./packages.nix
      ./services.nix
      ./time.nix
      ./users.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "25.11"; # Did you read the comment?
}
