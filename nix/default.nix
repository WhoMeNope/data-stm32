{ nixpkgs ? import <nixpkgs> {} }:
let
  cmxDb = import ./cubemx-database.nix {};
  svdDb = nixpkgs.callPackage ./svd-database.nix {};
in
  { inherit cmxDb svdDb;
  combined = nixpkgs.runCommand "data-stm32-db" {} ''
    mkdir $out
    ln -s ${cmxDb} $out/db
    ln -s ${svdDb} $out/svds
  ''; }
