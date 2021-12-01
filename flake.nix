{
  outputs = {self, nixpkgs}:
    let
      outputs' = system:
        let
          pkgs = nixpkgs.legacyPackages."${system}";
        in
        {
          devShell."${system}" = pkgs.mkShell {
            name = "aoc-2021-shell";
            buildInputs = [
              pkgs.ghc
              pkgs.cabal-install
              pkgs.wget
            ];
          };
        };
    in
    outputs' "x86_64-linux";
}
