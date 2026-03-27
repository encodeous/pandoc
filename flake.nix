{
  description = "Pandoc/LaTeX workflow";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    with flake-utils.lib; eachSystem allSystems (system:
    let 
      pkgs = nixpkgs.legacyPackages.${system};
      customTexLive = pkgs.texlive.combine {
        inherit (pkgs.texlive)
        scheme-basic
        latexmk

        pgf
        graphics
        algorithms;
      };
    in 
    {
      devShell = with pkgs; mkShell {
        name = "pandoc-latex-shell";
        packages = with pkgs; [
          pandoc
          haskellPackages.pandoc-crossref
          
          customTexLive 
        ];
      };
    });
}