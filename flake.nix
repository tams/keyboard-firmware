{
  description = "Ergodox firmware";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        buildInputs = with pkgs; [
          dfu-util
          libusb1
          pkgsCross.avr.buildPackages.gcc
          pkgsCross.avr.buildPackages.binutils
        ];

      in rec { devShell = pkgs.mkShell { inherit buildInputs; }; });
}
