{ config, lib, pkgs, ... }:

{
  imports =
    [
      ../../common/common.nix
      ./networking.nix
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  systemd.stateVersion = "25.11" ;
}
