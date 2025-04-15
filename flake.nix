{
  description = "Kind Lain";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            just
            kind
            kubectl
            kubernetes-helm
            fluxcd
            go
            busybox
            python313
            uv
            nodejs_23
            pyright
          ];
          
          shellHook = ''
            export PATH=$PATH:$HOME/go/bin
          '';
        };
      });
}

