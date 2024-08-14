let
  pkgs' = import (import ./npins).nixpkgs {};
in
{ pkgs ? pkgs' }:

{
  shell = pkgs.callPackage ./shell.nix {};
}
